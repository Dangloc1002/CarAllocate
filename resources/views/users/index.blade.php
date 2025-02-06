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
                      <th>Name</th>
                      <th>Email</th>
                      <th>Phone</th>
                      <th>Priority</th>
                      <th>Has lunch</th>
                      <th>Role</th>
                    </tr>
                  </thead>
                  <tbody>
                    @foreach ($listUser as $key => $user)
                    <tr>
                        <td>{{$key + 1}}</td>
                        <td>{{ $user->name }}</td>                    
                        <td>{{$user->email}}</td>                    
                        <td>{{$user->phone}}</td>
                        <td>{{$user->priority }}</td>
                        <td></td>
                        <td>{{$user->role}}</td>
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
