<?php
     header("Content-Type: application/json");
     
     if($_SERVER['REQUEST_METHOD'] !== 'PUT'){
        http_response_code(405);
        echo json_encode(['error' => 'Solo metodo PUT es permitido']);
     }

     //conectar a la BD sakila
     require 'conexionSakila.php';

     $input = json_decode(file_get_contents('php://input'), true);

    if (!$input || !isset($input['id'], $input['Titulo'], $input['Artista'], $input['Duracion'], $input['Genero'])) {
        http_response_code(400);
        echo json_encode(['error' => 'Datos incompletos o JSON inválido']);
        exit();
    }

     $id = $input['id'];
     $title = $conn->real_escape_string($input['Titulo']);
     $artist = $conn->real_escape_string($input['Artista']);
     $timess = $conn->real_escape_string($input['Duracion']);
     $genre = $conn->real_escape_string($input['Genero']);

     $query = "UPDATE canciones SET Titulo = ?, Artista = ?, Duracion = ?,  Genero = ? WHERE id = ?";

     $st = $conn-> prepare($query);

     if(!$st){
        http_response_code(500);
        echo json_encode(["error" => "Ocurrio un error" . $conn->error]);
        exit();
    }

    $st->bind_param("ssssi", $title, $artist, $timess, $genre, $id);

    if($st->execute()){
        if($st->affected_rows > 0){
            echo json_encode(["mensaje" => "Actor insertado correctamente", "actor_id" => $st->insert_id]);
        } 
    } else {
         http_response_code(500);
         echo json_encode(["error" => "Fallo la insercion" . $st->error]);
    }

    $st->close();
    $conn->close();

?>