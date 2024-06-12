<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('personas', function (Blueprint $table) {
            $table->bigIncrements('nPerCodigo');
            $table->char('cPerApellido', 50);
            $table->char('cPerNombre', 50);
            $table->string('cPerDireccion', 100);
            $table->date('dPerFecNac');
            $table->integer('nPerEdad');
            $table->decimal('nPerSueldo', 6, 2);
            $table->string('cPerRnd', 50);
            $table->char('cPerEstado', 1);
            $table->string('remember_token', 100)->nullable();
            $table->timestamps();
        });

        Schema::table('personas', function (Blueprint $table) {
            $table->char('cPerSexo', 15)->nullable()->default('Masculino')->after('nPerEdad');
        });

    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('personas', function (Blueprint $table) {
            $table->dropColumn('cPerSexo');
        });
    }
};
