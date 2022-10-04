<?php

namespace Database\Factories;

use App\Models\Sites;
use Illuminate\Database\Eloquent\Factories\Factory;

class SitesFactory extends Factory
{
    /**
     * the name of the factory's in model.
     *
     * @var string
     */
    protected $model=Sites::class;
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'title' => $this->faker->title(),
            'photo' => $this->faker->photo(),
        ];
    }

    /**
     * Indicate that the model's email address should be unverified.
     *
     * @return \Illuminate\Database\Eloquent\Factories\Factory
     */
    public function unverified()
    {
        return $this->state(function (array $attributes) {
            return [
                'email_verified_at' => null,
            ];
        });
    }
}
