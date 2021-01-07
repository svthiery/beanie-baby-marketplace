# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Baby.destroy_all
User.destroy_all

Baby.create(name: "Squealer the Pig", release_year: 1994, poem: "Squealer likes to joke around\nHe is known as class clown
Listen to his stories awhile
There is no doubt he’ll make you smile!", img_url: "https://beaniepedia.com/beanies/files/2012/10/41TP0C93AYL._SL500_AA300_.jpg", species: "Pig", msrp: 7)

Baby.create(name: "Claude the Crab", release_year: 1997, poem: "Claude the crab paints by the sea
A famous artist he hopes to be
But the tide came in and his paints fell
Now his art is on his shell!", img_url: "https://beaniepedia.com/beanies/files/2015/10/claude-1.jpg", species: "Crab", msrp: 7)

Baby.create(name: "Blackie the Bear", release_year: 1994, poem: "Living in a national park
He only played after dark
Then he met his friend Cubbie
Now they play when it’ sunny!", img_url: "https://beaniepedia.com/beanies/files/2012/11/blackie.jpg", species: "Bear", msrp: 7)

Baby.create(name: "Curly the Bear", release_year: 1996, poem: "A bear so cute with hair that’s Curly
you will love and want him surely
To this bear always be true
He will be a friend to you!", img_url: "https://beaniepedia.com/beanies/files/2015/10/curly-1.jpg", species: "Bear", msrp: 7)

Baby.create(name: "Patti the Platypus", release_year: 1998, poem: "Ran into Patti one day while walking
Believe me she wouldn’t stop talking
Listened and listened to her speak
That would explain her extra large beak!", img_url: "https://beaniepedia.com/beanies/files/2012/10/patti.jpg", species: "Platypus", msrp: 7)

Baby.create(name: "Princess the Bear", release_year: 1998, poem: "Like an angel, she came
from heaven above
She shared her compassion,
her pain, her love
She only stayed with us long
enough to teach
The world to share,
to give, to reach", img_url: "https://beaniepedia.com/beanies/files/2012/10/51Ns1n0KRSL._SL500_AA300_.jpg", species: "Bear", msrp: 7)

Baby.create(name: "Amber the Cat", release_year: 1998, poem: "Sleeping all day and up all night
Waiting to pounce and give you a fright
She means no harm, just playing a game
She’s very loveable and quite tame!", img_url: "https://beaniepedia.com/beanies/files/2012/10/31vAF71lUDL._SL500_AA300_.jpg", species: "Cat", msrp: 7)

Baby.create(name: "Early the Robin", release_year: 1998, poem: "Early is a red breasted robin
For a worm he’ll soon be bobbin’
Always known as a sign of spring
This happy robin loves to sing!", img_url: "https://beaniepedia.com/beanies/files/2015/12/early-1.jpg", species: "Bird", msrp: 7)

Baby.create(name: "Flash the Dolphin", release_year: 1994, poem: "You know dolphins are a smart breed
Our friend Flash knows how to read
Splash the whale is the one who taught her
Although reading is difficult under the water!", img_url: "https://beaniepedia.com/beanies/files/2012/10/flash.jpg", species: "Dolphin", msrp: 7)

Baby.create(name: "Bronty the Brontosaurus", release_year: 1995, poem: "Bronty is made from a blue tie-dyed material with black button eyes. He stands in an upright position on his four legs.", img_url: "https://beaniepedia.com/beanies/files/2012/11/brontydinosaur-1.jpg", species: "Dinosaur", msrp: 7)

Baby.create(name: "Nana the Monkey", release_year: 1995, poem: "Nana is a medium brown colour with a lighter brown face, hands, feet and tail and has black button eyes.", img_url: "https://beaniepedia.com/beanies/files/2019/01/nana.jpg", species: "Monkey", msrp: 7)

Baby.create(name: "Magic the Dragon", release_year: 1995, poem: "Magic the dragon lives in a dream
The most beautiful that you have ever seen
Through magic lands she likes to fly
Look up and watch her, way up high!", img_url: "https://beaniepedia.com/beanies/files/2020/01/magic.jpg", species: "Dragon", msrp: 7)

Baby.create(name: "Humphrey the Camel", release_year: 1995, poem: "Humphrey is made from tan-brown coloured material and has black button eyes and black stitching for his nostrils. His back forms into one hump and he has dangly legs and a tiny tail.", img_url: "https://beaniepedia.com/beanies/files/2019/01/humphrey.jpg", species: "Camel", msrp: 6)


Baby.create(name: 'Daisy the Cow', release_year: 1994, poem: 'Daisy drinks milk each night
So her coat is shiny and bright
Milk is good for your hair and skin
What a way for your day to begin!', img_url: 'https://beaniepedia.com/beanies/files/2015/10/daisy-1.jpg')

Baby.create(name: 'Quivers the Ghost Bear', release_year: 2002, poem: 'Some people get the shakes and shivers
When they see a ghost named Quivers
But he’s not here to scare anyone
He wants to have some Halloween fun!', img_url: 'https://beaniepedia.com/beanies/files/2015/10/quivers-1.jpg')

10.times do 
    User.create(name:Faker::Name.name, age: rand(30),location: Faker::Address.city, user_name: Faker::Creature::Dog.name, password: "abc123")
    end

    # User.create(name: 'Not logged in')


puts "Seeding Complete"