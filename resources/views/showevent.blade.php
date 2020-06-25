<link rel="stylesheet" href="/css/events.css">
@include('layouts.nav')
<script>
    document.getElementById('events').classList.add('active');
    document.getElementById("home").classList.remove("active")
</script>
<style>
    .cover{
        background: url("{{asset('/images/events/'.$event->cover)}}")  no-repeat fixed center center;
	    background-size: cover;
    }
</style>
 <section class="row">
		<div class="col-12 event_header cover">	
		  <div class="row">	
			   <div class="col-12 cover_details">
				    <h1>{{$event->name}}</h1>
				    <p>Hurry up and join our event!</p>
					<button class="event-btn col-2"  style="border: 0; height: 30px; border-radius: 10px;" disabled>{{$event->state}}</button>
			   </div>
		  </div>
		  
		<div class="row event_header_icons justify-content-center">	
			<div class="col-6 col-md-4">	
				<button type="button" class="btn col-2" data-toggle="tooltip" data-placement="bottom" title="{{$event->time}}">
					<i class="fas fa-calendar-week"></i>
				</button>
				<button type="button" class="btn col-2" data-toggle="tooltip" data-placement="bottom" title="{{$event->place}}" >
					<i class="fas fa-map-marker-alt"></i>
				</button>
				<button type="button" class="btn col-2" data-toggle="tooltip" data-placement="bottom" title="9:30AM">
					<i class="far fa-clock"></i>
				</button>
			</div>
		</div>	
    <div class="row justify-content-center btn-back">
      <a class="col-md-4 col-6" href="/allevent">Back to all events</a>
    </div>  
	 </div> 
	</section>	
	

	<!-- Description Section -->
	@if ($event->description)
	<section class="description">
	  <div class="container">	
		<div class="row description-header" data-aos="fade-down" data-aos-duration="1000">
			<h2>description</h2>
		</div>
		<div class="row linerow justify-content-center" data-aos="fade-upl" data-aos-duration="1000">
      		<div class="col-6 col-lg-4 linecol">
       			<div class="line"></div>
      		</div>
    	</div>
		<div class="row " id="description-content">
			<div class="col-12 description-content justify-content-start text-center"> 
				<p data-aos="fade-left" data-aos-duration="1000">{{ $event->description }}</p>
			</div>
		</div>
	  </div>
	</section>
	@endif

	<!-- formlink Section -->
	@if ($event->formlink)

		<div class="row justify-content-center " id="description-content">
			<div class="col-8 description-content text-center"> 
				<a href="{{ $event->formlink }}"><button class="btn btn-dark">Form link</button></a>
			</div>
		</div>
	@endif

    <!-- Speakers Section -->
    @if ($event->speakers)
  	<section class="row speakers MD-speakers">
  	  <div class="col-12 container">	
  		<div class="row">
  			<div class="speaker-header" data-aos="fade-down" data-aos-duration="1000">
  				<h2>Event Speakers</h2>
  			</div>
  		</div>
  		<div class="row linerow justify-content-center" data-aos="fade-up" data-aos-duration="1000">
      		<div class="col-6 col-lg-4 linecol">
       			<div class="line"></div>
      		</div>
        </div>
        <div class="row justify-content-center text-center" data-aos="fade-down" data-aos-duration="1000">
        @foreach($event->speakerimage as $index=> $image )
  			<div class="card ml-1 mr-1 col-3" id="scard1">
  				<img src="{{asset('/images/events/speakers/'.$image)}}" class="card-img-top">
  				<div class="card-body">
                  <p class="card-text">{{$event->speakers[$index]}}</p>
 	 			</div>
  			</div>
        @endforeach
    </div>
  	  </div>
      </section>
      @endif

      <!-- Start of Agenda section -->
      @if ($event->agenda)
  	<section class="agenda">
        <div class="container">
            <div class="row">	
            	<div class="agenda-header block__headline" data-aos="fade-down" data-aos-duration="1000">	
            		<h2>Event Agenda</h2>	
            	</div>		
            </div>	 
            <div class="row linerow justify-content-center" data-aos="fade-up" data-aos-duration="1000">
      			<div class="col-6 col-lg-4 linecol">
       				<div class="line"></div>
      			</div>
            </div>
            @foreach($event->agenda as $agenda)
    		<div class="agenda__block" data-aos="fade-left" data-aos-duration="1000">
                <div class="info">
                    <h3 class="name">{{ $agenda }}</h3>
                </div>                
            </div>
            @endforeach
        </div>
    </section>
    @endif

	@include('layouts.footer')