Category.create(name: "Chat Intelligent",description: "Ces chats savent ouvrir les portes, parfois même lire.")
Category.create(name: "Chat Calin",description: "Ces chats sont très affectueux, mais ducou ils sont jaloux donc attention aux étrons sous l'oreiller.")
Category.create(name: "Chat Démoniaque",description: "A vos risques et périls")

j = 1
6.times do
i = Item.new
i.name = Faker::Cat.name
i.price = Faker::Number.number(3)
i.image = "cat" + j.to_s + ".jpg"
i.description = "Je suis un chat, donc je miaule tout le temps, et je chie sur tes draps quand je suis pas content."
i.category = Category.find(Faker::Number.between(1,3))
i.save
j += 1
end