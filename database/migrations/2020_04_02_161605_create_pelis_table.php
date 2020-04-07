<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePelisTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pelis', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('nombre', 100)->nullable()->default('text');
            $table->string('desc', 300)->nullable()->default('text');
            $table->string('link', 100)->nullable()->default('text');
            $table->string('ph', 100)->nullable()->default('text');
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
        Schema::dropIfExists('pelis');
    }
}
