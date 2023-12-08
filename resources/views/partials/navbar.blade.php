<nav id="navbar" class="navbar">
  <ul>
    <li><a class="nav-link scrollto {{ Request::is('/') ? 'active' : '' }}" href="/">Home</a></li>
    <li><a class="nav-link scrollto" href="#about">About</a></li>
    <li><a class="nav-link scrollto {{ Request::is('posts') ? 'active' : '' }}" href="/posts">Blog</a></li>
    <li><a class="nav-link scrollto {{ Request::is('categories') ? 'active' : '' }}" href="/categories">Category</a></li>
    <li><a class="nav-link scrollto {{ Request::is('login') ? 'active' : '' }}" href="/login" style="color: #fff;
      background: #f6b024;
      padding: 6px 24px 8px 24px;
      display: inline-block;
      transition: 0.3s;
      border-radius: 50px;">Login</a></li>
  </ul>
  
  <i class="bi bi-list mobile-nav-toggle"></i>
</nav><!-- .navbar -->