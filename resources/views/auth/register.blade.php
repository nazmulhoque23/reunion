@extends('layouts.app')

@section('content')
<div class="container log">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Register') }}</div>

                <div class="card-body">
                @if ($errors->any())
                <div class="alert alert-danger">
                    <strong>Whoops!</strong> There were some problems with your input.<br><br>
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
                @endif
                    <form method="POST" action="{{ route('register.store') }}" enctype="multipart/form-data">
                        @csrf
                        <h3>Application Info</h3>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="mb-3">
                                    <label for="year" class="form-label">এস এস সি ব্যাচ/ভর্তির বছর</label>
                                    <select class="form-control" aria-label="Defaul" name="batch_id" required>
                                        <option selected>Select Batch</option>
                                        @foreach($batches as $b)
                                        <option value="{{$b->id}}">{{$b->batch_name}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="mb-3">
                                    <label for="category_id" class="form-label">বিভাগ নাম</label>
                                    <select class="form-control cat_id" aria-label="Defaul" name="cat_id" required>
                                        <option selected>Select Category</option>
                                        @foreach($categories as $item)
                                        <option value="{{$item->id}}">{{$item->cat_name}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="mb-3">
                                    <label for="category_id" class="form-label">অংশগ্রহণের ফি</label>
                                    <div class="pay">
                                        <input type="text" class="form-control" name="pay" disabled required>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label for="name" class="form-label">নাম</label>
                                    <input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" required autocomplete="name" autofocus>

                                    @error('name')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label for="f_name" class="form-label">পিতা/স্বামীর নাম</label>
                                    <input id="f_name" type="text" class="form-control @error('f_name') is-invalid @enderror" name="g_name" value="{{ old('f_name') }}" required autocomplete="Father Name" autofocus>

                                    @error('f_name')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col-md-4">
                                <div class="mb-3">
                                    <label for="email" class="form-label">ইমেল</label>
                                    <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email">

                                    @error('email')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="mb-3">
                                    <label for="mobile" class="form-label">মোবাইল নাম্বর</label>
                                    <input id="mobile" type="text" class="form-control @error('mobile') is-invalid @enderror" name="mobile" value="{{ old('mobile') }}" required autocomplete="mobile" autofocus>

                                    @error('mobile')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>  
                            </div>
                            <div class="col-md-4">
                                <div class="mb-3">
                                    <label for="mobile" class="form-label">ফেসবুক লিংক</label>
                                    <input id="mobile" type="text" class="form-control" name="fb_link">
                                </div>  
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label for="address" class="form-label">স্থায়ী ঠিকানা(বাড়ির নাম, গ্রাম, পোস্ট অফিস)</label>
                                    <input id="address" type="text" class="form-control" name="address" required>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label for="mailing_address" class="form-label">থানা/উপজেলা</label>
                                    <input id="mailing_address" type="text" class="form-control" name="thana" required>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="mb-3">
                                    <label for="year" class="form-label">জেলা</label>
                                    <select class="form-control" aria-label="Defaul" name="district_id" required>
                                        <option selected>Select District</option>
                                        @foreach($districts as $item)
                                        <option value="{{$item->id}}">{{$item->district_name}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="mb-3">
                                    <label for="category_id" class="form-label">বিভাগ</label>
                                    <select class="form-control" aria-label="Defaul" name="division_id">
                                        <option selected>Select Division</option>
                                        @foreach($divisions as $item)
                                        <option value="{{$item->id}}">{{$item->division_name}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="mb-3">
                                    <label for="year" class="form-label">ব্লাড গ্রুপ</label>
                                    <select class="form-control" aria-label="Defaul" name="blood_id">
                                        <option selected>Select Blood Group</option>
                                        @foreach($bloods as $item)
                                        <option value="{{$item->id}}">{{$item->blood}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label for="category_id" class="form-label">পোশাক এর ধরণ</label>
                                    <select class="form-control" id="mySelectBox" aria-label="Defaul" name="dress_cat_id" required>
                                        <option selected>Choose</option>
                                        @foreach($dresscategories as $item)
                                        <option value="{{$item->id}}">{{$item->d_name}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label for="img" class="form-label">ছবি</label>
                                    <input id="img" type="file" class="form-control" name="photo" required>
                                </div>
                            </div>
                        </div>
                        <div id="register_table">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <label for="category_id" class="form-label">ড্রেজ সাইজ (টিশার্ট)</label>
                                        <select class="form-control" aria-label="Defaul" name="size_id">
                                            <option selected>Tshirt Size</option>
                                            @foreach($thsirts as $item)
                                            <option value="{{$item->id}}">{{$item->size}}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <img src="{{asset('images/t-size.png')}}" alt="">
                                </div>
                            </div>
                        </div>
                        <h3>Applicant Position</h3>

                        <div class="row">
                            <div class="col-md-4">
                                <div class="mb-3">
                                    <label for="organization" class="form-label">প্রতিষ্টান</label>
                                    <input id="organization" type="text" class="form-control" name="organization" required>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="mb-3">
                                    <label for="designation" class="form-label">পদবী</label>
                                    <input id="designation" type="text" class="form-control" name="designation" required>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="mb-3">
                                    <label for="mailing_address" class="form-label">প্রতিষ্টানের ঠিকানা</label>
                                    <input id="mailing_address" type="text" class="form-control" name="org_address" required>
                                </div>
                            </div>
                        </div>
                        <input id="status" type="text" class="form-control" name="status" value="Pending" required>
                                
                        
                        <div class="row mb-0">
                            <div class="col-md-6 offset-md-4">
                                <button type="submit" class="btn btn-primary">
                                    Go Payment
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<style>
    .log{
        padding-top: 30px;
        padding-bottom: 30px;
    }
    #register_table{
        display: none;
    }
    #status{
        display: none;
    }
</style>
@endsection
