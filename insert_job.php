<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>

    <?php include 'header2.php';?>

    <form action="insert_data.php" method="post">
        <section class="vh-120 gradient-custom my-5 ">
            <div class="container  h-100">
                <div class="row justify-content-center align-items-center h-100 mt-5">
                    <div class="col-12 col-lg-9 col-xl-7">
                        <div class="card shadow-2-strong card-registration" style="border-radius: 15px;">
                            <div class="card-body p-4 p-md-5">
                                <h3 class="mb-4 pb-2 pb-md-0 mb-md-5 text-center">Job Insert Page to Data Base</h3>
                                <div class="row">
                                    <div class="col-md-6">
                                        <select class="select form-control-lg w-100" name="j_list">
                                            <option disabled selected>Job type</option>
                                            <option value="IT Professional">
                                                IT Professional</option>
                                            <option value="Accounting">
                                                Accounting
                                            </option>
                                            <option value="Digital Marketing">
                                                Digital Marketing</option>
                                            <option value="Web Designed & Developeme">
                                                Web Designed & Developeme</option>
                                            <option value="Other">
                                                Other</option>
                                        </select>
                                        <label class="form-label" for="firstName">Enter the job type</label>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-outline">
                                            <input type="date" id="firstName" class="form-control form-control-lg"
                                                placeholder="Enter You Name" name="j_posted">
                                            <label class="form-label" for="firstName">Job On Posted Date</label>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-outline">
                                            <input type="text" id="firstName" class="form-control form-control-lg"
                                                placeholder="Enter You Name" name="j_cate">
                                            <label class="form-label" for="firstName">Job Post</label>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-outline">
                                            <input type="text" id="firstName" class="form-control form-control-lg"
                                                placeholder="Enter You Name" name="c_name">
                                            <label class="form-label" for="firstName">Companey Name</label>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-outline">
                                            <input type="text" id="firstName" class="form-control form-control-lg"
                                                placeholder="Enter You Name" name="j_expe">
                                            <label class="form-label" for="firstName">Job Experence</label>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-outline">
                                            <input type="text" id="firstName" class="form-control form-control-lg"
                                                placeholder="Enter You Name" name="j_locat">
                                            <label class="form-label" for="firstName">Job Location</label>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <select class="select form-control-lg w-100" name="j_qulif" id="slct1"
                                            onchange="populate(this.id,'slct2')">
                                            <option disabled selected>Job Qulification</option>
                                            <option value="IT Professional">
                                                10th PASS</option>
                                            <option value="IT Professional">
                                                10+2 pass</option>
                                            <option value="IT Professional">
                                                Graduation</option>
                                        </select>
                                        <label class="form-label" for="firstName">Enter the job type</label>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-outline">
                                            <input type="text" id="firstName" class="form-control form-control-lg"
                                                placeholder="Enter You Name" name="j_salary">
                                            <label class="form-label" for="firstName">Job Salary</label>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-outline">
                                            <input type="text" id="firstName" class="form-control form-control-lg"
                                                placeholder="Enter You Name" name="j_description">
                                            <label class="form-label" for="firstName">Job Description</label>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-outline">
                                            <input type="text" id="firstName" class="form-control form-control-lg"
                                                placeholder="Enter You Name" name="timing">
                                            <label class="form-label" for="firstName">Working Time Period</label>
                                        </div>
                                    </div>




                                </div>
                            </div>
                            <center>
                                <div class="col-md-12 my-2">
                                    <input class="btn btn-primary btn-lg" type="submit" value="Update">
                                </div>
                            </center>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </form>
    <?php include 'footer.php';?>
</body>


</html>