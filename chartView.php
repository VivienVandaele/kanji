<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Kanji</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/bootstrap-theme.min.css">
    <link rel="shortcut icon" href="icon.png" />
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/mousetrap.min.js"></script>
    <script src="js/script.js"></script>
	<script src="chart/chart.min.js"></script>
	<script src="chart/chart.bundle.js"></script>
    <script>
        $(document).ready(function() {
            if(localStorage.getItem('nightMode') == "true")
                document.body.classList.toggle('nightMode');
        });
        Mousetrap.bind('n', function() { toggleNightMode(); });
		Mousetrap.bind('w', function() { document.location.href='vocabularyController.php?word=1' });
		Mousetrap.bind('k', function() { document.location.href='index.php' });
		Mousetrap.bind('s', function() { document.location.href='sentenceController.php' });
		Mousetrap.bind('a', function() { document.location.href='chartView.php' });
		Mousetrap.bind('m', function() { document.location.href='index.php' });
    </script>
</head>

<?php 
include_once("Chart.php");
include_once("Kanji.php");
include_once("Word.php");
include_once("Sentence.php");
include_once("Chart.php");
?>
<body>
	<div class="page">
		<table class="styled-table">
			<tr>
				<td></td>
				<td><?php echo "Kanji" ?></td>
				<td><?php echo "Words" ?></td>
				<td><?php echo "Sentences" ?></td>
			</tr>
			<tr>
				<td><b><?php echo "Workload" ?></b></td>
				<td><?php echo round(getWorkloadKanji(), 2) ?></td>
				<td><?php echo round(getWorkloadWord(), 2) ?></td>
				<td><?php echo round(getWorkloadSentence(), 2) ?></td>
			</tr>
			<tr>
				<td><b><?php echo "Total" ?></b></td>
				<td><?php echo getNumberKanji() ?></td>
				<td><?php echo getNumberWords() ?></td>
				<td><?php echo getNumberSentences() ?></td>
			</tr>
		</table>

		<hr class="styled-hr">
		<div style="margin-bottom: 30px;">
		<canvas id="stackedChart" width="100" height="40"></canvas>
		<script>
		var fontColor = "#d8dee9";
		var ctx = document.getElementById('stackedChart').getContext('2d');
		var myChart = new Chart(ctx, {
			type: 'bar',
			data: {
				labels: <?php echo json_encode(getLabels()) ?>,
					datasets: [
				{
					label: 'Kanji',
					data: <?php echo json_encode(getCumulativeNewKanji()) ?>,
					backgroundColor: "#b48ead",
					borderColor: "#b48ead",
					hoverBorderColor: "orange",
					hoverBackgroundColor: "rgba(232,105,90,0.8)",
					borderWidth: 1
				},
				{
					label: 'Words',
					data: <?php echo json_encode(getCumulativeNewWords()) ?>,
					backgroundColor: "#a3be8c",
					borderColor: "#a3be8c",
					hoverBorderColor: "orange",
					hoverBackgroundColor: "rgba(232,105,90,0.8)",
					borderWidth: 1
				},
				{
					label: 'Sentences',
					data: <?php echo json_encode(getCumulativeNewSentences()) ?>,
					backgroundColor: "#ebcb8b",
					borderColor: "#ebcb8b",
					hoverBorderColor: "orange",
					hoverBackgroundColor: "rgba(232,105,90,0.8)",
					borderWidth: 1
				}]
			},
			options: {
				tooltips: {
					mode: 'label'
				},
			  title: {
				fontColor: fontColor,
				fontSize: 18,
				display: false,
				text: 'New kanji per day'
			  },
				legend: {
					labels: {
						fontSize: 14,
						fontColor: fontColor
					}
				},
				scales: {
					xAxes: [{
						stacked: true,
						gridLines: {
						color: fontColor,
						display: false
						},
						ticks: {
							fontColor: fontColor,
						}
					}],
					yAxes: [{
						stacked: true,
						gridLines: {
						  color: fontColor
						},
						ticks: {
							fontColor: fontColor,
							beginAtZero: true
						}
					}]
				}
			}
		});
		</script>
		</div>
		<hr class="styled-hr">
		<div style="margin-bottom: 30px;">
		<canvas id="kanjiChart" width="100" height="40"></canvas>
		<script>
		var fontColor = "#d8dee9";
		var ctx = document.getElementById('kanjiChart').getContext('2d');
		var myChart = new Chart(ctx, {
			type: 'bar',
			data: {
				labels: <?php echo json_encode(getLabels()) ?>,
				datasets: [{
	//				label: '# of Votes',
					data: <?php echo json_encode(getStatsNewKanji()) ?>,
					backgroundColor: "#b48ead",
					borderColor: "#b48ead",
					hoverBorderColor: "orange",
					hoverBackgroundColor: "rgba(232,105,90,0.8)",
					borderWidth: 1
				}]
			},
			options: {
			  title: {
				fontColor: fontColor,
				fontSize: 18,
				display: true,
				text: 'New kanji per day'
			  },
			legend: { display: false },

				scales: {
					xAxes: [{
						gridLines: {
						color: fontColor,
						display: false
						},
						ticks: {
							fontColor: fontColor,
						}
					}],
					yAxes: [{
						gridLines: {
						  color: fontColor
						},
						ticks: {
							fontColor: fontColor,
							beginAtZero: true
						}
					}]
				}
			}
		});
		</script>
		</div>
		<hr class="styled-hr">
		<div style="margin-bottom: 30px;">
		<canvas id="myChart" width="100" height="40"></canvas>
		<script>
		var ctx = document.getElementById('myChart').getContext('2d');
		var myChart = new Chart(ctx, {
			type: 'bar',
			data: {
				labels: <?php echo json_encode(getLabels()) ?>,
				datasets: [{
	//				label: '# of Votes',
					data: <?php echo json_encode(getStatsNewWords()) ?>,
					backgroundColor: "#a3be8c",
					borderColor: "#a3be8c",
					hoverBorderColor: "orange",
					hoverBackgroundColor: "rgba(232,105,90,0.8)",
					borderWidth: 1
				}]
			},
			options: {
			  title: {
				fontColor: fontColor,
				fontSize: 18,
				display: true,
				text: 'New words per day'
			  },
			legend: { display: false },

				scales: {
					xAxes: [{
						gridLines: {
						color: fontColor,
						display: false
						},
						ticks: {
							fontColor: fontColor,
						}
					}],
					yAxes: [{
						gridLines: {
						  color: fontColor
						},
						ticks: {
							fontColor: fontColor,
							beginAtZero: true
						}
					}]
				}
			}
		});
		</script>
		</div>
		<hr class="styled-hr">
		<div>
		<canvas id="sentencesChart" width="100" height="40"></canvas>
		<script>
		var ctx = document.getElementById('sentencesChart').getContext('2d');
		var myChart = new Chart(ctx, {
			type: 'bar',
			data: {
				labels: <?php echo json_encode(getLabels()) ?>,
				datasets: [{
	//				label: '# of Votes',
					data: <?php echo json_encode(getStatsNewKanji()) ?>,
					backgroundColor: "#ebcb8b",
					borderColor: "#ebcb8b",
					hoverBorderColor: "orange",
					hoverBackgroundColor: "rgba(232,105,90,0.8)",
					borderWidth: 1
				}]
			},
			options: {
			  title: {
				fontColor: fontColor,
				fontSize: 18,
				display: true,
				text: 'New sentences per day'
			  },
			legend: { display: false },

				scales: {
					xAxes: [{
						gridLines: {
						color: fontColor,
						display: false
						},
						ticks: {
							fontColor: fontColor,
						}
					}],
					yAxes: [{
						gridLines: {
						  color: fontColor
						},
						ticks: {
							fontColor: fontColor,
							beginAtZero: true
						}
					}]
				}
			}
		});
		</script>
		</div>
		<hr class="styled-hr">
	</div>
</body>

</html>
