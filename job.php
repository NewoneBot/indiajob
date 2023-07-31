<?php 
include "connection.php"
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="icon" href="images/ibj_logo.png" type="image/x-icon">
</head>
<style>
div.sticky {
    position: -webkit-sticky;
    position: sticky;
    top: 0;
    background-color: yellow;
    padding: 50px;
    font-size: 20px;
    z-index: 3;
}
</style>

<body style="background-color: rgb(241, 232, 232);">


    <?php include_once 'header.php';?>

    <img src="images/hiring.jpg" class="img-fluid" alt="Responsive image">

    <div class="container-fluid mt-2 px-5">
        <center>
            <div class="p-1" style="background-color:black; color:white;">
                <h2>search your own Jobs</h2>
            </div>
        </center>
        <!-- <div class="sticky">I will stick to the screen when you reach my scroll position</div> -->
        <div class="row">
            <div class="col-md-3 p-2 d-flex w-100">
                <div class="w-100">
                    <div class="all">
                        <div class="filter w-100 my-1 py-2 d-flex justify-content-around">
                            <i class="fa fa-filter mt-2" style="font-size:20px;" aria-hidden="true"> All Filter</i>
                            <div class="d-flex justify-content-around">
                                <button type="submit" class="filte btn btn-primary btn-sm float-end">search</button>
                            </div>
                        </div>


                        <div class="filter w-100 p-2 d-block justify-content-around">
                            <div class="pb-2">Department</div>
                            <?php
                            include 'connection.php';

                            $job = "SELECT DISTINCT j_list FROM job_list";
                            $result =$conn->query($job);
                            while($row=$result->fetch_assoc()) {
                            ?>
                            <label class="">
                                <input type="checkbox" class="job_filter" value="<?= $row['j_list'];?>" id="j_list">
                                <?= $row['j_list'];?>
                            </label><br>

                            <?php
                            }
                        
                            ?>


                        </div>
                    </div>
                </div>


            </div>

            <div class="col-md-6 p-2">
                <h3 class="job_portal my-1 p-1">
                    Job Openings
                </h3>
                <div class="loder d-flex justify-content-center"><img src="images/loder3.gif" alt="" width="80px"
                        class="my-5" style="display:none;" id="loader">
                </div>
                <div class="msg" id="result">
                    <?php
                    $limit=10;
                    // $page = $_GET['page'];
                    if(isset($_GET['page'])){
                        $page = $_GET['page'];
                    }
                    else{
                        $page = 1;
                    }
                    $offset = ($page - 1)*$limit;
                    $sql="SELECT * FROM job_list LIMIT {$offset},{$limit}";
                    $result=$conn->query($sql);
                    while($row=$result->fetch_assoc()){
?> <div class="kard p-2 m-2">
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
                    $sql1="SELECT * FROM job_list";
                    $result1=mysqli_query($conn,($sql1));
                    if(mysqli_num_rows($result1)>0){
                        $total_record = mysqli_num_rows($result1);
                        $total_page=ceil($total_record / $limit);
                        ?>

                    <ul class="pagination d-flex justify-content-center">
                        <?php
                        if($page>1){
                            ?>
                        <li class="page-item"><a class="page-link" href="job.php?page=<?php echo ($page -1)?>">Prev</a>
                        </li>

                        <?php
                        }

                        for($i=1;$i<=$total_page;$i++){
                            if($i == $page){
                                $active = 'active';
                            }
                            else{
                                $active="";
                            }
                           ?>
                        <li class="page-item <?php echo $active ?> "><a class="page-link"
                                href="job.php?page=<?php echo $i?>"><?php echo $i?></a>
                        </li>
                        <?php
                        }
                        if($total_page>$page){
                            ?>
                        <li class="page-item"><a class="page-link" href="job.php?page=<?php echo ($page +1)?>">Next</a>
                        </li>

                        <?php
                        }
                    }
                    ?>
                    </ul>

                </div>
            </div>
            <div class="col-md-3 p-2 d-flex w-100">

                <div class="w-100">
                    <div class="all">
                        <div class="img p-3">
                            <center>
                                <img src="images\nokri\a.gif" alt="">
                                <img src="images\nokri\b.gif" alt="">
                                <img src="images\nokri\c.gif" alt="">
                                <img src="images\nokri\d.gif" alt="">
                                <img src="images\nokri\e.gif" alt="">
                                <img src="images\nokri\f.gif" alt="">
                                <img src="images\nokri\g.gif" alt="">
                                <img src="images\nokri\h.gif" alt="">
                                <img src="images\nokri\j.gif" alt="">
                                <img src="images\nokri\k.gif" alt="">
                                <img src="images\nokri\l.gif" alt="">
                                <img src="images\nokri\m.gif" alt="">
                            </center>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--  -->

    </div>
    </div>


    <?php include_once 'footer.php'?>

</body>
<script src="//code.jquery.com/jquery-1.12.0.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
$(document).ready(function() {
    $(".filte").click(function() {
        $("#loader").show();

        var action = 'date';
        var j_list = get_filter_text('j_list');

        $.ajax({
            url: "jobDB.php",
            method: 'POST',
            data: {
                action: action,
                j_list: j_list
            },
            success: function(response) {
                $("#result").html(response);
                $("#loader").hide();
            }
        });
    });

    function get_filter_text(text_id) {
        var filterData = [];
        $('#' + text_id + ':checked').each(function() {
            filterData.push($(this).val());
        });
        return filterData;
    }
});
</script>

</html>