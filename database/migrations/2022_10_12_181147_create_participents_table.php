<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateParticipentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('participents', function (Blueprint $table) {
            $table->increments('id');
            $table->bigInteger('batch_id');
            $table->bigInteger('cat_id');
            $table->string('pay');
            $table->string('name');
            $table->string('g_name');
            $table->string('email')->unique();
            $table->string('mobile');
            $table->string('fb_link')->nullable();
            $table->string('address');
            $table->string('thana');
            $table->bigInteger('district_id');
            $table->bigInteger('division_id')->nullable();
            $table->bigInteger('blood_id')->nullable();
            $table->bigInteger('dress_cat_id');
            $table->bigInteger('size_id')->nullable();
            $table->mediumText('photo');
            $table->string('organization')->nullable();
            $table->string('designation')->nullable();
            $table->string('org_address')->nullable();
            $table->string('status');
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
        Schema::dropIfExists('participents');
    }
}
