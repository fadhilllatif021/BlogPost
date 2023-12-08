@extends('layouts.main')
@section('main')
<div class="container">
  <div class="row justify-content-center">
    <div class="col-md-5">
        <main class="form-registration w-100 m-auto">
          <div style="margin-top: 110px">
            <h1 class="h3 mb-3 fw-normal text-center mt-5"><b>Registration Form</b></h1>
          </div>
            <form action="/register" method="post">   
              @csrf       
              <div class="form-floating mb-3">
                <input type="text" name="name" class="form-control rounded-top @error('name') is-invalid @enderror" id="name" placeholder="Name" value="{{ old('name') }}">
                <label for="name">Name</label>
                @error('name')
                <div class="invalid-feedback">
                  {{ $message }}
                </div>
                @enderror
              </div>
              <div class="form-floating mb-3">
                <input type="text" name="username" class="form-control rounded-top @error('username') is-invalid @enderror" id="username" placeholder="username" value="{{ old('username') }}">
                <label for="username">Username</label>
                @error('username')
                <div class="invalid-feedback">
                  {{ $message }}
                </div>
                @enderror
              </div>
              <div class="form-floating mb-3">
                <input type="email" name="email" class="form-control rounded-top @error('email') is-invalid @enderror" id="email" placeholder="name@example.com" value="{{ old('email') }}">
                <label for="email">Email</label>
                @error('email')
                <div class="invalid-feedback">
                  {{ $message }}
                </div>
                @enderror
              </div>
              <div class="form-floating mb-3">
                <input type="password" name="password" class="form-control rounded-top @error('password') is-invalid @enderror" id="password" placeholder="Password" value="{{ old('password') }}">
                <label for="password">Password</label>
                @error('password')
                <div class="invalid-feedback">
                  {{ $message }}
                </div>
                @enderror
              </div>
              <button class="btn btn-primary w-100 py-2" type="submit">Login</button>
            </form>
            <small class="d-block text-center mt-3">Not Registered? <a href="/login">Login Now!</a></small>
          </main>
    </div>
</div>
</div>

@endsection