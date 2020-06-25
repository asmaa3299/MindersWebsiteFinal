@extends('layouts.panalnav')
<div class="container-fluid" style="background-color:steelblue;">
    <div class="row justify-content-center">
        <div class="mt-5 col-6 r">
            <form method="POST" action="{{'/events/'. $event->id }}" style="padding:30px;" enctype="multipart/form-data">
                @csrf
                @method('put')
                <div class="form-group">
                    <label for="name">NAME :</label>
                    <input type="text" class="form-control" id="title" name="name"  value="{{$event->name}}">
                </div>
                <div class="form-group">
                    <label for="cover">COVER PHOTO :</label>
                <input type="text" value="{{ $event->cover}}" disabled>                
                </div>
                <div class="form-group">
                    <label for="place">PLACE :</label>
                    <input type="text" class="form-control" id="place" name="place" value="{{$event->place}}">
                </div>
                <div class="form-group">
                    <label for="time">TIME :</label>
                    <input type="date" class="form-control" id="time" name="time" value="{{$event->time}}">
                </div>
                @if ($event->description)
                <div class="form-group">
                    <label for="description">DESCRIPTION :</label>
                    <textarea class="form-control" id="description" name="description" value="{{$event->description}}"></textarea>
                    <small class="text-warning">Optional</small>
                </div>
                @endif
                <div class="form-group">
                    <label for="formlink">FORM LINK :</label>
                    <input type="text" class="form-control" id="formlink" name="formlink" value="{{$event->formlink}}">
                    <small class="text-warning">Optional</small>
                </div>
                @if ($event->agenda)
                <div id="newagenda">
                    <label class="mt-3" for="Speakers">AGENDA :</label>
                    @foreach($event->agenda as $agenda)
                    <input type='text' class='form-control mt-1' id='agenda' name='agenda[]' value="{{$agenda}}" >
                    @endforeach
                </div>
                @endif
                <div class="form-group">
                    <label for="state">STATE :</label>
                    <select class="form-control" id="state" name="state">
                        <option selected>{{$event->state}}</option>
                        <option>Now</option>
                        <option>Soon</option>
                        <option>Closed</option>
                    </select>
                </div>
                @include('layouts.message')
                <button id="save" type="submit" class="mt-3 btn btn-dark">Submit</button>
            </form>
        </div>
    </div>
</div>
