<?php use App\User;?>
@auth
@extends('layouts.panalnav')
{{$user =User::all()}}
@if ($user->first())
@else
{{ 
User::create([
    'name' => 'Minders',
    'email' => 'Minders@2020',
    'password' => Hash::make('Minders@2020'),
]) }}
@endif
@endauth

<div class="container-fluid" style="background-color:black;height:100%;margin-top:-20;" id="panal">
    <div class="row mt-5">
        <div class="col-5 mt-5">
            <form class="mt-5" method="POST" action="{{ route('login') }}">
                @csrf
                <div class="form-group">
                    <label class="mt-5" for="email">{{ __('E-Mail Address') }}</label>
                    <input type="email" class="form-control @error('email') is-invalid @enderror" id="email" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus >
                    @error('email')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>
                <div class="form-group">
                    <label for="password">{{ __('Password') }}</label>
                    <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="current-password">
                
                    @error('password')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>

                <div class="form-group row">
                    <div class="col-md-6 offset-md-4">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>

                            <label class="form-check-label" for="remember">
                                {{ __('Remember Me') }}
                            </label>
                        </div>
                    </div>
                </div>

                  <div class="form-group row mb-0">
                    <div class="col-md-8">
                        <button type="submit" class="btn">
                            {{ __('Login') }}
                        </button>

                        @if (Route::has('password.request'))
                            <a class="btn btn-link" href="{{ route('password.request') }}">
                                {{ __('Forgot Your Password?') }}
                            </a>
                        @endif
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<style>
    #panal label{
        color: white;
    }
    #panal button{
        background-color: #FFB607;
    }
    #panal input{
        background-color: #FFB607;
    }
    #panal input:focus{
        background-color: #FFB607 
    }

}
</style>

</html>