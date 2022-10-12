@extends('home')
     
@section('content')
<style>
    .pull-left{
        display: inline-block;
        vertical-align: middle;
        margin: 15px;
    }
    .pull-right{
         display: inline-block;
        vertical-align: middle;
        margin-left: 750px;
        

    }
</style>
    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="pull-left">
                <h2>Edit Information</h2>
            </div>
            <div class="pull-right">
                <a class="btn btn-primary" href="{{ route('sponsor.index') }}"> Back</a>
            </div>
        </div>
    </div>
     
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
    
    <form style="margin: auto; width: 520px;" action="{{ route('sponsor.update',$sponsorInfo->id) }}" method="POST" enctype="multipart/form-data"> 
        @csrf
     
         <div class="row1">
            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="form-group">
                    <strong>Name:</strong>
                    <input type="text" name="name" value="{{ $sponsorInfo->name }}" class="form-control" placeholder="Name">
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="form-group">
                    <strong>Address:</strong>
                    <input type="text" name="address" value="{{ $sponsorInfo->address }}" class="form-control" placeholder="Name">
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="form-group">
                    <strong>Image:</strong>
                    <input type="file" name="image" class="form-control" placeholder="image">
                    <img src="{{asset('images/sponsor/'. $sponsorInfo->image)}}" width="300px">
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-12 text-center">
              <button type="submit" class="btn btn-primary">Submit</button>
            </div>
        </div>
     
    </form>
@endsection