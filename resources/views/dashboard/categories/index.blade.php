@extends('dashboard.layouts.main')

@section('container')
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
  <h1 class="h2">Post Categories</h1>
</div>

@if (session()->has('success'))
<div class="alert alert-success col-lg-6" role="alert">
  {{ session('success') }}
</div>
@else
    
@endif

<div class="table-responsive col-lg-6">
  <a href="/dashboard/posts/create" class="btn btn-primary my-2"><i data-feather="plus-circle" style="margin-right: 2px"></i>Add New Category</a>
  <table class="table table-striped-columns">
    <thead>
      <tr>
        <th scope="col">#</th>
        <th scope="col">Category Nama</th>
        <th scope="col">Action</th>
      </tr>
    </thead>
    <tbody>
      @foreach ($categories as $category)
      <tr>
        <td>{{ $loop->iteration }}</td>
        <td>{{ $category->name }}</td>
        <td>
          <a href="/dashboard/categories/{{ $category->slug }}" class="badge bg-primary mb-1"><i data-feather="eye"></i></a>
          <a href="/dashboard/categories/{{ $category->slug }}/edit" class="badge bg-warning mb-1"><i data-feather="edit"></i></a>
          <form action="/dashboard/categories/{{ $category->slug }}" class="d-inline" method="post">
            @method('delete')
            @csrf
            <button class="badge bg-danger border-0" onclick="return confirm('Are you sure delete this?')"><i data-feather="x-circle"></i></button>
          </form>
        </td>
      </tr>
      @endforeach
    </tbody>
  </table>
</div>
@endsection