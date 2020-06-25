@extends('layouts.panalnav')
<div class="container-fluid admin-header mt-" id="home" style="background-color:black;height:100%">
    <div class="row  justify-content-center ">
        <div class="col-md-3 col-4 head-col text-center">
            <a href="members/index.blade.php"><button class="btn">Members</button></a>
        </div>
        <div class="col-md-3 col-4 head-col text-center">
            <a href="events/index.blade.php"><button class="btn">Events</button></a>
        </div>
        <div class="col-md-3 col-4 head-col text-center">
            <a href="/"><button class="btn">Minders Page</button></a>
        </div>
        <div class="col-md-3 col-4 head-col text-center">
            <a href="/contacts/index.blade.php"><button class="btn">Contacts</button></a>
        </div>
        <div class="col-md-3 col-4 head-col text-center">
            <a href="{{ route('logout') }}" onclick="event.preventDefault();
                                document.getElementById('logout-form').submit();">
                <button class="btn">{{ __('Logout') }}</button>
            </a>

            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                @csrf
            </form>
        </div>
    </div>

    <style>
        #home button {
            margin-top: 200px;
        }

    </style>
