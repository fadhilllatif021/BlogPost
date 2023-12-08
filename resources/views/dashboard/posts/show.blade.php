@extends('dashboard.layouts.main')

@section('container')
<div class="container">
    <div class="row my-3">
        <div class="col-lg-8">
            <h1 class="mb-3">{{ $post->title }}</h1>
            
            <a href="/dashboard/posts" class="btn btn-success"><span data-feather="arrow-left-circle" style="margin-right: 2px"></span>Back to all my post</a>
            <a href="/dashboard/posts/{{ $post->slug }}/edit" class="btn btn-warning"><span data-feather="edit" style="margin-right: 2px"></span>Edit</a>
            <form action="/dashboard/posts/{{ $post->slug }}" class="d-inline" method="post">
                @method('delete')
                @csrf
                <button class="btn btn-danger" onclick="return confirm('Are you sure delete this?')"><span data-feather="x-circle" style="margin-right: 2px"></span>Delete</button>
            </form>

            <div class="my-2">
                @if ($post->image)
                <div style="max-height: 350px; overflow:hidden;">
                    <img src="{{ asset('storage/' . $post->image) }}" class="img-fluid my-3" alt="{{ $post->category->name }}">
                </div>
                @else
                <img src="https://source.unsplash.com/1200x400?{{ $post->category->name }}" class="img-fluid my-3" alt="{{ $post->category->name }}">      
                @endif
            </div>

            <article class="fs-5">
                {!! $post->body !!}
            </article>

            <a href="/dashboard/posts" class="btn btn-success my-3"><span data-feather="arrow-left-circle" style="margin-right: 2px"></span>Back to all my post</a>
        </div>
    </div>
</div>
@endsection