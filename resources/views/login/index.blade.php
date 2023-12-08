@extends('layouts.main')
@section('main')
<div class="container">
    <div class="row justify-content-center">
      <div class="col-md-5">
          <main class="form-signin w-100 m-auto mt-3">
            @if (session('status'))
            <div class="alert alert-success alert-dismissible fade show" role="alert">
              {{ session('status') }}
              <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
            @endif
            
            @if (session('loginError'))
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
              {{ session('loginError') }}
              <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
            @endif
            
              <div style="margin-top: 110px">
                <h1 class="h3 mb-3 fw-normal text-center mt-5"><b>Please login</b></h1>
              </div>
              <form action="/login" method="post">      
                @csrf    
                <div class="form-floating mb-3">
                  <input type="email" name="email" class="form-control @error('email') is-invalid @enderror" id="email" placeholder="name@example.com" autofocus required value="{{ old('email') }}">
                  <label for="email">Email address</label>
                  @error('email')
                  <div class="invalid-feedback">
                    {{ $message }}
                  </div>
                  @enderror
                </div>
                <div class="form-floating mb-3">
                  <input type="password" name="password" class="form-control" id="password" placeholder="Password">
                  <label for="password">Password</label>
                </div>
                <button class="btn btn-primary w-100 py-2" type="submit">Login</button>
              </form>
              <small class="d-block text-center mt-3">Not Registered? <a href="/register">Register Now!</a></small>
                          
            </main>
      </div>
  </div>
</div>

@endsection