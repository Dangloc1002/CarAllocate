@extends('master-template')
@section('content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Requests</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Requests</a></li>
                        <li class="breadcrumb-item active">Create</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <!-- SELECT2 EXAMPLE -->
            <div class="card card-default">
                <form action="{{route('requests.store')}}" method="POST">
                    @csrf
                    <div class="card-header">
                        <h3 class="card-title">Create</h3>

                        <div class="card-tools">
                        </div>
                    </div>
                    <!-- /.card-header -->

                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Passenger</label>
                                    <select class="form-control select2" name="passenger_id" style="width: 100%;">
                                        @foreach ( $userPriorities as $passenger)
                                        <option value="{{$passenger->id}}">{{$passenger->name}}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <!-- /.form-group -->
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Guest</label>
                                    <input type="text" name="guest" class="form-control" placeholder="Enter guest">
                                </div>
                                <div class="form-group">
                                    <label>Location from</label>
                                    <select class="form-control select2 select2-danger" name="location_from_id"
                                        data-dropdown-css-class="select2-danger" style="width: 100%;">
                                        @foreach ( $locations as $location)
                                        <option value="{{$location->id}}">{{$location->name}}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Phone</label>
                                    <input type="text" name="phone" class="form-control" placeholder="Enter phone">
                                </div>
                                <div class="form-group">
                                    <label>Has lunch</label>
                                    <div class="custom-control custom-radio">
                                        <input class="custom-control-input" name="has_lunch" type="radio"
                                            id="customRadio2" checked value="1">
                                        <label for="customRadio2" class="custom-control-label">Yes</label>
                                    </div>
                                    <div class="custom-control custom-radio">
                                        <input class="custom-control-input" name="has_lunch" type="radio"
                                            id="customRadio1" value="0">
                                        <label for="customRadio1" class="custom-control-label">No</label>
                                    </div>
                                </div>
                                <!-- /.form-group -->
                            </div>
                            <!-- /.col -->
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Date and time:</label>
                                    <div class="input-group date" id="reservationdatetime" data-target-input="nearest">
                                        <input type="text" name="datetime" class="form-control datetimepicker-input"
                                            data-target="#reservationdatetime" />
                                        <div class="input-group-append" data-target="#reservationdatetime"
                                            data-toggle="datetimepicker">
                                            <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                                        </div>
                                    </div>
                                </div>
                                <!-- /.form-group -->
                                {{-- <div class="form-group">
                                    <label>Driver</label>
                                    <select class="form-control select2" style="width: 100%;" name="driver_id">
                                        @foreach ( $drivers as $driver)
                                        <option value="{{$driver->id}}">{{$driver->driver_name}}</option>
                                        @endforeach
                                    </select>
                                </div> --}}
                                <div class="form-group">
                                    <label>Location to</label>
                                    <select class="form-control select2 select2-danger"
                                        data-dropdown-css-class="select2-danger" style="width: 100%;"
                                        name="location_to_id">
                                        @foreach ( $locations as $location)
                                        <option value="{{$location->id}}">{{$location->name}}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Email</label>
                                    <input type="text" class="form-control" placeholder="Enter guest" name="email">
                                </div>
                                <div class="form-group">
                                    <label>Note</label>
                                    <textarea class="form-control" rows="3" placeholder="Enter ..."
                                        name="note"></textarea>
                                </div>
                                <!-- /.form-group -->
                            </div>
                            <!-- /.col -->
                        </div>
                        <!-- /.row -->
                    </div>

                    <!-- /.card-body -->
                    <div class="card-footer">
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
                <form>
            </div>
            <!-- /.card -->
        </div>
        <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
</div>
@endsection