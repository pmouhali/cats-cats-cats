j = 1
6.times do
i = Item.new
i.name = Faker::Cat.name
i.price = Faker::Number.number(3)
i.image = "cat" + j.to_s + ".jpg"
i.save
j += 1
end