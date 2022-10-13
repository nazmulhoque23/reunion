<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Logo;
use App\Models\Slider;
use App\Models\About;
use App\Models\SponsorInfo;
use App\Models\ManagementInfo;
use App\Models\SubCommittee;
use App\Models\BranchCommittee;

class FrontController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $logos = Logo::all();
        $sliders = Slider::all();
        $abouts = About::all();
        $sponsorinfos = SponsorInfo::all();
        return view('welcome', compact('logos','sliders','abouts','sponsorinfos'));
    }

    public function maincommiteeview()
    {
        $logos = Logo::all();
        $managementInfo = ManagementInfo::all();
        return view('main_committe', compact('logos','managementInfo'));
    }

    public function subcommiteeview()
    {
        $logos = Logo::all();
        $subCommittee = SubCommittee::all();
        return view('sub_committe', compact('logos','subCommittee'));
    }

    public function branchcommiteeview()
    {
        $logos = Logo::all();
        $branchCommittee = BranchCommittee::all();
        return view('branch_committee', compact('logos','branchCommittee'));
    }
    
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
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
        //
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
        //
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
