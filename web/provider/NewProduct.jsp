<%-- 
    Document   : NewProduct
    Created on : Jul 16, 2018, 5:55:42 PM
    Author     : Phong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Service Manager</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        <jsp:include page="/header.jsp"/>

        <div class="container-fluid row">

            <jsp:include page="/functionBar.jsp"/>

            <div class="col-sm-7">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 style="text-align: center">CREATE NEW PRODUCT</h3>
                    </div>
                    <div class="panel-body">
                        <form action="/ServiceforStudentManagement/ProviderController" method="POST">
                            <div class="form-group">
                                <label for="serviceName">Service Name: </label>
                                <select name="drServiceName" class="btn btn-default">
                                    <option></option>
                                    <option></option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="productName">Product Name: </label>
                                <input type="text" class="form-control" id="productName" placeholder="Enter product name" name="txtProductName">
                            </div>
                            <div class="form-group">
                                <label for="quantity">Quantity: </label>
                                <input type="number" class="form-control" id="quantity" placeholder="Enter quantity" name="txtQuantity">
                            </div>
                            <div class="form-group">
                                <label for="price">Price: </label>
                                <input type="number" class="form-control" id="price" placeholder="Enter price" name="txtPrice">
                            </div>
                            <div class="form-group">
                                <label for="unit">Unit: </label>
                                <input type="text" class="form-control" id="unit" placeholder="Enter unit (day, piece,...)" name="txtUnit">
                            </div>
                            <div class="form-group">
                                <label for="description">Description: </label>
                                <textarea class="form-control" rows="5" id="description" name="txtDescription"></textarea>
                            </div>
                            <div style="text-align:center">
                                <button type="submit" class="btn btn-success">Create</button>
                                <button type="reset" class="btn btn-warning">Clear</button>
                            </div>
                            <input type="hidden" name="action" value="newProduct"/>
                        </form>
                    </div>
                </div>
            </div>

            <jsp:include page="/informationBar.jsp"/>            
        </div>
    </body>
</html>
