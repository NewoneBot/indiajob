<?php
include 'connection.php';
 if(isset($_POST['action'])){
  $sql = "SELECT * FROM job_list WHERE j_list !=''";

  if(isset($_POST['j_list'])){
    $j_list=implode("','",$_POST['j_list']);
    $sql .="AND j_list IN('".$j_list."')";
  }
  $result=$conn->query($sql);
  if($result->num_rows>0){
    while($row=$result->fetch_assoc()){
      ?>
<div class="kard p-2 m-2">

    <div class='imgContainer mx-3'>
        <h4><?=$row["j_cate"];?></h4>
        <p class="">Posted On-<?=$row["j_posted"];?></p>
        <h5>Job Description</h5>
        <hr>
        <a href="login.php" class="apply btn  btn-success btn-sm">Apply Job</a>
    </div>
    <div class="content_a  m-2" data-aos="fade-up">
        <ul>
            <li>Companey: <?=$row["c_name"];?></li>
            <li>Category: <?=$row["j_cate"];?></li>
            <li>Timing: <?=$row["timing"];?></li>
            <li>Experience: <?=$row["j_expe"];?></li>
            <li>Qualification: <?=$row["j_qulif"];?></li>
            <li>Salary: <?=$row["j_salary"];?></li>
            <li>Description: <?=$row["j_description"];?></li>
            <li>Location: <?=$row["j_locat"];?></li>
        </ul>
        <hr>
    </div>

</div>
<?php
    }
  }
 }
 else{
  echo "No job this time";
 }
?>