<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\SponsorInfo;

class SponsorController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $sponsorInfo = SponsorInfo::all();
        return view('layouts.dashboard.sponsor.index', compact('sponsorInfo'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('layouts.dashboard.sponsor.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'address'=>'required',
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg',
        ]);

        $input= $request->all();

        if($image = $request->file('image')){
            $destinationPath = 'images/sponsor/';
            $profileImage = date('YmdHis') . ".". $image->getClientOriginalExtension();
            $image->move($destinationPath, $profileImage);
            $input['image'] = "$profileImage";
        }

        SponsorInfo::create($input);

        return redirect()->route('sponsor.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $sponsorInfo = SponsorInfo::find($id);
        return view('layouts.dashboard.sponsor.edit', compact('sponsorInfo'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'name' => 'nullable',
            'address'=>'nullable',
            'image' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg',

        ]);
        $sponsorInfo = SponsorInfo::find($id);

        $input = $request->all();

        if($image = $request->file('image')){
            $destinationPath = 'images/sponsor';
            $profileImage = date('YmdHis') . "." . $image->getClientOriginalExtension();
            $image->move($destinationPath, $profileImage);
            $input['image'] = "$profileImage";
        }else{
            unset($input['image']);
        }

        $sponsorInfo->update($input);

        return redirect()->route('sponsor.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
