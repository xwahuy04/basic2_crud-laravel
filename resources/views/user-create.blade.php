<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>User Create</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
</head>

<body>
    <div class="container">
        <div class="m-2">
            <h2><strong>User Create Form</strong></h2>
        </div>
        <div>
            <form action="{{ url('user/store') }}" method="POST">
                @csrf
                <div class="form-group">
                    <label for="name">First Name:</label>
                    <input type="text" class="form-control" placeholder="Enter First Name" id="first_name" name="first_name">
                </div>
                <div class="form-group">
                    <label for="name">Last Name:</label>
                    <input type="text" class="form-control" placeholder="Enter Last Name" id="last_name" name="last_name">
                </div>
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" class="form-control" placeholder="Enter email" id="email" name="email">
                </div>
                <div class="form-group">
                    <label for="pwd">Password:</label>
                    <input type="password" class="form-control" placeholder="Enter password" id="pwd" name="password">
                </div>
                <div class="form-group">
                    <label for="gender">Gender:</label>
                    <input type="radio" name="gender" value="male"> Male
                    <input type="radio" name="gender" value="female"> Female
                </div>
                 <div class="form-group">
                    <label for="pwd">Phone:</label>
                    <input type="number" class="form-control" placeholder="Enter your phone" id="phone" name="phone">
                </div>
                <button type="submit" class="btn btn-primary">Store</button>
            </form>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
