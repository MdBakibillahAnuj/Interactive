<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use DB;
use Faker\Factory as FakeData;
use Illuminate\Support\Str;


class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker =FakeData::create();

        for ($i=10; $i < 100; $i++){
            DB::table('products')->insert([
                'name'=> $faker->name,
                'quantity'=>$faker->randomDigit(),
                'price'=>$faker->randomDigit()
        ]);
        }


    }
}
