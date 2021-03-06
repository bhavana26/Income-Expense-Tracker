<!DOCTYPE html>
<html>
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
</head>

<body>
    <div id="chart" style="width:700px; height:300px;"></div> 
</body>

<script>
    // Visualization API with the Line chart package.
    google.charts.load('current', { packages: ['line'] });
    google.charts.setOnLoadCallback(drawLineChart);

    function drawLineChart() {
        $.ajax({
            url: "http://localhost/plsgod/Daily%20Expense%20Tracker%20Project/dets/followersdata.php",
            dataType: "json",
            type: "GET",
            contentType: "application/json; charset=utf-8",
            success: function (data) {
                var arrSales = [['DDate','Difference']];    // Define an array and assign columns for the chart.

                // Loop through each data and populate the array.
                $.each(data, function (index, value) {
                    arrSales.push([value.DDate, value.Difference]);
                });

                // Set chart Options.
                var options = {
                    chart: {
                        title: 'Monthly Sales',
                        subtitle: '-- quantities sold'
                    },
                    axes: {
                        x: {
                            0: { side: 'top'}   // Use "top" or "bottom".
                        }
                    }
                };

                // Create DataTable and add the array to it.
                var figures = google.visualization.arrayToDataTable(arrSales)

                // Define the chart type (LineChart) and the container (a DIV in our case).
                var chart = new google.charts.Line(document.getElementById('chart'))

                // Draw the chart with Options.
                chart.draw(figures, google.charts.Line.convertOptions(options));
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert('Got an Error');
            }
        });
    }
</script>
</html>
