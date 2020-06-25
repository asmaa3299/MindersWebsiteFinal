<?php

namespace App\Http\Controllers;
use App\User;
use App\Event;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth')->except('minders','panal');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function panal(){
        $user =User::all();
        if ($user->first()) {
            //do nothig
        }else{
            User::create([
                'name' => 'Minders',
                'email' => 'Minders@2020',
                'password' => Hash::make('Minders@2020'),
            ]);
        }
        

        return view('panal');
    }
    public function index()
    {
        return view('home');
    }
    public function minders()
    {
        //$events=Event::orderby('id','desc'); 
        //$even=Event::take(1)->get();
        $events=Event::orderby('id','desc');
        $even=$events->first();
        return view('/minders',compact('even'));
    }
}
