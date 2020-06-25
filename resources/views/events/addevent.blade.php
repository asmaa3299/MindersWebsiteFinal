@extends('layouts.panalnav')
<div class="container-fluid" style="background-color:steelblue;">
    <div class="row justify-content-center">
        <div class="mt-5 col-6 r">
            <form method="POST" enctype="multipart/form-data" action="{{'/events/index.blade.php'}}" style="padding:30px;">
                @csrf
                <div class="form-group">
                    <label for="name">NAME :</label>
                    <input type="text" class="form-control" id="title" name="name"  >
                </div>
                <div class="form-group">
                    <label for="cover">COVER PHOTO :</label>
                    <input type="file"  class="form-control-file" id="cover" name="cover">                   
                </div>
                <div class="form-group">
                    <label for="place">PLACE :</label>
                    <input type="text"  class="form-control" id="place" name="place" >
                </div>
                <div class="form-group">
                    <label for="time">TIME :</label>
                    <input type="date"  class="form-control" id="time" name="time" >
                </div>
                <div class="form-group">
                    <label for="description">DESCRIPTION :</label>
                    <textarea class="form-control" id="description" name="description"></textarea>
                    <small class="text-warning">Optional</small>
                </div>
                <div class="form-group">
                    <label for="formlink">FORM LINK :</label>
                    <input type="text" class="form-control" id="formlink" name="formlink" >
                    <small class="text-warning">Optional</small>
                </div>
                
                <div class="form-group">
                    <label for="state">STATE :</label>
                    <select class="form-control" id="state" name="state" >
                        <option selected>Now</option>
                        <option selected>Soon</option>
                        <option selected>Closed</option>
                    </select>
                </div>
                <div id="newElementId">
                    <label for="Speakers">SPEAKERS :</label>
                </div>
                <div id="dynamicCheck">
                    <small class="text-warning">Optional</small>
                    <button type="button" class="mt-1 btn btn-dark" onclick="createNewElement();">Add Speaker</button>
                 </div>
                 <div id="newagenda">
                    <label class="mt-3" for="Speakers">AGENDA :</label>
                </div>
                <div id="dynamicCheck">
                    <small class="text-warning">Optional</small>
                    <button type="button" class="mt-1 btn btn-dark" onclick="createNewagenda();">Add agenda</button>
                 </div>
                @include('layouts.message')
                <button type="submit" class="mt-3 btn btn-dark">Submit</button>
            </form>
        </div>
    </div>
</div>

 

 
<script src="/js/event.js"></script>