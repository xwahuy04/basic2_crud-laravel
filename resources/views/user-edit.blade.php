<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>User Edit</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
</head>

<body>
    <div class="container">
        <div class="m-2">
            <h2><strong>User Edit Form</strong></h2>
        </div>
        <div>
            <form action="{{ url('user/update') }}" method="POST">
                @csrf
                <div class="form-group">
                    <label for="name">First Name:</label>
                    <input type="text" class="form-control" name="id" value="{{ $user->id }}" hidden>
                    <input type="text" class="form-control" placeholder="Enter First Name" id="first_name" name="first_name" value="{{ $user->first_name }}">
                </div>
                <div class="form-group">
                    <label for="name">Last Name:</label>
                    <input type="text" class="form-control" placeholder="Enter Last Name" id="last_name" name="last_name" value="{{ $user->last_name }}">
                </div>
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" class="form-control" placeholder="Enter email" id="email" name="email" value="{{ $user->email }}">
                </div>
                <div class="form-group">
                    <label for="gender">Gender:</label>
                    <input type="radio" name="gender" value="male" @if ($user->gender == 'male')
                        {{ 'checked' }}
                    @endif> Male
                    <input type="radio" name="gender" value="female"  @if ($user->gender == 'female')
                    {{ 'checked' }} @endif> Female
                </div>
                 <div class="form-group">
                    <label for="phone">Phone:</label>
                    <input type="number" class="form-control" placeholder="Enter your phone" id="phone" name="phone" value="{{ $user->phone }}">
                </div>
                <button type="submit" class="btn btn-primary">Update</button>
            </form>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
