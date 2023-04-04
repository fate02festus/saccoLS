<?php
include('../connection.php');
$q = mysqli_query($conn, "select * from share ORDER BY Date_Contributed DESC LIMIT 21");

?>
<link rel="stylesheet" href="../css/bootstrap.min.css" />
<table class="table table-bordered">
    <tr height="30" class="info">
        <th colspan="7" align="center">
            <center>All Share Records</center>
        </th>
    </tr>
    <Tr class="active">
        <th>Sr.No</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Date Contributed</th>
        <th>Share Balance</th>
        <th>Share Contributed</th>
        <th>Share Added</th>
        <th>Total Contribution</th>

    </Tr>
    <?php


    $i = 1;
    while ($row = mysqli_fetch_assoc($q)) {

        echo "<Tr>";
        echo "<td>" . $i . "</td>";


        $q1 = mysqli_query($conn, "select * from share where member_id='" . $row['member_id'] . "'");
        $r1 = mysqli_fetch_assoc($q1);

        echo "<td>" . $r1['first_name'] . "</td>";
        echo "<td>" . $row['last_name'] . "</td>";
        echo "<td>" . $row['Date_Contributed'] . "</td>";
        echo "<td>" . $row['Share_Balance'] . "</td>";
        echo "<td>" . $row['Share_Contributed'] . "</td>";
        echo "<td>" . $row['Share_Added'] . "</td>";
        echo "<td>" . $row['Total_Share'] . "</td>";
    ?>

    <?php

        echo "</Tr>";
        $i++;
    }
    ?>

    <tr>
        <script>
            function printpage() {
                //Get the print button and put it into a variable
                var printButton = document.getElementById("printpagebutton");
                //Set the print button visibility to 'hidden' 
                printButton.style.visibility = 'hidden';
                //Print the page content
                window.print()
                //Set the print button to 'visible' again 
                //[Delete this line if you want it to stay hidden after printing]
                printButton.style.visibility = 'visible';
                window.print();
            }
        </script>

        <td colspan="7" align="center">
            <button id="printpagebutton" class="btn btn-primary" onClick="printpage()"><span class="glyphicon glyphicon-print"></span> &nbsp;Print</button>
        </td>
    </tr>

</table>