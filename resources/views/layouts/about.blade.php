<div class="about">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="about-title">
                    <!-- <span class="lopUi">About</span> -->
                    <h3 class="sdrYt">সুবর্ণ জয়ন্তী উৎসব ২০২৩</h3>
                </div>
                <div class="reunion-content">
                    @foreach($abouts as $item)
                    <p>{{$item->content_one}}</p>
                    <p>{{$item->content_two}}</p>
                    @endforeach
                </div>
            </div>
            <div class="col-md-6 text-center">
                <div class="about-title">
                    <!-- <span class="lopUi">About</span> -->
                    <!-- <h3 class="sdrYt">সুবর্ণ জয়ন্তী উৎসব ২০২৩</h3> -->
                </div>
                <div class="about-img">
                @foreach($abouts as $item)
                    <img src="{{asset('images/about/'. $item->abimg)}}" alt="">
                @endforeach
                </div>
            </div>
        </div>
    </div>
</div>