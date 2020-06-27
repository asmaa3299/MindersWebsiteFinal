@extends('layouts.panalnav')
<div class="container-fluid" style="height: 100%;background-color:steelblue;">
    <div class="row justify-content-center">
        <div class="mt-5 col-6 r">
            <form method="POST" action="{{'/members/index.blade.php'}}" style="padding:30px;" enctype="multipart/form-data">
                @csrf
                <div class="form-group">
                    <label for="name">NAME :</label>
                    <input type="text" class="form-control" id="title" name="name" >
                </div>
                <div class="form-group">
                    <label for="image">IMAGE :</label>
                    <input type="file" class="form-control" id="image" name="image">                   
                </div>
                <div class="form-group">
                    <label for="phone_number">PHONE NUMBER :</label>
                    <input type="text" class="form-control" id="phone_number" name="phone_number" >
                </div>
                <div class="form-group">
                    <label for="gmail">EMAIL :</label>
                    <input type="text" class="form-control" id="gmail" name="gmail" >
                </div>
                <div class="form-group">
                    <label for="postion">POSITION :</label>
                    <select class="form-control" id="postion" name="postion" >
                        <option>HB</option>
                        <option>IT</option>
                        <option>PR</option>
                        <option>QM</option>
                        <option>FR</option>
                        <option>GD</option>
                        <option>SM</option>
                        <option>AC</option>
                        <option>HR</option>
                        <option>OC</option>
                        <option>PV</option>
                        <option>Magazine</option>

                    </select>
                </div>
                <div class="form-group">
                    <label for="jobTitle">Job Title:</label>
                    <input type="text" class="form-control" id="jobTitle" name="jobTitle" >
                </div>
                @include('layouts.message')
                <button type="submit" class="mt-3 btn btn-dark">Submit</button>
            </form>
        </div>
    </div>
</div>