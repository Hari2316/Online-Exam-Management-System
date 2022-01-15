<?php include 'inc/header1.php';
 ?>

<?php
$filepath = realpath(dirname(__FILE__));

include_once ($filepath.'/classes/User.php');

include_once ($filepath.'/classes/process.php');

$usr = new User();
$pro = new process();
?>


<?php
Session::checkSession();

$total    = $exm->getTotalRows();
?>

 
   <div class="viva_main">

        <h1 style="color: blue;">Online Exam System - Viva Board</h1>

        <p style="text-align: center">Congratulation! You are selected for the viva board.</p>

        <div style="text-align: center;">
 
           <strong style="color: #444444">Final Score:

                <?php

                if(isset($_SESSION['score'])){

                    echo $_SESSION['score'];

                    unset($_SESSION['score']);

                }

                ?>

            </strong>

        </div>

        <br/>


        <?php

        if(isset($_POST['viva_btn'])){

            $usr->insert_viva_data($_POST['name'],$_POST['email'], $_POST['phone_no'], $_POST['college_id']);

        }

        ?>


        <div class="segment_viva">

            <form action="" method="post">

                <table style="padding-left: 60px;
 padding-top: 35px">

                    <tr>

                        <td>Name:</td>

                        <td><input name="name" id="name" type="text" required="" placeholder="Enter name"></td>
                    </tr>
                    <tr>
                        <td>E-mail:</td>
                        <td><input name="email" id="email" type="text" required="" placeholder="Enter Email"></td>
                    </tr>
                    <tr>
                        <td>Phone No:</td>
                        <td><input name="phone_no" type="text" id="phone_no" required="" placeholder="9845256298"></td>
                    </tr>
                    <tr>
                        <td>college id:</td>
                        <td><input name="college_id" type="text" id="college_id" placeholder="Enter college"></td>
                    </tr>
                    <tr>
                    <tr>
                        <td></td>
                        <td class="button_class"><input type="submit" name="viva_btn" value="Submit">
                        </td>
                    </tr>
                </table>
            </form>
        </div>

        <div style="text-align: center; padding-top: 45px" class="viva_starttest">
            <a style="border-color: green;" href="viewAns.php">View Right Answer</a>
            
<!--<a style="border-color: green;" href="start_test.php">Start Test Again.!</a>-->
        </div>


    </div>
<?php include 'inc/footer.php'; ?>