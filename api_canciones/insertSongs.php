  <?php
     header("Content-Type: application/json");
     
     if($_SERVER['REQUEST_METHOD'] !== 'POST'){
        http_response_code(405);
        echo json_encode(['error' => 'Solo metodo POST es permitido']);
     }

     //conectar a la BD sakila
     require 'conexionSakila.php';

     $data = json_decode(file_get_contents('php://input'), true);
     $title = $data['Titulo'];
     $artist = $data['Artista'];
     $time = $data['Duracion'];
     $genre = $data['Genero'];

     $query = $conn->prepare("INSERT INTO canciones (Titulo, Artista, Duracion, Genero) VALUES (?, ?, ?, ?)");

     if(!$query){
        http_response_code(500);
        echo json_encode(["error" => "Ocurrio un error"]);
        exit;
    }

    $query->bind_param("ssss", $title, $artist, $time, $genre);

    if($query->execute()){
        echo json_encode(["mensaje" => "Actor insertado correctamente", "id" => $query->insert_id]);
    } else {
         http_response_code(500);
         echo json_encode(["error" => "Fallo la insercion" . $query->error]);
    }

    $query->close();
    $conn->close();

?>