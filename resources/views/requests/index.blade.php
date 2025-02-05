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
            <h1>Requests</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Request</li>
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
                    <a href="{{route('requests.create')}}" type="button" class="btn btn-block bg-gradient-primary float-right">Create</a>
                  </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table class="table table-bordered" id="myTable">
                  <thead>
                    <tr>
                      <th style="width: 10px">#</th>
                      <th>Passenger</th>
                      <th>Status</th>
                      <th>Guest</th>
                      <th>Datetime</th>
                      <th>Location From</th>
                      <th>Province From</th>
                      <th>Location To</th>
                      <th>Province To</th>
                      <th>Phone</th>
                      <th>Email</th>
                      <th>Has lunch</th>
                      <th>Note</th>
                      <th>Action</th>
                    </tr>
                  </thead>
                  <tbody>
                    @foreach ($requests as $key => $request)
                    <tr>
                        <td>{{$key + 1}}</td>
                        <td>{{$request->passenger}}</td>                    
                        <td>{{$status[$request->status]}}</td>                    
                        <td>{{$request->guest}}</td>
                        <td>{{$request->datetime}}</td>
                        <td>{{$request->location_from_name}}</td>
                        <td>{{$request->province_from}}</td>
                        <td>{{$request->location_to_name}}</td>
                        <td>{{$request->province_to}}</td>
                        <td>{{$request->phone}}</td>
                        <td>{{$request->email}}</td>    
                        <td>{{$hasLunch[$request->has_lunch]}}</td>    
                        <td>{{$request->note}}</td>   
                        <td style="text-align: center">
                            <form action="{{route('requests.delete', $request->id)}}" method="POST">
                                @csrf
                                @method('DELETE')
                                <a style="width: 70px" href="{{route('requests.edit', $request->id)}}" class="btn btn-primary">Edit</a>
                                <button style="width: 70px" type="submit" class="btn btn-danger">Delete</button>
                            </form>    
                        </td> 
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
