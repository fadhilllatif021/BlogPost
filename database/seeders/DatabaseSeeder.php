<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;

use App\Models\User;
use App\Models\Category;
use App\Models\Post;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {

        // User::create([
        //     'name' => 'Muh Fadhil Latif',
        //     'username' => 'muhammadfadhillatif',
        //     'email' => 'muhammadfadhillatif17@gmail.com',
        //     'password' => bcrypt('12345'),
        // ]);


        // User::factory(5)->create();

        // Category::create([
        //     'name' => 'Creativity',
        //     'slug' => 'creativity',
        // ]);

        // Category::create([
        //     'name' => 'Personal',
        //     'slug' => 'personal',
        // ]);

        // Category::create([
        //     'name' => 'Career Development',
        //     'slug' => 'career-development',
        // ]);

        // Category::create([
        //     'name' => 'Programming',
        //     'slug' => 'programming',
        // ]);

        Post::factory(20)->create();

        // Post::create([
        //     'title' => 'Judul Post Pertama',
        //     'slug' => 'judul-post-pertama',
        //     'excerpt' => 'orem ipsum dolor sit amet consectetur adipisicing elit. Consectetur aut tempore perspiciatis doloribus quos a aperiam quas',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Consectetur aut tempore perspiciatis doloribus quos a aperiam quas, dignissimos quis? Iusto asperiores nisi saepe incidunt libero cum assumenda architecto excepturi consequuntur?
        //     Nihil exercitationem temporibus dignissimos, esse recusandae quae eveniet, tempore consectetur blanditiis assumenda voluptas facere ut iusto, magni quibusdam? Mollitia cum voluptatum odit cupiditate molestias ex quod cumque veritatis libero eum.
        //     A itaque deleniti alias esse, perspiciatis ipsam molestias inventore voluptatum corporis eum consectetur nulla similique culpa rerum. Cumque voluptas unde rerum quae ullam aliquid distinctio dignissimos, nobis esse? Maxime, natus?
        //     Provident nostrum ipsam amet ipsa cum possimus porro nemo, assumenda qui veritatis sapiente! Vero assumenda deserunt voluptate, quisquam cum maiores dignissimos voluptas quasi! Hic, sed nobis. Ratione, libero! Laboriosam, odio.
        //     Dolorum vitae quam reprehenderit! Necessitatibus est et ducimus nesciunt ab aliquid repellat doloremque non quisquam ex. Nulla eligendi voluptates quis, molestias ipsam sunt quaerat, dicta, doloribus sit in explicabo sapiente?
        //     Sequi corrupti asperiores ut distinctio deserunt vero magnam dolore enim porro, natus debitis fugit provident velit alias, accusantium, cum saepe quibusdam excepturi doloremque. Sed voluptatibus similique laudantium animi alias veritatis!',
        //     'category_id' => 4,
        //     'user_id' => 2,
        // ]);

        // Post::create([
        //     'title' => 'Judul Post Kedua',
        //     'slug' => 'judul-post-kedua',
        //     'excerpt' => 'orem ipsum dolor sit amet consectetur adipisicing elit. Consectetur aut tempore perspiciatis doloribus quos a aperiam quas',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Consectetur aut tempore perspiciatis doloribus quos a aperiam quas, dignissimos quis? Iusto asperiores nisi saepe incidunt libero cum assumenda architecto excepturi consequuntur?
        //     Nihil exercitationem temporibus dignissimos, esse recusandae quae eveniet, tempore consectetur blanditiis assumenda voluptas facere ut iusto, magni quibusdam? Mollitia cum voluptatum odit cupiditate molestias ex quod cumque veritatis libero eum.
        //     A itaque deleniti alias esse, perspiciatis ipsam molestias inventore voluptatum corporis eum consectetur nulla similique culpa rerum. Cumque voluptas unde rerum quae ullam aliquid distinctio dignissimos, nobis esse? Maxime, natus?
        //     Provident nostrum ipsam amet ipsa cum possimus porro nemo, assumenda qui veritatis sapiente! Vero assumenda deserunt voluptate, quisquam cum maiores dignissimos voluptas quasi! Hic, sed nobis. Ratione, libero! Laboriosam, odio.
        //     Dolorum vitae quam reprehenderit! Necessitatibus est et ducimus nesciunt ab aliquid repellat doloremque non quisquam ex. Nulla eligendi voluptates quis, molestias ipsam sunt quaerat, dicta, doloribus sit in explicabo sapiente?
        //     Sequi corrupti asperiores ut distinctio deserunt vero magnam dolore enim porro, natus debitis fugit provident velit alias, accusantium, cum saepe quibusdam excepturi doloremque. Sed voluptatibus similique laudantium animi alias veritatis!',
        //     'category_id' => 3,
        //     'user_id' => 1,
        // ]);
    }
}
