<?php
$filepath = realpath(dirname(__FILE__));
include_once ($filepath.'/inc/header.php');
include_once ($filepath.'/../classes/User.php');

$usr = new User();
?>

    <div class="main">
        <h1 style="text-align: center; font-size: 24px">Viva Requests</h1>
        <div class="manageuser">
            <table class="tblone">
                <tr>
                    <th>No</th>
                    <th>Name</th>
                    <th>E-mail</th>
                    <th>Phone no</th>
                    <th>college id</th>
                </tr>

                <?php
                $userData = $usr->getAllVivaApplier();
                if($userData){
                    $i = 0;
                    while($result = $userData->fetch_assoc()){
                        $i++;
                        ?>

                        <tr>
                            <td> <?php echo $i; ?> </td>
                            <td> <?php echo $result['name']; ?> </td>
                            <td> <a target="_blank" style=" color: darkblue; text-decoration: none;" href="https://<?php echo $result['email']; ?>"><?php echo $result['email']; ?></a> </td>
                            <td> <a target="_blank" style=" color: darkblue; text-decoration: none;" href="https://<?php echo $result['phone_no']; ?>"><?php echo $result['phone_no']; ?></a> </td>
                            <td> <a target="_blank" style=" color: darkblue; text-decoration: none;" href="https://<?php echo $result['college_id']; ?>"><?php echo $result['college_id']; ?></a> </td>
                        </tr>
                    <?php } } ?>

            </table>
        </div>
    </div>
<?php include 'inc/footer.php'; ?>