<!-- ======= Header ======= -->
<header id="header" class="fixed-top">
    <div class="container d-flex align-items-center">

      <h1 class="logo mr-auto"><a href="/">WebtechHub</a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo mr-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav class="nav-menu d-none d-lg-block">
        <ul>
          <li><a href="about">About</a></li>
          <li><a href="websites">Websites</a></li>
          <li><a href="forum">Forum</a></li>
       
            @if (Route::has('login'))
           
                @auth
                   <li> <a href="{{ url('/home') }}" class="twxt-success">Home</a></li>
                @else
                    <li><a href="{{ route('login') }}" class="text-success">Login</a></li>

                    @if (Route::has('register'))
                     <li><a href="{{ route('register') }}" class="text-success">Register</a></li>
                    @endif
                @endauth
          
            @endif
          

        </ul>
      </nav><!-- .nav-menu -->


    </div>
  </header><!-- End Header -->