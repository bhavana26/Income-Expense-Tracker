<html>
	<script>
	function drawChart() {
    var data = google.visualization.arrayToDataTable([
      <?php echo $final_value?>
    ]);

    var options = {
      title: 'Company Performance'
    };

    var chart = new google.visualization.LineChart(document.getElementById('chart_div'));
    chart.draw(data, options);
  }
	</script>
	<?php

$db = new mysqli('localhost', 'root', '', 'detsdb');
if($db->connect_errno > 0){
    die('Unable to connect to database [' . $db->connect_error . ']');
}
$result = mysql_query("SELECT expensecost,notedate from tbleexpense");
$value=array();
while($r = mysql_fetch_assoc($result)) {
$expense=$r['expensecost'];
$income=$r['incomecost'];
$val="[".$expense.",".$income."]";
array_push($value,$val );
}
$final_value = implode(",", $value);
$db->close();
?>
	
	<body>
<div id="chart_div" style="width: 900px; height: 500px;"></div>
</body>
	
	


</html>
