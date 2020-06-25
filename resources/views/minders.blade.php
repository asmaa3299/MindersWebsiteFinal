@extends('layouts.app')
@section('content')

<!--header-->
<section id="header">
    <div class="container-fluid bigimage">
        <div class="row justify-content-center">
            <div class="col-md-6" style="text-align: center;">
                <img src="img/Shirt-back.png">
            </div>
            <div class="col-2 ripple"></div>
        </div>
    </div>
</section>
<!--up button-->
<div class="row justify-content-end fixed-bottom" id="upbtn">
    <div class=" col-2 col-md-1 offset-md-11">
        <a href="#nav"><button class="btn up-btn"><i class="fas fa-arrow-up"></i></button></a>
    </div>
</div>

<!--about us-->
<section class="col-12 about" id="about">
    <div class="row justify-content-around about-head">
        <div class="col-12 col-md-6">
            <h2 style="text-align: center;color:#3B3B3B;" data-aos="fade-up" data-aos-duration="1000">ABOUT MINDERS</h2>
        </div>
    </div>
    <div class="row linerow justify-content-center" data-aos="fade-up" data-aos-duration="1000">
        <div class="col-6 col-lg-4 linecol">
            <div class="line"></div>
        </div>
    </div>
    <div class="row justify-content-around">
        <div class="col-7">
            <p style="text-align: center;color: #3B3B3B;" data-aos="fade-up" data-aos-duration="1000"><span style="color:rgb(228, 161, 6);">Minders</span> is a student
                activity in the faculty of Computers and information systems, Helwan university,
                Helps discovering the potentials buried inside students, supports and improves them,
                in order to develop projects that help them get connected to the job market</p>
        </div>
    </div>
    <div class="row itemsrow justify-content-around">
        <div class="col-md-4 col-12 " style="text-align: center;">
            <div class="row itemscol">
                <div class="aboutitems" data-aos="fade-right" data-aos-duration="1000">
                    <i class="fas fa-calendar-check" style="margin-top: 30px;"></i>
                </div>
            </div>
            <div class="row">
                <div class="itemscontent" data-aos="fade-right" data-aos-duration="1000">
                    <h3 style="margin-top: 10px;color: #F1C40F;">6</h3>
                    <h5 style="color:#3B3B3B">YEARS</h5>
                </div>
            </div>
        </div>
        <div class="col-md-4 col-12" style="text-align: center;">
            <div class="row itemscol">
                <div class="aboutitems" data-aos="fade-up" data-aos-duration="1000">
                    <i class="fas fa-users" style="margin-top: 30px;"></i>
                </div>
            </div>
            <div class="row">
                <div class="itemscontent" data-aos="fade-up" data-aos-duration="1000">
                    <h3 style="margin-top: 10px;color: #F1C40F;">200</h3>
                    <h5 style="color:#3B3B3B">MEMBERS</h5>
                </div>
            </div>
        </div>
        <div class="col-md-4 col-12" style="text-align: center;">
            <div class="row">
                <div class="aboutitems" data-aos="fade-left" data-aos-duration="1000">
                    <i class="fas fa-rocket" style="margin-top: 35px;"></i>
                </div>
            </div>
            <div class="row">
                <div class="itemscontent" data-aos="fade-left" data-aos-duration="1000">
                    <h3 style="margin-top: 10px;color: #F1C40F;">35</h3>
                    <h5 style="color:#3B3B3B">EVENTS</h5>
                </div>
            </div>
        </div>
    </div>
</section>

<!--latest events-->
<section id="event">
    <div class="col-12" style="background-color: black;height: 700px;width: 100%;position: absolute;opacity:1;margin-top: 40px;"></div>
    <div class="col-12">
        <div class="row about-head" style="padding-top: 90px;">
            <div class="col-12 offset-1 col-md-4">
                <h3 style="color:#ffff;" data-aos="fade-right" data-aos-duration="1000">Latest Event</h2>
            </div>
            <div class="col-2 offset-5" data-aos="fade-right" data-aos-duration="1000">
                <button class="btn event-btn" id="event-btn"><a href="allevent">All Events</a></button>
            </div>
        </div>
        <div class="row eventlinerow justify-content-center" data-aos="fade-up" data-aos-duration="1000">
            <div class="col-12 linecol">
                <div class="line"></div>
            </div>
        </div>
        <div class="row justify-content-center" style="margin-top: 80px;">
            <div class="col-10 col-lg-8 card" data-aos="fade-left" data-aos-duration="1000">
                <div class="row">
                    <div class="col-6 col-lg-6">
                        <img style="height: 450px;" src="{{asset('/images/events/'.$even->cover)}}" alt="" id="slider" width="100%" height="100%">
                    </div>
                    <div class=" col-6 col-lg-6">
                        <h1 style="margin-top: 100px;color: #F1C40F;">{{$even->name}}</h1>
                        <p style="margin-top: 30px;color: black;">{{$even->description}}</p>
                        
                    </div>
                    <form method="get" action="{{'/events/'. $even->id }}">
                        @csrf
                        <button class="event-btn" style="margin-top:10px; border: 0;height: 50px;width: 140px;border-radius: 10px;">
                            Show Event
                        </button>
                    </form>
                </div>
            </div>
        </div>        
    </div>
