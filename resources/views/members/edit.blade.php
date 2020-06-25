@extends('layouts.panalnav')
<div class="container-fluid" style="height: 100%;background-color:steelblue;">
    <div class="row justify-content-center">
        <div class="mt-5 col-6">
            <form method="POST" action="{{'/members/'. $member->id }}" style="padding:30px;" enctype="multipart/form-data">
                @csrf
                @method('put')
                <div class="form-group">
                    <label for="name">NAME :</label>
                    <input type="text" class="form-control" id="title" name="name"   value="{{$member->name}}">
                </div>
                <div class="form-group">
                    <label for="image">IMAGE :</label>
                    <input type="text" class="form-control" id="title" name="image"   value="{{$member->image}}" readonly> 
                    <small class="text-dark">You can't edit the image </small>
                </div>
                <div class="form-group">
                    <label for="phone_number">PHONE NUMBER :</label>
                    <input type="text"  class="form-control" id="phone_number" name="phone_number" value="{{$member->phone_number}}">
                </div>
                <div class="form-group">
                    <label for="gmail">EMAIL :</label>
                    <input type="text"  class="form-control" id="gmail" name="gmail" value="{{$member->gmail}}">
                </div>
                <div class="form-group">
                    <label for="postion">POSITION :</label>
                    <select class="custom-select" id="postion" name="postion">
                        <option selected>{{$member->postion}}</option>
                        <option>HB</option>
                        <option>IT</option>
                        <option>PR</option>
                        <option>OA</option>
                        <option>FR</option>
                        <option>GD</option>
                        <option>SM</option>
                        <option>AC</option>
                        <option>HR</option>
                    </select>
                </div>
                @include('layouts.message')
                <button type="submit" class="mt-3 btn btn-dark">Submit</button>
            </form>
        </div>
    </div>
</div>