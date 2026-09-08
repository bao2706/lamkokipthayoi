<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
    <%@ taglib prefix="c" uri="jakarta.tags.core" %>

        <!DOCTYPE html>
        <html lang="vi">

        <head>
            <meta charset="UTF-8">
            <title>Danh sách sản phẩm</title>

            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        </head>

        <body>

            <div class="container mt-2">

                <div class="border border-dark border-2 p-3">

                    <h5 class="mb-2">Danh sách sản phẩm</h5>

                    <!-- Thêm mới -->
                    <button type="button" class="btn btn-light btn-sm border border-dark">
                        Thêm mới
                    </button>

                    <!-- Top sản phẩm -->
                    <div class="d-flex align-items-center gap-1 mt-2">

                        <span>Danh sách top:</span>

                        <select class="form-select form-select-sm w-auto">
                            <option>3</option>
                            <option>5</option>
                            <option>10</option>
                        </select>

                        <span>Sản phẩm được đặt hàng nhiều nhất</span>
                        <form action="topLoad" method="get">
                            <input type="submit" value="Xem" class="btn btn-light btn-sm border border-dark">
                        </form>

                    </div>

                    <!-- Lọc theo ngày -->
                    <div class="d-flex align-items-center gap-1 mt-2">

                        <span>Danh sách sản phẩm được đặt từ:</span>

                        <input type="text" class="form-control form-control-sm" style="width: 50px" value="//">

                        <button class="btn btn-light btn-sm border">
                            📅
                        </button>

                        <span>đến:</span>

                        <input type="text" class="form-control form-control-sm" style="width: 50px" value="//">

                        <button class="btn btn-light btn-sm border">
                            📅
                        </button>

                        <button class="btn btn-light btn-sm border border-dark">
                            Xem
                        </button>

                    </div>

                    <!-- Bảng -->
                    <table class="table table-bordered table-striped table-sm mt-3">

                        <thead class="table-secondary">
                            <tr>
                                <th>STT</th>
                                <th>Name</th>
                                <th>Price</th>
                                <th>Discount</th>
                                <th>Stock</th>
                            </tr>
                        </thead>

                        <tbody>
                            <c:forEach var="p" items="${listProduct}" varStatus="status">
                                <tr>
                                    <td>${status.index + 1}</td>
                                    <td>${p.name}</td>
                                    <td>${p.price}</td>
                                    <td>${p.discount}</td>
                                    <td>${p.stock}</td>
                                </tr>
                            </c:forEach>

                        </tbody>

                    </table>

                </div>

            </div>

        </body>

        </html>