</section>
<!--sponser-->
<section id="sponsers">
    <div class="container">
        <div class="row justify-content-around about-head" style="padding-top: 90px;">
            <div class="col-12 col-md-4">
                <h2 style="text-align: center;color:#3B3B3B;" data-aos="fade-up" data-aos-duration="1000">Sponsors</h2>
            </div>
        </div>
        <div class="row eventlinerow justify-content-center" data-aos="fade-up" data-aos-duration="1000">
            <div class="col-4 linecol">
                <div class="line"></div>
            </div>
        </div>
        <div class="row justify-content-around" style="margin-top: 80px;">
            <div class="col-md-10 ">
                <div class="row justify-content-around sponsersrow">
                    <div class="col-md-3 col-lg-2 card" data-aos="fade-left" data-aos-duration="1000">
                        <img src="img/sponsors/AkhbarElYoum.png" alt="" id="slider" width="100px" height="70px">
                    </div>
                    <div class="col-md-3 col-lg-2 card" data-aos="fade-down" data-aos-duration="1000">
                        <img src="img/sponsors/ALkhamia.png" alt="" id="slider" width="100px" height="70px">
                    </div>
                    <div class="col-md-3 col-lg-2 card" data-aos="fade-right" data-aos-duration="1000">
                        <img src="img/sponsors/elfagr.png" alt="" id="slider" width="100px" height="70px">
                    </div>
                </div>
                <div class="row justify-content-around sponsersrow">
                    <div class="col-md-3 col-lg-2 card" data-aos="fade-left" data-aos-duration="1500">
                        <img style="background-color: black;" src="img/sponsors/elWatan.png" alt="" id="slider" width="100px" height="70px">
                    </div>
                    <div class="col-md-3 col-lg-2 card" data-aos="fade-down" data-aos-duration="1500">
                        <img src="img/sponsors/elyoum7.png" alt="" style="background-color: white;" id="slider" width="100px" height="70px">
                    </div>
                    <div class="col-md-3 col-lg-2 card" data-aos="fade-right" data-aos-duration="1500">
                        <img src="img/sponsors/gardencity.png" alt="" id="slider" width="100px" height="70px">
                    </div>
                </div>
                <div class="row justify-content-around sponsersrow">
                    <div class="col-md-3 col-lg-2 card" data-aos="fade-left" data-aos-duration="2000">
                        <img src="img/sponsors/radiomasr.png" alt="" id="slider" width="100px" height="70px">
                    </div>
                    <div class="col-md-3 col-lg-2 card" data-aos="fade-down" data-aos-duration="2000">
                        <img src="img/sponsors/shababyk.png" alt="" id="slider" width="100px" height="70px">
                    </div>
                    <div class="col-md-3 col-lg-2 card" data-aos="fade-right" data-aos-duration="2000">
                        <img src="img/sponsors/Utrust.png" alt="" id="slider" width="100px" height="70px">
                    </div>
                </div>
                <div class="row justify-content-around sponsersrow">
                    <div class="col-md-3 col-lg-2 card" data-aos="fade-up" data-aos-duration="1000">
                        <img src="img/sponsors/webninja.png" style="background-color: white;" alt="" id="slider" width="100px" height="70px">
                    </div>
                </div>
            </div>
        </div>
</section>

<!-- Start of Our Supervisor Section-->
<section class="col-12 supervisor">
    <div class="row justify-content-center">
        <div class="col-md-6 supervisor-content">
            <div class="col-12" data-aos="fade-up" data-aos-duration="1000">
                <strong class="offset-5" style="font-size: 30px; color: #FFB607;">Discover</strong>
                <h2>Our Supervisor</h2>
            </div>
            <p data-aos="fade-right" data-aos-duration="1500">She Received The M.Sc. Degree In Year 2000,
                And In 2006 Ph.D. Degree In Information Systems At Faculty Of Computers And Information Helwan University
                In 2015 She's Received (The Best Senior Level STEM Executive) From Meera Kaul Foundation She Supervises Many
                M.Sc. And Ph.D. Theses,
                Member Of Examiner Board For Many Msc And PhD, Ex-Vice Executive Manager For Development Of Studentsâ€™
                Assessment System Project For Helwan University (8 Faculties),
                She Supervises Many Graduation Projects And The List Goes On Of Many Positions She Had SO,
                Who Is She ?! <strong style="color: #FFB607;">Dr.Mona Nasr</strong></p>
        </div>
        <div class="col-md-5">
            <img src="img/mona nasr.jpg" data-aos="fade-up" data-aos-duration="2000">
        </div>
    </div>
</section>

<!-- start of our-team section -->
<section class="our-team col-12" id="team">
    <div class="team row">
        <div class="container">
            <div class="team-content">
                <h2 data-aos="fade-left" data-aos-duration="1000">Hello , Do you know us!</h2>
                <a href="/allmember"><button class="btn team-btn" data-aos="fade-right" data-aos-duration="1000">Meet Our Team</button></a>
            </div>
        </div>
    </div>
</section>

<!--contact us-->

<section class="col-12 contact" id="contact">
    <form action="{{'/minders'}}" method="post">
        @csrf
        <div class="row contactback">
            <div class="col-4 col-md-6 col-lg-4 card" data-aos="fade-down" data-aos-duration="1000">
                <h4 class="contactheader">CONTACT US</h4>
                <input type="text" placeholder="Your Name" name="name">
                <input type="email" placeholder="Your Email" name="email">
                <textarea type="" placeholder="Your Message" name="message"></textarea>
                <div class="row justify-content-center">
                    <div class="col-12" style="text-align: center;">
                        <button class="btn">Submit</button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</section>
<script>
    var msg ='{{Session::get('alert')}}';
    var exist ='{{Session::has('alert')}}';
    if(exist){
        alert(msg);
    }
</script>
@endsection
