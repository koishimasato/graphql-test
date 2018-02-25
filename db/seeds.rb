# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.find_or_create_by!(name: 'kaiji', email: 'kaiji@gmail.com')
user2 = User.find_or_create_by!(name: 'akagi', email: 'akagi@gmail.com')

Post.find_or_create_by!(user_id: user1.id,  subject: 'とても正気の沙汰とは思えない')
Post.find_or_create_by!(user_id: user2.id, subject: '倍プッシュだ')

