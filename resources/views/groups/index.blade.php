@extends('master-template')
@php
    $status = ['Waitting', 'Arranged', 'Canceled'];
    $hasLunch = ['No', 'Yes'];
@endphp
@section('content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Groups</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Groups</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <!-- /.row -->
        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">List</h3>
                <div class="card-tools">
                    <a href="{{route('requests.create')}}" style="margin-left:10px" type="button" class="btn bg-gradient-primary float-right">Add group</a>
                    <a href="{{route('groups.aggree-arrange')}}" style="margin-left:10px" type="button" class="btn bg-gradient-primary float-right">Agree arrange</a>
                    <a href="{{route('groups.automatic-arrange')}}"  type="button" class="btn bg-gradient-primary float-right">Automatically arrange</a>
                  </div>
              </div>
              <!-- ./card-header -->
              <div class="card-body p-0">
                <table class="table table-hover">
                  <tbody>
                    @foreach ($listGroup as $key => $group)
                    <tr data-widget="expandable-table" aria-expanded="true">
                      <td>
                        <i class="expandable-table-caret fas fa-caret-right fa-fw"></i>
                        <b> Group {{ $key + 1 }} | Date: {{ $group->start }}| From: {{ $group->location_from_name }} - To: {{ $group->location_to_name }} | driver: {{ $group->driver_name }} | Start: {{ $group->start }} - End: {{ $group->end }}</b>
                        <button type="submit" class="btn btn-danger float-right">Delete</button>
                        <a style="margin-right: 3px !important" class="btn btn-primary float-right">Edit</a>
                      </td>
                    </tr>
                    <tr class="expandable-body">
                      <td>
                        <div class="p-0">
                          <table class="table table-hover">
                            <tbody style="text-align: center">
                              <tr data-widget="expandable-table" aria-expanded="false">
                                <td>
                                  <b>Passenger</b>
                                </td>
                                <td>
                                    <b>Start</b>
                                </td>
                                  <td>
                                    <b>Location from</b>
                                  </td>
                                  <td>
                                    <b>Location to</b>
                                  </td>
                                  <td>
                                    <b>Phone</<b>
                                  </td>
                                  <td>
                                    <b>Email</b>
                                  </td>
                                  <td>
                                    <b>Lunch</b>
                                  </td>
                                  <td>
                                    <b>Time ET</b>
                                  </td>
                                  <td>
                                    <b>Action</b>
                                  </td>
                              </tr>
                              @foreach ($group->groupRequests->sortBy('start') as $request)
                              <tr data-widget="expandable-table" aria-expanded="false">
                                <td>
                                    {{ $request->passenger }}
                                  </td>
                                  <td>
                                    {{ $request->start }}
                                  </td>
                                    <td>
                                      {{ $request->location_from_name }}
                                    </td>
                                    <td>
                                      {{ $request->location_to_name }}
                                    </td>
                                    <td>
                                      {{ $request->phone }}
                                    </td>
                                    <td>
                                      {{ $request->email }}
                                    </td>
                                    <td>
                                      {{ $hasLunch[$request->has_lunch] }}
                                    </td>
                                    <td>
                                      {{ $request->time_et }}
                                    </td>
                                    <td>
                                        <a style="width: 70px"  class="btn btn-primary">Edit</a>
                                        <button style="width: 70px" type="submit" class="btn btn-danger">Delete</button>
                                    </td>
                              </tr>
                              @endforeach
                            </tbody>
                          </table>
                        </div>
                      </td>
                    </tr>
                    @endforeach
                  </tbody>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>

@endsection
