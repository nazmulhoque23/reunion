@extends('home')
  
@section('content')
<style>
    .row{
        /* text-align: center; */
    }
    .mb-25{
    line-height: 36px;
    font-size: 24px;
    color: #444 !important;
    font-weight: 600;
    margin-top: 11px;
    }
    .mb-25 a{
        color: #19686d;
    }
</style>
<div class="row">
        <div class="col">
            <h2 class="mb-25">
                <a href="#">Add New Sponsor Information</a> >< <a href="{{ route('sponsor.index') }}">Back</a>
            </h2>
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
     
<form style="margin: auto; width: 520px;" action="{{ route('sponsor.store') }}" method="POST" enctype="multipart/form-data">
    @csrf
    
     <div class="row">
        <div class="col-xs-8 col-sm-8 col-md-8">
            <div class="form-group">
                <strong>Organization Name/Person Name:</strong>
                <input type="text" name="name" class="form-control" placeholder="Name">
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                <strong>Address:</strong>
                <input type="text" name="address" class="form-control" placeholder="Address">
            </div>
        </div>
        
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                <strong>Image:</strong>
                <input type="file" name="image" class="form-control" placeholder="image">
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12 text-center">
                <button type="submit" class="btn btn-primary">Submit</button>
        </div>
    </div>
     
</form>
@endsection