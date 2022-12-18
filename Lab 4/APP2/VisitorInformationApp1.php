<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Visitor Information</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
	<div class="container my-5">
		<h2>List of Visitors Application1</h2>
		<table class="table">
			<thead>
				<tr>
					<th>ID</th>
					<th>Page URL</th>
					<th>IP Address</th>
					<th>Created</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<?php
				// Include the database configuration file 
				include_once 'dbConfig.php'; 

				//read all row from database table
				$sql = "SELECT * FROM visitor_logs";
				$result = $db->query($sql);

				if(!$result){
					die("Invalid query: ". $db->error);
				}

				//read data of each row
				while ($row = $result->fetch_assoc()) {
					echo "<tr>
					<td>$row[id]</td>
					<td>$row[page_url]</td>
					<td>$row[user_ip_address]</td>
					<td>$row[created]</td>
					<td>
					<a class='btn btn-danger btn-sm' href='/Lab 4/APP2/delete.php?id=$row[id]'>Delete</a>
					</td>


					</tr>";
				}
				?>
			</tbody>
		</table>
	</div>

</body>
</html>