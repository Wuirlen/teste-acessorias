<?php
require_once __DIR__ . '/../models/Cliente.php';

class ClienteController {
    public static function listarClientes($pagina_atual, $registros_por_pagina) {
        $pagina_atual = max(1, (int)$pagina_atual);
        $offset = ($pagina_atual - 1) * $registros_por_pagina;

        $clientes = Cliente::getClientes($offset, $registros_por_pagina);
        $total_clientes = Cliente::getTotalClientes();
        $total_paginas = ceil($total_clientes / $registros_por_pagina);

        return [
            'clientes' => $clientes,
            'pagina_atual' => $pagina_atual,
            'total_paginas' => $total_paginas
        ];
    }
}
?>
