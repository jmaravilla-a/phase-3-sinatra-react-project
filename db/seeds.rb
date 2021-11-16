puts "🌱 Seeding spices..."

# Destroying all data before reseeding each time. 
PersonalTrainer.destroy_all
Routine.destroy_all
Exercise.destroy_all


# Creating Personal Trainer
PersonalTrainer.create(
    name: "Jonathan C.", 
    gender: "Male"
)

# Creating Routines
Routine.create(
    routine_name: "Best Leg Day Routine", 
    muscle_group: "Lower Body: Glutes, Quadriceps, Hamstrings, and Calves", 
    personal_trainer_id: PersonalTrainer.first.id
)

# Creating Exercises
Exercise.create(
    name: "Barbell Squat",
    instructions: "4 sets of 6-10 reps, lighten the load after the first 2 sets",
    personal_trainer_id: PersonalTrainer.first.id,
    routine_id: Routine.first.id
)

Exercise.create(
    name: "Leg Press",
    instructions: "4 sets of 8-10 reps",
    personal_trainer_id: PersonalTrainer.first.id,
    routine_id: Routine.first.id
)


puts "✅ Done seeding!"
