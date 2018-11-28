User.create(name: "Martine", email: "palomamouhali@gmail.com", password: "123456", password_confirmation: "123456", admin: true)

Category.create(name: "Smart cat",description: "These cats can open doors, sometimes even read.")
Category.create(name: "Cuddly cat",description: "These cats are very affectionate, but as a result they are jealous so watch out for turds under the pillow..")
Category.create(name: "Demonic cat",description: "At your own risk and peril.")


j = 1
6.times do
i = Item.new
i.name = Faker::Cat.name
i.price = Faker::Number.number(3)
i.image = "cat" + j.to_s + ".jpg"
i.description = "I'm a cat, so I meow all the time, and I shit on your sheets when I'm not happy."
i.category = Category.find(Faker::Number.between(1,3))
i.save
j += 1
end