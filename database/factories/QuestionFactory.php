<?php

namespace Database\Factories;

use App\Models\Question;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

class QuestionFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Question::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function difficulty(){
        $difficulties = ['basic', 'intermediate', 'advanced'];
       return $difficulties[array_rand($difficulties)];
    }
    public function levels(){
        $levels =['Form 1', 'Form 2', 'Form 3', 'Form 4'];
       return  $levels [array_rand($levels)];
    }
    public function definition()
    {
        
        
        return [
            'question' => $this->faker->sentence,
            'difficulty' => $this->difficulty(),
            'level' => $this->levels(),
            'user_id' => mt_rand(0, 50), // password
            
        ];
    }
}
