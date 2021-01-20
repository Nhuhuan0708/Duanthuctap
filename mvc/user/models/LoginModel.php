<?php
class LoginModel extends DB{
    public function loginAccount(){
        $phoneNumber = isset($_POST['phoneNumber']) ? $_POST['phoneNumber'] : ""; // check SQL injection??
		$password = isset($_POST['password']) ? $_POST['password'] : "";

		$sql = 'select * from user where phone = "'.$phoneNumber.'" and password = "'.md5($password).'"';

		$data = $this->getData($sql);
		if ($data == NULL) { // dont have account
		 	echo 0;
		 	die();
		} else {
			$_SESSION['user'] = $data[0]['id'];
			$_SESSION['userName'] = $data[0]['fullName'];

			$_SESSION['user_id'] = $data[0]['id'];
			$_SESSION['username'] = $data[0]['fullName'];
			$sub_query = "
			INSERT INTO login_details 
			(user_id) 
			VALUES ('".$data[0]['id']."')
			";
			mysqli_query($this->con, $sub_query);
			// $statement = $connect->prepare($sub_query);
			// $statement->execute();
			
			$_SESSION['login_details_id'] = $data[0]['id'];

			echo 1;
			die();
		}
    }
}
?>