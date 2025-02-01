<?php
require_once __DIR__ . '/../config/database.php';

class Cliente {
    public static function getClientes($offset, $registros_por_pagina) {
        global $conn;
        $sql = "SELECT * FROM clientes LIMIT ?, ?";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("ii", $offset, $registros_por_pagina);
        $stmt->execute();
        return $stmt->get_result();
    }

    public static function getTotalClientes() {
        global $conn;
        $sql = "SELECT COUNT(*) as total FROM clientes";
        $result = $conn->query($sql);
        $row = $result->fetch_assoc();
        return $row['total'];
    }
}
?>
