<?php
require_once __DIR__ . '/../controllers/ClienteController.php';

$registros_por_pagina = 10;
$pagina_atual = isset($_GET['pagina']) && is_numeric($_GET['pagina']) ? (int)$_GET['pagina'] : 1;
$dados = ClienteController::listarClientes($pagina_atual, $registros_por_pagina);

function formatPhone($phone) {
    $phone = preg_replace("/[^0-9]/", "", $phone);
    if (strlen($phone) === 11) {
        return "(" . substr($phone, 0, 2) . ") " . substr($phone, 2, 5) . "-" . substr($phone, 7);
    } elseif (strlen($phone) === 10) {
        return "(" . substr($phone, 0, 2) . ") " . substr($phone, 2, 4) . "-" . substr($phone, 6);
    }
    return $phone ?: "N/A";
}
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Listagem de Clientes</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <h1 class="mt-5">Listagem de Clientes</h1>
        <table class="table table-bordered mt-3">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nome</th>
                    <th>Telefone</th>
                    <th>Email</th>
                    <th>Criado em</th>
                    <th>Atualizado em</th>
                </tr>
            </thead>
            <tbody>
                <?php while($row = $dados['clientes']->fetch_assoc()): ?>
                    <tr>
                        <td><?php echo $row['id']; ?></td>
                        <td><?php echo $row['name']; ?></td>
                        <td><?php echo formatPhone($row['phone']); ?></td>
                        <td><?php echo $row['email']; ?></td>
                        <td><?php echo date('d/m/Y H:i', strtotime($row['created_at'])); ?></td>
                        <td><?php echo date('d/m/Y H:i', strtotime($row['updated_at'])); ?></td>
                    </tr>
                <?php endwhile; ?>
            </tbody>
        </table>

        <!-- Paginação -->
        <nav aria-label="Page navigation">
            <ul class="pagination">
                <?php
                if ($dados['pagina_atual'] == 1): ?>
                    <li class="page-item active"><span class="page-link">1</span></li>
                <?php else: ?>
                    <li class="page-item"><a class="page-link" href="?pagina=1">1</a></li>
                <?php endif;

                if ($dados['pagina_atual'] > 3): ?>
                    <li class="page-item disabled"><span class="page-link">...</span></li>
                <?php endif;

                $inicio = max(2, $dados['pagina_atual'] - 2);
                $fim = min($dados['total_paginas'] - 1, $dados['pagina_atual'] + 2); 
                if ($dados['pagina_atual'] <= 3) {
                    $fim = min(5, $dados['total_paginas'] - 1);
                }

                if ($dados['pagina_atual'] > $dados['total_paginas'] - 3) {
                    $inicio = max(2, $dados['total_paginas'] - 4);
                }

                for ($i = $inicio; $i <= $fim; $i++):
                    if ($i == $dados['pagina_atual']): ?>
                        <li class="page-item active"><span class="page-link"><?php echo $i; ?></span></li>
                    <?php else: ?>
                        <li class="page-item"><a class="page-link" href="?pagina=<?php echo $i; ?>"><?php echo $i; ?></a></li>
                    <?php endif;
                endfor;

                if ($dados['pagina_atual'] < $dados['total_paginas'] - 2): ?>
                    <li class="page-item disabled"><span class="page-link">...</span></li>
                <?php endif;

                if ($dados['total_paginas'] > 1):
                    if ($dados['pagina_atual'] == $dados['total_paginas']): ?>
                        <li class="page-item active"><span class="page-link"><?php echo $dados['total_paginas']; ?></span></li>
                    <?php else: ?>
                        <li class="page-item"><a class="page-link" href="?pagina=<?php echo $dados['total_paginas']; ?>"><?php echo $dados['total_paginas']; ?></a></li>
                    <?php endif;
                endif; ?>
            </ul>
        </nav>
    </div>
</body>
</html>