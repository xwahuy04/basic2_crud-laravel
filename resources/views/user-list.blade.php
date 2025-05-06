<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">
</head>
<body>

    <div class="container">

        @include('error_message')

        <div class="row">
            <div class="col-6">
                <a href="{{ url('user/create') }}" class="btn btn-sm btn-primary mt-2">Add User</a>
                <a href="{{ url('logout') }}" class="btn btn-sm btn-danger mt-2">Logout</a>
            </div>

            <div class="col-6">
                <form action="{{ url('user/list') }}" class="row" method="get">
                    <div class="col-8">
                        <input type="text" name="search" placeholder="Search Here" class="form-control" value="{{ $search }}">
                    </div>
                    <div class="col-2">
                        <button class="btn btn-primary" type="submit">Search</button>
                    </div>
                </form>
            </div>
        </div>

        <table class="table table-striped">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Email</th>
                    <th>Gender</th>
                    <th>Phone</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($users as $key=>$user)
                    <tr>
                        <td>{{ ($users->currentPage() - 1) * $users->perPage() + $loop->iteration }}</td>
                        <td>{{ $user->first_name }}</td>
                        <td>{{ $user->last_name }}</td>
                        <td>{{ $user->email }}</td>
                        <td>{{ $user->gender }}</td>
                        <td>{{ isset($user->phone) ? $user->phone : '-' }}</td>
                        <td>
                            <a href="{{ url('user/edit/' . $user->id) }}" class="btn btn-sm btn-primary"><i class="fa fa-edit"></i></a>
                            <a href="{{ url('user/delete/' . $user->id) }}" class="btn btn-sm btn-danger"><i class="fa fa-trash"></i></a>
                        </td>
                    </tr>
               
                @endforeach
            </tbody>
        </table>
        <div class="pagination">
            
        </div>
        {!! $users->appends(['search' => $search])->links() !!}
    </div>
    

    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.3/js/bootstrap.min.js"></script>
</body>
</html>