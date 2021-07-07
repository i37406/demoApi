<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        \App\Models\User::factory(5)->create();
        //Seeds for our demoApi models
        \App\Models\Product::factory(50)->create();
        \App\Models\Review::factory(300)->create();
    }
}
