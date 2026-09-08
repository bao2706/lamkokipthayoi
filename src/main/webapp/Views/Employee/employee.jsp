<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="vi">

<head>
	<meta charset="UTF-8">
	<title>Danh sách nhân viên</title>

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>

<div class="container mt-2">

	<div class="border border-dark border-2 p-3">

		<h5 class="mb-2">Danh sách nhân viên</h5>

		<!-- Thêm mới -->
		<button type="button" class="btn btn-light btn-sm border border-dark">
			Thêm mới
		</button>

		<!-- Bảng -->
		<table class="table table-bordered table-striped table-sm mt-3">

			<thead class="table-secondary">
			<tr>
				<th>STT</th>
				<th>ID</th>
				<th>Name</th>
				<th>Dob</th>
				<th>Address</th>
			</tr>
			</thead>

			<tbody>
			<c:forEach var="e" items="${listEmployee}" varStatus="status">
				<tr>
					<td>${status.index + 1}</td>
					<td>${e.id}</td>
					<td>${e.name}</td>
					<td>${e.dob}</td>
					<td>${e.address}</td>
				</tr>
			</c:forEach>
			</tbody>

		</table>

	</div>

</div>

</body>

</html>
