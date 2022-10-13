<div class="navi">
    <nav class="navbar navbar-light bg-light">
        <div class="container">
            <a class="navbar-brand"><img src="{{asset('images/suborno.jpg')}}" alt=""></a>
            <a href="#" class="title">ভোরবাজার এডভোকেট বেলায়েত হোসেন উচ্চ বিদ্যালয়</a>
            @if (Route::has('login'))
                <div class="hidden fixed top-0 right-0 px-6 py-4 sm:block">
                    @auth
                        <a href="{{ url('/') }}" class="text-sm text-gray-700 dark:text-gray-500 underline">Home Page</a>
                    @else
                        <a href="{{ route('login') }}" class="text-sm text-gray-700 dark:text-gray-500 underline">Log in</a>

                        <!-- @if (Route::has('register'))
                            <a href="{{ route('register') }}" class="ml-4 text-sm text-gray-700 dark:text-gray-500 underline">Register</a>
                        @endif -->
                    @endauth
                </div>
            @endif
        </div>
    </nav>
</div>

<style>
.title,.title:hover {
  font-size: 30px;
  text-decoration: navajowhite;
  color: #e45914;
  text-align: center;
}
.title2,.title2:hover {
  font-size: 20px;
  text-decoration: navajowhite;
  color: #fff;
  text-align: center;
}
.navbar-brand img{
    width: 50px;
    height: 50px;
}

</style>