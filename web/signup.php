<?php
	if (isset($_POST['done']) && !empty($_POST['name']) && !empty($_POST['age']) && !empty($_POST['subscriptions']) && !empty($_POST['trainer']) && !empty($_POST['phone'])) {
    $host = 'localhost'; 
    $user = 'root'; 
    $pass = ''; 
    $db_name = 'customers'; 
    $db = mysqli_connect($host, $user, $pass, $db_name); 
    if (!$db) {
      echo 'Не могу соединиться с БД. Код ошибки: ' . mysqli_connect_errno() . ', ошибка: ' . mysqli_connect_error();
      exit;
    }
    $name = $_POST['name'];
    $age = $_POST['age'];
    $train = $_POST['train'];
    $date=date('Y-m-d');
    $trainer = $_POST['trainer'];
    $discount = false;
    if ($_POST['discount']) {
    	$discount = true;
    } 
    $phone = $_POST['phone'];
    $balance = 0;
   $query = "INSERT INTO `users` (`id`, `name`, `age`, `phone`, `date`, `discount`, `block`) VALUES (NULL, '$name', '$age', '$phone', '$date', '$discount', '$block')";
    mysqli_query($db,$query);
    $query = "SELECT * FROM users";
    $data = mysqli_query($db,$query);
    $id = mysqli_num_rows($data);
    $query = "INSERT INTO `subscriptions` (`id`, `date`, `balance`, `user_id`) VALUES (NULL, '$date', '$balance', '$id')";
    mysqli_query($db,$query);
    mysqli_close($db);
}
?>