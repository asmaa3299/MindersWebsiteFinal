@extends('layouts.panalnav')

<div class="container-fluid" style="height: 100%;background-color:steelblue;">
    <div class="row justify-content-center" >
        <div class="my-5 col-10 text-center">
            <table class="my-5 table table-dark">
                <thead>
                    <tr class="text-center">
                        <th scope="col">ID</th>
                        <th scope="col">NAME</th>
                        <th scope="col">EMAIL</th>
                        <th scope="col">MESSAGE</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($contacts as $contact)
                    <tr class="text-center">
                        <th class="align-middle" scope="row">{{$contact->id}}</th>
                        <td class="align-middle">{{$contact->name}}</td>
                        <td class="align-middle">{{$contact->email}}</td>
                        <td class="align-middle">{{$contact->message}}</td>
                    </tr>
                    @endforeach

                </tbody>
            </table>
        </div>
    </div>
</div>

