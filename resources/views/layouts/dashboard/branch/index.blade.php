@extends('home')
     
@section('content')

<div id="sponsor">
    <div class="container">
        <div class="row">
            <div class="col">
                <h2 class="mb-25">
                    <a href="#">Branch Committee Information</a> 
                    <a href="{{ route('branch-committe.create') }}" class="btn btn-default btn-rounded print pull-right">+ Add Branch Committee</a>
                </h2>
            </div>
        </div>
        <div class="row">
            @if ($message = Session::get('success'))
                <div class="alert alert-success">
                    <p>{{ $message }}</p>
                </div>
            @endif
            
            <table style= "border: 1px solid black; border-collapse: collapse; margin-left:5px; margin-top:50px;" class="table table-bordered" >
                <tr>
                    <th>Name</th>
                    <th>Designation</th>
                    <th>Mobile No</th>
                    <th>Email</th>
                    <th>Image</th>
                    
                    <th width="280px">Action</th>
                </tr>
                @foreach ($branchCommittee as $info)
                <tr>
                    <td>{{ $info->name }}</td>
                    <td>{{ $info->designation }}</td>
                    <td>{{ $info->mobile_no }}</td>
                    <td>{{ $info->email }}</td>
                    <td><img src="{{asset('images/branch/'. $info->image)}}" width="100px"></td>
                    <td>

                    <a class="btn btn-primary" href="{{ route('branch-committe.edit',$info->id) }}">Edit</a>
                        <form action="{{ route('branch-committe.destroy',$info->id) }}" method="POST">
            
                            @csrf
                            @method('DELETE')
                
                            <button type="submit" class="btn btn-danger">Delete</button>
                        </form>
                    </td>
                </tr>
                @endforeach
            </table>
        </div>
    </div>
</div>

<style>
    #sponsor{
        /* padding-top: 100px; */
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
    .pull-right {
        float: right;
        padding: 10px 18px !important;
        background-color: #fff;
        border: 2px solid #ddd !important;
        color: #455a64 !important;
        border-radius: 60px !important;
    }
    .pull-right:hover {
        background: #fafafa;
        border: 2px solid #19686d !important;
        color: #19686d !important;
    }
</style>
@endsection