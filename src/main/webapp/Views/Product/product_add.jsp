<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <title>Thêm sản phẩm</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>

<div class="container mt-4">
    <div class="card">
        <div class="card-body">
            <h5 class="card-title">Thêm sản phẩm mới</h5>

            <form action="addProduct" method="post">
                <div class="mb-3">
                    <label class="form-label">Tên sản phẩm</label>
                    <input type="text" name="name" class="form-control" required>
                </div>

                <div class="mb-3">
                    <label class="form-label">Giá</label>
                    <input type="number" name="price" class="form-control" required>
                </div>

                <div class="mb-3">
                    <label class="form-label">Discount (%)</label>
                    <input type="number" name="discount" class="form-control" value="0">
                </div>

                <div class="mb-3">
                    <label class="form-label">Stock</label>
                    <input type="number" name="stock" class="form-control" value="0">
                </div>

                <button type="submit" class="btn btn-primary">Lưu</button>
                <a href="/" class="btn btn-secondary">Hủy</a>
            </form>

        </div>
    </div>
</div>

</body>

</html>
