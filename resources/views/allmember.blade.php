@include('layouts.nav')
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/all.css" rel="stylesheet">
<script src="js/all.js"></script>
<link rel="stylesheet" href="css/aos.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="Font/font.css">

<link rel="stylesheet" href="/css/allmembers.css">
<div class="container-fluid">
    <div class="row" style="background:black;">
        <div class="my-5 col-12 head-img">
            <center><img src="img/Mug_Typography.png" alt="" srcset="" width=""></center>
        </div>
    </div>
</div>
<!-- Cards -->
<div class="container-fluid cards-section" id="allmember">
    <div class="row justify-content-around about-head" style="padding-top: 50px;">
        <div class="col-12 col-md-4">
            <h2 style="text-align: center;color:#3B3B3B;">MINDERS`20 CREW</h2>
        </div>
    </div>
    <div class="row eventlinerow justify-content-center">
        <div class="col-4 linecol">
            <div class="line" style="height: 1px;background-color: rgb(255, 190, 37);"></div>
        </div>
    </div>
    <div class="row justify-content-around about-head">
        <div class="col-12 col-md-4 text-center">
            <p>Take a Look at Our Creative Team</p>
        </div>
    </div>
</div>
<div class="container-fluid">
    <div class="row text-center">
        <div class="col-12">
            <div id="myBtnContainer">
                <button class="btn btnactive" onclick="filterSelection('HB')"> HB</button>
                <button class="btn" onclick="filterSelection('PR')"> PR</button>
                <button class="btn" onclick="filterSelection('IT')"> IT</button>
                <button class="btn" onclick="filterSelection('HR')"> HR</button>
                <button class="btn" onclick="filterSelection('QM')"> QM</button>
                <button class="btn" onclick="filterSelection('FR')"> FR</button>
                <button class="btn" onclick="filterSelection('GD')"> GD</button>
                <button class="btn" onclick="filterSelection('SM')"> SM</button>
                <button class="btn" onclick="filterSelection('AC')"> AC</button>
                <button class="btn" onclick="filterSelection('OC')"> OC</button>
                <button class="btn" onclick="filterSelection('PV')"> P&V</button>
                <button class="btn" onclick="filterSelection('Magazine')"> Magazine</button>
                
            </div>
        </div>
    </div>
</div>
<!-- Portfolio Gallery Grid -->
<div class="container">
    <div class="row" id="allmembercards">
        @foreach($members as $member)
        <div class="{{'column col-lg-3 col-md-5'.' '.$member->postion}}">
            <div class="card" data-aos="fade-up" data-aos-duration="1000">
                <img src="{{asset('/images/members/'.$member->image)}}" class="card-img-top" alt="..." height="150" width="100%">
                <p class="text-center mt-2" style="color:#f1c40f; margin-bottom: 0; font-size: 19px;">{{$member->jobTitle}}</p>
                <h5 class="text-center mt-2">{{$member->name}}</h5>
            </div>
        </div>
        @endforeach

        <!-- END GRID -->
    </div>

</div>


@include('layouts.footer')


<script src="/js/allmembrs.js"></script>
<script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v5.0"></script>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/aos.js"></script>
<script>
    AOS.init({

    });

</script>
