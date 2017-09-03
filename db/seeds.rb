# User.destroy_all
# Post.destroy_all
# Teacher.destroy_all
# Lesson.destroy_all
# Location.destroy_all
# Genre.destroy_all


u1 = User.create!(firstname:"Rachel", lastname:"Smith", description:"Lets get fit!", image:"http://www.nab.org/documents/newsroom/photos/052114_Smith_Rachel_hi.jpg", admin:"admin", email:"rachel.smith@ga.co")
u2 = User.create!(firstname:"Jane", lastname:"Doe", description:"I like to run", image:"http://photo.elcinema.com.s3.amazonaws.com/uploads/_320x_707150111ebc6dfe8773bffab87c1db84e7dcbdfce7d0290af56570f3a709595.jpg", admin:"client", email:"jane.doe@ga.co")
u3 = User.create!(firstname: "Joe", lastname: "Bloggs", description: "I like sport", image: "http://www.helenokey.com/uploads/5/6/8/7/5687390/8943989_orig.jpg", admin: "client", email: "joe.bloggs@ga.co")

t1 = Teacher.create!(name: "Mike Stone", description: "I've been a fitness coach for 6 years and love to get my clients motivated. My aim is to help people to achieve their goals, by sharing my knowledge of exercise to my students so they understand all about the health benefits of doing regular exercise and have a whole lot of fun at the same time.", image: "https://www.thetrainingroom.com/TheTrainingRoom/media/Testimonials/health-and-fitness-personal-trainer-david-bosley.jpg?ext=.jpg")

t2 = Teacher.create!(name: "Jessica Trip", description: "I have a particular interest in obesity and weight management and understand the challenges that people are faced with when trying to lose weight. I work with both groups of people and individuals and believe that long-term successful weight loss requires long-term behaviour changes both in diet and lifestyle.", image: "http://www.yourpersonaltraininguk.co.uk/sites/default/files/Susanna%20Karpati%20Sized%203%20PS.jpg")


t3 = Teacher.create!(name: "Petra Ori", description: "I have 4 years experience teaching and attending Jumping classes, as well as being a qualified and experienced aerobic and acrobatic instructor. I incorporate all my different experience into the fitness classes that I teach to make them more fun, more interesting and more challenging!", image: "https://pbs.twimg.com/profile_images/528175874525249537/hBJUecM4.jpeg" )


g1 = Genre.create!(name: "Jumping Fitness", description:"Jumping Fitness is a dynamic fitness training system, conducted on specially developed trampolines. The basis of Jumping is a combination off ast and slow jumps, variations of traditional aerobic steps, dynamic sprints and power sports elements.", image: "https://i.ytimg.com/vi/eNSLkC_M7kQ/maxresdefault.jpg")

g2 = Genre.create!(name: "Beginners Yoga", description: "Yoga is an ancient form of exercise that focuses on strength, flexibility and breathing to boost physical and mental wellbeing.This class is designed for anyone who wants to try yoga for the first time or wants to get back into it after a break", image: "http://i.huffpost.com/gen/1427186/images/o-WOMEN-YOGA-CLASS-facebook.jpg")

g3 = Genre.create!(name: "Jazzercize", description: "Jazzercise is a pulse-pounding, beat-pumping fitness program that gets you results fast. It’s a calorie-torching, hip swiveling dance party with a hot playlist to distract you from the burn.", image: "https://sfvmedia.com/wp-content/uploads/2015/06/jazzercise-10-jazzercise-classes-for-39-2214182-regular.jpg")

l1 = Location.create!(name: "Shoreditch studio", address: "Holy Trinity, Church Hall, 3 Bletchley Street, N1 7QG", lat: 51.5309, long:0.0916)

l2 = Location.create!(name: "Southwark Studio", address: "St. Peter & The Guardian Angels Church, Church Hall, 72 Paradise Street, SE16 4QD", lat:51.4998, long:0.0586 )

# Post.create!(body: "", lesson_id: "", teacher_id: "", user_id: "" )

Lesson.create!(genre:g3, teacher:t1, location:l1, user_ids:[u1.id, u2.id])
Lesson.create!(genre:g2, teacher:t3, location:l2, user_ids:[u1.id, u3.id])
Lesson.create!(genre:g1, teacher:t2, location:l1, user_ids:[u1.id, u2.id, u3.id])
