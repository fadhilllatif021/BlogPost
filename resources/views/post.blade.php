
@extends('layouts.main')
@section('main')

<div class="container">
    <div style="margin-top: 110px">
        <div class="container m-5">
            <div class="row justify-content-center">
                <div class="col-md-8">
                    <h1 class="mb-3"><b>{{ $post->title }}</b></h1>
                    <p class="text-muted">
                        By: 
                        <a href="/posts?author={{ $post->author->username }}" class="text-decoration-none">{{ $post->author->name }}</a> 
                        in  
                        <a href="/posts?category={{ $post->category->slug }}" class="text-decoration-none">{{ $post->category->name }}</a>
                    </p>
        
                    <div class="my-3">
                        @if ($post->image)
                            <div style="max-height: 350px; overflow:hidden;">
                                <img src="{{ asset('storage/' . $post->image) }}" class="img-fluid" alt="{{ $post->category->name }}">
                            </div>
                        @else
                            <img src="https://source.unsplash.com/1200x400?{{ $post->category->name }}" class="card-img-top" alt="{{ $post->category->name }}">      
                        @endif
                    </div>
        
                    <article class="fs-5">
                        {!! $post->body !!}
                    </article>
        
                    <a href="/posts" class="d-block mt-3">Back to posts</a>
                </div>
            </div>
        </div>
    </div>
</div>


    
@endsection