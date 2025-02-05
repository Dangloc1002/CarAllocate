@extends('master-template')
@section('content')
@php
    $status = ['Waitting', 'Arranged', 'Canceled'];
    $hasLunch = ['No', 'Yes'];
@endphp
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Users</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Users</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">List
                </h3>
                <div class="card-tools">
                    {{-- <a href="{{route('requests.create')}}" type="button" class="btn btn-block bg-gradient-primary float-right">Create</a> --}}
                  </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table class="table table-bordered" id="myTable">
                  <thead>
                    <tr>
                      <th style="width: 10px">#</th>
                      <th>Driver Name</th>
                      <th>Car Name</th>
                      <th>Car Model</th>
                      <th>License Plate</th>
                      <th>Car Type</th>
                      <th>Parking Lot</th>
                      <th>Car Priority</th>
                      <th>Seat Limit</th>
                      <th>Phone</th>
                    </tr>
                  </thead>
                  <tbody>
                    @foreach ($cars as $key => $car)
                    <tr>
                        <td>{{$key + 1}}</td>
                        <td>{{ $car->driver_name }}</td>                    
                        <td>{{$car->car_name}}</td>                    
                        <td>{{$car->car_model}}</td>
                        <td>{{$car->license_plate }}</td>
                        <td>{{$car->car_type}}</td>
                        <td>{{$car->parking_lot}}</td>
                        <td>{{$car->car_priority}}</td>
                        <td>{{$car->seat_limit}}</td>
                        <td>{{$car->phone}}</td>
                      </tr>
                    @endforeach
                  </tbody>
                </table>
              </div>
              <!-- /.card-body -->
              <div class="card-footer clearfix">
              </div>
            </div>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
@endsection
