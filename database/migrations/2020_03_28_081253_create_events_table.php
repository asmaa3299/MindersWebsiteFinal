<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEventsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('events', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('cover');
            $table->date('time');
            $table->string('state');
            $table->string('place');
            $table->json('speakers')->nullable();
            $table->json('speakerimage')->nullable();
            $table->string('description' , "6000")->nullable();
            $table->string('formlink')->nullable();
            $table->json('agenda')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('events');
    }
}
