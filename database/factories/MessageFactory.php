<?php

namespace Database\Factories;

use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Message>
 */
class MessageFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $user_count = User::all()->count();

        return [
            'user_id' => $this->faker->numberBetween(1, $user_count),
            'text' => $this->faker->text(100),
            'created_at' => $this->faker->dateTimeBetween('-1 month', 'now'),
        ];
    }
}
