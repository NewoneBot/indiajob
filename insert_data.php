<!DOCTYPE html>
<html>

<head>
    <title>Insert Page page</title>
</head>

<body>
    <center>
        <?php
			include_once 'connection.php';
		
		
            $j_list = $_REQUEST['j_list'];
            $j_posted = $_REQUEST['j_posted'];
            $j_cate = $_REQUEST['j_cate'];
            $c_name = $_REQUEST['c_name'];
            $j_expe = $_REQUEST['j_expe'];
            $j_locat = $_REQUEST['j_locat'];
            $j_qulif = $_REQUEST['j_qulif'];
            $j_salary = $_REQUEST['j_salary'];
            $j_description = $_REQUEST['j_description'];
            $timing = $_REQUEST['timing'];

		$sql = "INSERT INTO `job_list`( `j_list`, `j_posted`, `j_cate`, `c_name`, `j_expe`, `j_locat`, `j_qulif`, `j_salary`, `j_description`, `timing`) VALUES ('$j_list','$j_posted','$j_cate','$c_name','$j_expe','$j_locat','$j_qulif','$j_salary','$j_description','$timing')";
		
		if(mysqli_query($conn, $sql)){
            // alert("Hello World");
            header("Location:insert_job.php");
			// echo nl2br("\n$first_name\n $last_name\n"
			// 	. "$gender\n $address\n $email");
		} else{
			echo "ERROR: Hush! Sorry $sql. "
				. mysqli_error($conn);
		}
		
		// Close connection
		mysqli_close($conn);
		?>
    </center>
</body>

</html>