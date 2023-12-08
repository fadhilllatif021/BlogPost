@extends('dashboard.layouts.main')

@section('container')
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
  <h1 class="h2">My Posts</h1>
</div>

@if (session()->has('success'))
<div class="alert alert-success col-lg-9" role="alert">
  {{ session('success') }}
</div>
@else
    
@endif

<div class="table-responsive col-lg-9">
  <a href="/dashboard/posts/create" class="btn btn-primary my-2"><i data-feather="plus-circle" style="margin-right: 2px"></i>Add New Post</a>
  <table class="table table-striped-columns">
    <thead>
      <tr>
        <th scope="col">#</th>
        <th scope="col">Title</th>
        <th scope="col">Category</th>
        <th scope="col">Action</th>
      </tr>
    </thead>
    <tbody>
      @foreach ($posts as $posts)
      <tr>
        <td>{{ $loop->iteration }}</td>
        <td>{{ $posts->title }}</td>
        <td>{{ $posts->category->name }}</td>
        <td>
          <a href="/dashboard/posts/{{ $posts->slug }}" class="badge bg-primary mb-1"><i data-feather="eye"></i></a>
          <a href="/dashboard/posts/{{ $posts->slug }}/edit" class="badge bg-warning mb-1"><i data-feather="edit"></i></a>
          <form action="/dashboard/posts/{{ $posts->slug }}" class="d-inline" method="post">
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