<?php

namespace App\Http\Controllers;
use App\Event;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;

class EventController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth')->except(['showallevent','showeventdetails']);
    }

    public function showallevent()
    {
        $events=Event::all();
        return view('/allevent',compact('events'));
    }
    public function show()
    {
        return view('events.addevent');
    }
    public function add(Request $request){
        $request->validate([
            'name'=>'required',
            'place'=>'required',
            'cover'=>'image|mimes:jpg,png,jpeg|max:1999',
            'time'=>'required',
            'state'=>'required'
        ]);
        if($request->hasFile('cover')){
            $file=$request->file('cover');
            $ext=$file->getClientOriginalExtension();
            $eventname = 'event_'.$request->name.'.'.$ext;
            $destinationPath = public_path('/images/events');
            $file->move($destinationPath, $eventname);
        }
        if ($request->has('speakerimage'))
            {
                $speakerimages = [];
                $i=0;
                foreach ($request->file('speakerimage') as $key => $file)
                {
                    $i++;
                    $ext=$file->getClientOriginalExtension();
                    $name = $request->name.'_speaker'.$i.'.'.$ext;
                    $destinationPath = public_path('/images/events/speakers/');
                    $file->move($destinationPath, $name);

                    if ($name)
                        array_push($speakerimages, $name);
                }

            }
        $event=new Event();
        $event->name=$request->name;
        $event->place=$request->place;
        $event->cover=$eventname;
        $event->speakers=$request->speakers;
        if ($request->has('speakerimage')){
        $event->speakerimage=$speakerimages;}
        $event->agenda=$request->agenda;
        $event->time=$request->time;
        $event->state=$request->state;
        $event->description=$request->description;
        $event->formlink=$request->formlink;
        $event->save();

        return redirect('/events/index.blade.php');
    }
    public function allevent()
    {
        $events=Event::all();
        return view('events.index',compact('events'));
    }

    public function edit($id)
    {
        $event=Event::find($id);
        return view('events.edit',compact('event'));
    }

    public function showeventdetails($id)
    {
        $event=Event::find($id);
        return view('/showevent',compact('event'));
    }
    public function update(Request $request, $id)
    {
        $request->validate([
            'name'=>'required',
            'place'=>'required',
            'time'=>'required',
            'state'=>'required'
        ]);
        $event =Event::find($id);
        $event->name=$request->name;
        $event->place=$request->place;
        $event->time=$request->time;
        $event->state=$request->state;
        $event->agenda=$request->agenda;
        $event->description=$request->description;
        $event->formlink=$request->formlink;
        $event->save();
        return redirect('/events/index.blade.php');
    }

    public function destroy($id)
    {
        $event =Event::find($id);
        unlink(public_path('images/events/'.$event->cover));
        $i=0;
        if($event->speakerimage[$i]!=null){
        unlink(public_path('images/events/speakers/'.$event->speakerimage[$i]));
        $i=$i+1;
        }
        $event->delete();
        return redirect('/events/index.blade.php');
    }


}
