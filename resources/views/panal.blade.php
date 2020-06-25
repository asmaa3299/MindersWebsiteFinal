
@extends('layouts.panalnav')
<div class="container-fluid mt-5" id="panal">
    <div class="row mt-5 text-center">
        <div class="col mt-5">
            <h1 style=" margin-top: 150px;">Minders Panal</h1>
            <a href="{{ route('login') }}"><button class="btn mt-5">Login</button></a>
        </div>
    </div>
</div>
<style>
    .container-fluid {
        background-color: black;
        height: 100%;
        color: white;
    }

    #panal .btn {
        background-color: #F1C40F;
        color: white;
        height: 80px;
        width: 200px;
        border-radius: 40px;
    }

</style>

