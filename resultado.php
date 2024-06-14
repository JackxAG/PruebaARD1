<?php
header('Content-Type: application/json');

$data = json_decode(file_get_contents('php://input'), true);

if (isset($data['originalTemp']) && isset($data['fromUnit']) && isset($data['convertedTemp']) && isset($data['toUnit'])) {
    $originalTemp = $data['originalTemp'];
    $fromUnit = $data['fromUnit'];
    $convertedTemp = $data['convertedTemp'];
    $toUnit = $data['toUnit'];

    
    $servername = "localhost";
    $username = "root";  
    $password = "";     
    $dbname = "temperatura_db";

    $conn = new mysqli($servername, $username, $password, $dbname);
    if ($conn->connect_error) {
        die(json_encode(array("success" => false, "message" => "Error de conexión: " . $conn->connect_error)));
    }

    $sql = "INSERT INTO conversions (original_temp, from_unit, converted_temp, to_unit) VALUES (?, ?, ?, ?)";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("dsss", $originalTemp, $fromUnit, $convertedTemp, $toUnit);
    
    if ($stmt->execute()) {
        echo json_encode(array("success" => true, "message" => "Resultado guardado exitosamente"));
    } else {
        echo json_encode(array("success" => false, "message" => "Error al guardar el resultado: " . $stmt->error));
    }
    
    $stmt->close();
    $conn->close();
} else {
    echo json_encode(array("success" => false, "message" => "Datos incompletos"));
}
?>
