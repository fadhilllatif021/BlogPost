@extends('layouts.main')
@section('main')
<h1>Halaman {{ $title }}</h1>
<h3>{{ $name }}</h3>
<p>{{ $email }}</p>
<img src="image/{{ $image }}" alt="{{ $name }}" width="200" class="img-thumbnail">
@endsection