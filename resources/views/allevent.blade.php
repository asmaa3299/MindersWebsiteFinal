@extends('layouts.app')
@section('content')
<link rel="stylesheet" href="/css/all-events.css">
<script src="/js/allevent.js"></script>
<script>
    document.getElementById('events').classList.add('active');
    document.getElementById("home").classList.remove("active")
</script>

<!--header-->
<section class="row">
    <div class="col-12 head-img">
        <center><img src="img/Mug_Typography.png" alt="" srcset="" width="50%"></center>
    </div>
</section>

<!-- Cards -->
<section class="col-12 cards-section">
  <div class="container">
    <div class="row justify-content-around about-head" style="padding-top: 50px;">
        <div class="col-12 col-md-4">
            <h2 style="text-align: center;color:#3B3B3B;"data-aos="fade-down" data-aos-duration="1000">Our Events</h2>
        </div>
    </div>
    <div class="row eventlinerow justify-content-center"data-aos="fade-down" data-aos-duration="1000">
        <div class="col-4 linecol">
            <div class="line" style="height: 1px;background-color: rgb(255, 190, 37);"></div>
        </div>
    </div>
    <div class="row ml-lg-2 justify-content-around mt-5">
    @foreach($events as $event)
        <div class="col-lg-3 col-md-5 offset-sm-1 offset-md-0 ml-lg-1">
        	<div class="card" id="{{$event->id}}" data-aos="fade-up" data-aos-duration="1000">
                <img src="{{asset('/images/events/'.$event->cover)}}" class="card-img-top" alt="..." height="150">
				<button class="btn btn-card" id="btn2" onclick="play('{{'#'.$event->id}}')">
                    <i class="fas fa-arrow-down" style="color: black;"></i>
                </button>
				<h5 style="text-align:center; margin-top:5px">{{$event->name}}</h5>
                <div class="card-body" id="cardbody">
                    <div class="content">
                        <div><i class="fas fa-map-marker-alt"></i> {{$event->place}}</div>
                        <div><i class="fas fa-calendar-week"></i> {{$event->time}}</div>
                        <div><i class="fas fa-clock"></i> {{$event->state}}</div><br>
                        <form method="get" action="{{'/events/'. $event->id }}">
                            @csrf
                            <button class="btn" style="background-color: #F1C40F;">See Event</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    @endforeach
	</div>
  </div>
</section>
@endsection


