<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        //Eloquent::unguard();

        $path = 'C:\Users\Lenovo\Desktop\laravel intern\another reunion\reunion\database\seeders\reunion.sql';
        DB::unprepared(file_get_contents($path));
        $this->command->info('Database seeded');
        // \App\Models\User::factory(10)->create();
    }
}
