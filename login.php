<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DTSE | Home</title>
    <link rel="icon" href="images/ibj_logo.png" type="image/x-icon">

</head>

<body>
    <?php include 'header.php';?>


    <section class="login">
        <div class="container">
            <div class="row">
                <div class="col"></div>

                <div class="col-lg-5">
                    <div class="all_longer">
                        <h3 class="tittle-gdf text-center p-3">Candidate Login</h3>
                        <form action="loginDB.php" method="post">
                            <div class=" form-group">
                                <label><i class="fa fa-user"></i> Email Or Phone Number</label>
                                <input type="textbox" class="form-control" name="admin_user" id="validationDefault01"
                                    placeholder="Please Enter your ID" required>
                            </div>
                            <div class="form-group">
                                <label><i class="fa fa-lock"></i> Password</label>
                                <input type="password" class="form-control" name="admin_pass" id="validationDefault02"
                                    placeholder="Please Enter your Password" required>
                            </div>
                            <button type="submit" class="tap_btn btn btn-success submit m-2">Login</button><br>
                            <button type="register" class="tap_btn btn btn-success submit m-2">Register</button>
                        </form>
                        <div class="text-right mt-2">Login as <a href="">Recruiter</a> </div>
                    </div>

                </div>
                <div class="col"></div>
            </div>
        </div>
    </section>

    <?php include 'footer.php';?>

</body>

</html>