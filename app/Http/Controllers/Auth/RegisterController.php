<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use App\Models\User;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use App\Models\Batch;
use App\Models\Category;
use App\Models\District;
use App\Models\Division;
use App\Models\Blood;
use App\Models\Tshirt;

class RegisterController extends Controller
{
    public function index()
    {
        $batches = Batch::all();
        $categories = Category::all();
        $districts = District::all();
        $divisions = Division::all();
        $bloods = Blood::all();
        $thsirts = Tshirt::all();
        return view('auth.register', compact('batches','categories','districts','divisions','bloods','thsirts'));
    }
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'school_name' => ['required', 'string', 'max:255'],
            'batch' => ['required'],
            'email' => ['required'],
            'mobile' => ['required'],
            'image' => ['required'],
            'organization' => ['required'],
            'designation' => ['required'],
            'mailing_address' => ['required'],
            'spouse' => ['required'],
            'password' => ['required', 'string', 'min:8', 'confirmed'],
        ]);
        
    }

   

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\Models\User
     */
    protected function create(array $data)
    {
        // $file = $data->file('image');
        // $extension = $file->getClientOriginalExtension();
        // $filename = time().'.'.$extension;
        // $file->move('images/',$filename);

        $file_extention = $data['image']->getClientOriginalExtension();
        $file_name = time().rand(99,999).'image.'.$file_extention;
        $file_path = $data['image']->move(public_path().'/images',$file_name);


        return User::create([
            'name' => $data['name'],
            'email' => $data['email'],
            'school_name' => $data['school_name'],
            'batch' => $data['batch'],
            'mobile' => $data['mobile'],
            'image' => $file_path,
            'organization' => $data['organization'],
            'designation' => $data['designation'],
            'mailing_address' => $data['mailing_address'],
            'spouse' => $data['spouse'],
            'password' => Hash::make($data['password']),
        ]);
    }
}
