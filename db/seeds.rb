9.times do |i|
  Recipe.create(
    name: "Recipe #{i + 1}",
    ingredients: Faker::Lorem.sentence(word_count: 20),
    instruction: Faker::Lorem.sentence(word_count: 25)
  )
end
