<?php

$conn = mysqli_connect("localhost","root","");
				if (mysqli_connect_errno())
				{
					echo "Failed to connect to MySQL: " . mysqli_connect_error();
				}

mysqli_select_db($conn,"dbms_p1");
if($_GET['id']) 
{
$id=$_GET['id'];
$sql1 = "update llr set llr_status=1 where llr_id='$id'";
		$result1 = $conn->query($sql1);
if (($result1) == TRUE) {
								echo ("<SCRIPT LANGUAGE='JavaScript'>
								window.alert('Status updated successfully!!')
								window.location.href='admin_get_llr_info.php'
								</SCRIPT>");
					}
}



?>



