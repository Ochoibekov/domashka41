# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
fixtures_path = Rails.root.join('app', 'assets', 'images', 'fixtures')
user =User.create(avatar:File.new(fixtures_path.join('1.jpg')), name: "Master",email: "admin@example.com",password:'123456',password_confirmation:'123456')
number=1
15.times do
	password = 'password'
	image=Faker::Avatar.image
	name = Faker::Name.name
	user = User.create(avatar: image, name: name, email: "ruby#{number}@mail.ru", password: password, password_confirmation: password)
	number+=1
end
40.times do
	image=Faker::Avatar.image
	post = Post.create(image: image ,description: Faker::Lorem.paragraph(2, false, 4), user_id: rand(1..16))
end
