# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data ca then be loaded with the bin/rails db:seed command (or create!d alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create!_by!(name: genre_name)
#   end

User.destroy_all
Activity.destroy_all
Booking.destroy_all
Review.destroy_all

CATEGORY = ["Tennis", "Crossfit", "Opera", "Restaurant", "Brunch", "Waltz", "Museum", "River", "Shopping", "Sightseeing", "Conference", "Aquarium", "Zoo", "Cycling", "Drinks", "Clubbing", "Yoga", "Wellness", "Nails", "Hair"]

sarah = User.create!(first_name: 'Sarah', last_name: 'Maffre', age: 32, job: 'Full-stack developer', address: '12 rue des renardeaux 75011 paris', phone_number: '061245654348', biography: "I am just a crazy coder!", latitude: '48.86481', longitude: '2.38762', preferred_category: CATEGORY[0], email: 'sarah@circle.com', password: 'password1')
sarah_photo = URI.open("https://images.pexels.com/photos/7275385/pexels-photo-7275385.jpeg?auto=compress&cs=tinysrgb&h=204&fit=crop&w=228&dpr=2")
sarah.photo.attach(io: sarah_photo, filename: "sarah.png", content_type: "image/png")
kaouthar = User.create!(first_name: 'Kaouthar', last_name: 'Elherch', age: 25, job: 'Electromechanical engineer', address: '45 avenue du chateau 78000 versailles', phone_number: '0612486323', biography: "Love going to the gym!", latitude: '48.80528', longitude: '2.12227', preferred_category: CATEGORY[1], email: 'kaouthar@circle.com', password: 'password2')
kaouthar_photo = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1696669146/c5q2t4mbhrmvc03esl5l.jpg")
kaouthar.photo.attach(io: kaouthar_photo, filename: "kaouthar.png", content_type: "image/png")
johanna = User.create!(first_name: 'Johanna', last_name: 'Johnson', age: 42, job: 'Marketing director', address: '30 zedlitzgasse 1010 wien', phone_number: '0612486323', biography: "Love opera and museums!", latitude: '48.20681', longitude: '16.37935', preferred_category: CATEGORY[2], email: 'johanna@circle.com', password: 'password3')
johanna_photo = URI.open("https://images.pexels.com/photos/8993561/pexels-photo-8993561.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=252&fit=crop&h=408")
johanna.photo.attach(io: johanna_photo, filename: "johanna.png", content_type: "image/png")
claire = User.create!(first_name: 'Claire', last_name: 'Kurz', age: 62, job: 'Instagram influencer', address: 'rotgasse 10, 1010 Wien, Austria', phone_number: '0612486323', biography: "I am addicted to my own city. One day, I will write a book on it.", latitude: '48.21103', longitude: '16.37473', preferred_category: CATEGORY[2], email: 'claire@circle.com', password: 'password4')
claire_photo = URI.open("https://images.pexels.com/photos/5682847/pexels-photo-5682847.jpeg?auto=compress&cs=tinysrgb&w=800")
claire.photo.attach(io: claire_photo, filename: "claire.png", content_type: "image/png")
petra = User.create!(first_name: 'Petra', last_name: 'De la casca', age: 36, job: 'Social media expert', address: 'Habsburgergasse 7, 1010 Wien, Austria', phone_number: '0612486323', biography: "Was born and raised in this very special city. Happy to help you discover some secret places!", latitude: '48.20809', longitude: '16.36825', preferred_category: CATEGORY[2], email: 'petra@circle.com', password: 'password5')
petra_photo = URI.open("https://images.pexels.com/photos/4946515/pexels-photo-4946515.jpeg?auto=compress&cs=tinysrgb&w=800")
petra.photo.attach(io: petra_photo, filename: "petra.png", content_type: "image/png")
svetlana = User.create!(first_name: 'Svetlana', last_name: 'Rodot', age: 38, job: 'Singer', address: 'Schubertring 13, 1010 Wien, Austria', phone_number: '0612486323', biography: "New in this town, I would like to make new friends and share about common interests", latitude: '48.20206', longitude: '16.37481', preferred_category: CATEGORY[2], email: 'svetlana@circle.com', password: 'password6')
svetlana_photo = URI.open("https://images.pexels.com/photos/4420634/pexels-photo-4420634.jpeg?auto=compress&cs=tinysrgb&w=800")
svetlana.photo.attach(io: svetlana_photo, filename: "svetlana.png", content_type: "image/png")
lucy = User.create!(first_name: 'Lucy', last_name: 'Parks', age: 31, job: 'Designer', address: 'Neulinggasse 6, 1030 Wien, Austria', phone_number: '0612486342', biography: "Born in the US, move to Vienna 10 years ago for my studies and stay there because I love the City!", latitude: '52.473730', longitude: '16.393000', preferred_category: CATEGORY[2], email: 'lucy@circle.com', password: 'password7')
lucy_photo = URI.open("https://images.pexels.com/photos/15685407/pexels-photo-15685407/free-photo-of-side-view-of-a-young-woman-with-blonde-hair-wearing-a-black-off-shoulder-top.jpeg?auto=compress&cs=tinysrgb&w=800")
lucy.photo.attach(io: lucy_photo, filename: "lucy.png", content_type: "image/png")
marta = User.create!(first_name: 'Marta', last_name: 'Reach', age: 35, job: 'Cook', address: 'Lange G. 20-22, 1080 Wien, Austria', phone_number: '0612486318', biography: "Always loved to cook! I started when I was 7 and never stopped. Looking forward to share my passion with other food lovers", latitude: '48.2085842', longitude: '48.2085842', preferred_category: CATEGORY[2], email: 'marta@circle.com', password: 'password8')
marta_photo = URI.open("https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=800")
marta.photo.attach(io: marta_photo, filename: "marta.png", content_type: "image/png")
jennifer = User.create!(first_name: 'Jennifer', last_name: 'Black', age: 35, job: 'Nurse', address: 'Schlossgasse 10-12, 1050 Wien, Austria', phone_number: '0612486322', biography: "Working at the Central Hospital since 5 years and loving it. Love concerts and opera.", latitude: '48.190596', longitude: '48.190596', preferred_category: CATEGORY[2], email: 'Jennifer@circle.com', password: 'password9')
jennifer_photo = URI.open("https://images.pexels.com/photos/1987301/pexels-photo-1987301.jpeg?auto=compress&cs=tinysrgb&w=800")
jennifer.photo.attach(io: jennifer_photo, filename: "jennifer.png", content_type: "image/png")
sandra = User.create!(first_name: 'Sandra', last_name: 'Patel', age: 33, job: 'Economist', address: 'Am Heumarkt 3, 1030 Wien, Austria', phone_number: '0612486326', biography: "I am a teaching assistant at the university in Vienna. Always happy to go for a drink or a nice restaurant. Opera fan too!", latitude: '48.2032147', longitude: '16.3821122', preferred_category: CATEGORY[2], email: 'sandra@circle.com', password: 'password10')
sandra_photo = URI.open("https://images.pexels.com/photos/1239288/pexels-photo-1239288.jpeg?auto=compress&cs=tinysrgb&w=800")
sandra.photo.attach(io: sandra_photo, filename: "sandra.png", content_type: "image/png")

tennis1 = Activity.create!(name: 'Tennis Club du Tourniquet', category: CATEGORY[0], description: 'Come to take advantage of our magnificent sport equipments as well as our prime location next to Annecy lake', price: 40, address: '40 Rue de Verdun 74940 Annecy-le-Vieux', latitude: '45.91032', longitude: '6.15853')
tennis1_photo = URI.open("https://time.com/shopping/static/acf0d86662eed64a9e6c17d3429f0bca/57e17/best-tennis-rackets.jpg")
tennis1.photo.attach(io: tennis1_photo, filename: "tennis1.png", content_type: "image/png")
tennis2 = Activity.create!(name: 'Oswald Tennis Club', category: CATEGORY[0], description: 'Tremendous sport complex, that benefitted from a modern refresh recently, with now more than 10 courts available', price: 35, address: 'Hauptallee, 1020 Wien, Austria', latitude: '48.19552', longitude: '16.43879')
tennis2_photo = URI.open("https://files.eversports.com/a5e19f2a-3dd9-4007-87f6-3271077e557a/tennis_treff_oswald_at_17669_eversports_6jpg-x-large.webp")
tennis2.photo.attach(io: tennis2_photo, filename: "tennis2.png", content_type: "image/png")
tennis3 = Activity.create!(name: 'Tennis Club de Beziers', category: CATEGORY[0], description: 'Very dynamic tennis club that welcomes the Nestea Cup championship every year, you will be very well taken care of. We have 10 courts, mainly greenset, but also quick and clay', price: 20, address: '15 avenue jean-baptiste blattes 34500 Béziers', latitude: '43.34011', longitude: '3.19099')
tennis3_photo = URI.open("https://www.beziers-mediterranee.com/wp-content/uploads/wpetourisme/Tennis-Club-Biterrois--3-.jpg")
tennis3.photo.attach(io: tennis3_photo, filename: "tennis3.png", content_type: "image/png")
tennis4 = Activity.create!(name: 'Tennis Club de Versailles', category: CATEGORY[0], description: 'Come do sport in our club, we are welcoming you monday - saturday from 9am to 6pm, and after sport, you deserve a little break, we offer you a pastis to hedge your thirst', price: 15, address: '57 Rue Rémont, 78000 Versailles', latitude: '48.79200', longitude: '2.15454')
tennis4_photo = URI.open("https://84de40cca0.clvaw-cdnwnd.com/2816fb981103aa50e4c4b5b65ca32a61/200000018-79d7c79d7e/19cce3b5-6aaa-4c98-a488-2a19cf58ad0a.jpg?ph=84de40cca0")
tennis4.photo.attach(io: tennis4_photo, filename: "tennis4.png", content_type: "image/png")

crossfit1 = Activity.create!(name: 'Gymclub de Versailles', category: CATEGORY[1], description: 'Highly energising gym activity that is gonna make you start the day on the right foot!', price: 10, address: "15 Rue d'Anjou 78000 Versailles", latitude: '48.79739', longitude: '2.12640')
crossfit1_photo = URI.open("https://usercontent.one/wp/www.crossfitlarochelle.com/wp-content/uploads/2022/09/le-crossfit-pour-femme-enceinte-scaled-e1662456440958.jpg")
crossfit1.photo.attach(io: crossfit1_photo, filename: "crossfit1.png", content_type: "image/png")
crossfit2 = Activity.create!(name: 'Mrs.Sporty Club Wien', category: CATEGORY[1], description: 'Very happy that you come on our page! You will find here all the heavy lifting modules ready for training', price: 13, address: "Porzellangasse 33A, 1090 Wien, Austria", latitude: '48.23051', longitude: '16.36943')
crossfit2_photo = URI.open("https://www.mrssporty.at/club/wien-hernals/wp-content/uploads/sites/193/2023/01/pic_club-news_2.png")
crossfit2.photo.attach(io: crossfit2_photo, filename: "crossfit2.png", content_type: "image/png")
crossfit3 = Activity.create!(name: 'Gymclub de Reims', category: CATEGORY[1], description: 'Simply the best club in France! Join us now!', price: 8, address: "8 Allee du Vignoble 51100 Reims", latitude: '49.22154', longitude: '4.01964')
crossfit3_photo = URI.open("https://static.wixstatic.com/media/f6c10c_2e5f22b706144487b2a1b43441962cd4~mv2.jpg/v1/fit/w_320%2Ch_320%2Cal_c%2Cq_80,enc_auto/file.jpg")
crossfit3.photo.attach(io: crossfit3_photo, filename: "crossfit3.png", content_type: "image/png")
crossfit4 = Activity.create!(name: 'Gymclub d Avignon', category: CATEGORY[1], description: "Popes, that was before, now, here, it is THE place to be for heavy lifting!", price: 17, address: "162 Avenue Pierre Semard 84000 Avignon", latitude: '43.92925', longitude: '4.83410')
crossfit4_photo = URI.open("https://datas.onefitnessclub.fr/images/clubs/avignon/One-Fitness-Avignon-011.jpg")
crossfit4.photo.attach(io: crossfit4_photo, filename: "crossfit4.png", content_type: "image/png")

opera1 = Activity.create!(name: 'Volkstheater', category: CATEGORY[2], description: 'Wonderful opera, with one of the best representations of "Swan lake", standing ovation required!', price: 80, address: "Arthur-Schnitzler-Platz 1, 1070 Wien, Austria", latitude: '48.20497', longitude: '16.35741')
opera1_photo = URI.open("https://www.europeantheatre.eu/uploads/organisations/338/Volkstheater-RET-web.jpg")
opera1.photo.attach(io: opera1_photo, filename: "opera1.png", content_type: "image/png")
opera2 = Activity.create!(name: 'Burgtheater', category: CATEGORY[2], description: "Each and every single opera show here is simply to be remembered!", price: 75, address: "Universitätsring 2, 1010 Wien, Austria", latitude: '48.21180', longitude: '16.36283')
opera2_photo = URI.open("https://media.tacdn.com/media/attractions-splice-spp-674x446/0b/2c/f8/de.jpg")
opera2.photo.attach(io: opera2_photo, filename: "opera2.png", content_type: "image/png")
opera3 = Activity.create!(name: 'Theater an der Wien', category: CATEGORY[2], description: 'The famous and unforgettable Theater an der Wien! The most prestigious plays and concerts came here for a show', price: 130, address: "Linke Wienzeile 6, 1060 Wien, Austria", latitude: '48.19930', longitude: '16.36371')
opera3_photo = URI.open("https://www.musicalvienna.at/media/image/16941_120801-18.jpg")
opera3.photo.attach(io: opera3_photo, filename: "opera3.png", content_type: "image/png")
opera4 = Activity.create!(name: 'Vienna State Opera', category: CATEGORY[2], description: 'You can feel all the austrian rigor in this monumental place. Truly stunning!', price: 150, address: "Opernring 2, 1010 Wien, Austria", latitude: '48.20330', longitude: '16.36899')
opera4_photo = URI.open("https://m-festival.biz/en/wp-content/uploads/2023/04/323927622_5694523843997527_6046703828531623519_n.jpeg")
opera4.photo.attach(io: opera4_photo, filename: "opera4.png", content_type: "image/png")

restaurant1 = Activity.create!(name: 'Restaurant', category: CATEGORY[3], description: 'Ranked best restaurant 2 years in a row!', price: 80, address: "Arthur-Schnitzler-Platz 1, 1070 Wien, Austria", latitude: '48.20496', longitude: '16.35742')
restaurant1_photo = URI.open("https://www.yonder.fr/sites/default/files/contenu/destinations/Meierei%20im%20Stadtpark.jpg")
restaurant1.photo.attach(io: restaurant1_photo, filename: "restaurant1.png", content_type: "image/png")

brunch1 = Activity.create!(name: 'Brunch', category: CATEGORY[4], description: 'Fluffy pancakes all around!', price: 80, address: "Arthur-Schnitzler-Platz 1, 1070 Wien, Austria", latitude: '48.20495', longitude: '16.35743')
brunch1_photo = URI.open("https://www.wien.info/resource/image/295200/Hero-Header/1890/700/7e6926138af4cafd167a4289dd3d9759/70075196063A2A9CEE7FA5584285A831/cafe-drechsler-brunch-fruehstueck.webp")
brunch1.photo.attach(io: brunch1_photo, filename: "brunch1.png", content_type: "image/png")

waltz1 = Activity.create!(name: 'Waltz', category: CATEGORY[5], description: 'Prince charming now!', price: 80, address: "Arthur-Schnitzler-Platz 1, 1070 Wien, Austria", latitude: '48.20494', longitude: '16.35746')
waltz1_photo = URI.open("https://static.wixstatic.com/media/8dd9d2_361f3750152246d68d7e28350133acfd~mv2.jpg/v1/fill/w_640,h_360,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/8dd9d2_361f3750152246d68d7e28350133acfd~mv2.jpg")
waltz1.photo.attach(io: waltz1_photo, filename: "waltz1.png", content_type: "image/png")

museum1 = Activity.create!(name: 'Museum', category: CATEGORY[6], description: 'Unique pieces of art, amazing building', price: 80, address: "Arthur-Schnitzler-Platz 1, 1070 Wien, Austria", latitude: '48.20492', longitude: '16.35741')
museum1_photo = URI.open("https://www.wien.info/resource/image/291972/1x1/1000/1000/137d08da14a998bf592dd9613356a361/9DC24EF11D02180BC4206EB3F8489721/50836-naturhistorisches-museum-wien-nhm-dinosaurier.webp")
museum1.photo.attach(io: museum1_photo, filename: "museum1.png", content_type: "image/png")

river1 = Activity.create!(name: 'River', category: CATEGORY[7], description: 'One of the most iconic walks in Europe', price: 80, address: "Arthur-Schnitzler-Platz 1, 1070 Wien, Austria", latitude: '48.20495', longitude: '16.35748')
river1_photo = URI.open("https://www.discoverwalks.com/blog/wp-content/uploads/2020/02/danube-vienna.jpg")
river1.photo.attach(io: river1_photo, filename: "river1.png", content_type: "image/png")

shopping1 = Activity.create!(name: 'Shopping', category: CATEGORY[8], description: 'Last trends and tradition in one place', price: 80, address: "Arthur-Schnitzler-Platz 1, 1070 Wien, Austria", latitude: '48.20491', longitude: '16.35747')
shopping1_photo = URI.open("https://www.vienna-unwrapped.com/wp-content/uploads/2014/03/vienna_shopping_for_luxury_09.jpg")
shopping1.photo.attach(io: shopping1_photo, filename: "shopping1.png", content_type: "image/png")

sightseeing1 = Activity.create!(name: 'Sightseeing', category: CATEGORY[9], description: 'Learn more about one of the most beautiful city in Europe', price: 80, address: "Arthur-Schnitzler-Platz 1, 1070 Wien, Austria", latitude: '48.20494', longitude: '16.35741')
sightseeing1_photo = URI.open("https://res.klook.com/image/upload/fl_lossy.progressive,w_800,c_fill,q_85/Mobile/City/vfg4baggrck0egh36owk.jpg")
sightseeing1.photo.attach(io: sightseeing1_photo, filename: "sightseeing1.png", content_type: "image/png")

conference1 = Activity.create!(name: 'Conference', category: CATEGORY[10], description: 'The largest conference center in Vienna', price: 80, address: "Arthur-Schnitzler-Platz 1, 1070 Wien, Austria", latitude: '48.20498', longitude: '16.35741')
conference1_photo = URI.open("https://meeting.vienna.info/resource/blob/447576/2edae8061304e3c5226d641e28451262/acv-tr-hall-f1-f2-8757-data.jpg")
conference1.photo.attach(io: conference1_photo, filename: "conference1.png", content_type: "image/png")

aquarium1 = Activity.create!(name: 'Aquarium', category: CATEGORY[11], description: 'More than 500 species from all over the world', price: 80, address: "Arthur-Schnitzler-Platz 1, 1070 Wien, Austria", latitude: '48.20492', longitude: '16.35743')
aquarium1_photo = URI.open("https://img.itinari.com/pages/images/original/1a2deecd-64db-4a3e-b00f-d72ff18b8975-1.jpg?ch=DPR&dpr=2.625&w=1600&s=78571e119ae290c654d15d52b9d0d61a")
aquarium1.photo.attach(io: aquarium1_photo, filename: "aquarium1.png", content_type: "image/png")

zoo1 = Activity.create!(name: 'Zoo', category: CATEGORY[12], description: 'Cute animals from all continents walk around this beautiful zoo', price: 80, address: "Arthur-Schnitzler-Platz 1, 1070 Wien, Austria", latitude: '48.20497', longitude: '16.35748')
zoo1_photo = URI.open("https://www.donauturm.at/assets/Uploads/Elements/Partner/Tiergarten/SEO-02_Grosser-Panda-Pavillon-TSEO-Tiergarten-Schoenbrunn-Giant-Pandas-Pavilion-Zoo-Vienna-+Headquarter-Daniel-Zupanc.jpg")
zoo1.photo.attach(io: zoo1_photo, filename: "zoo1.png", content_type: "image/png")

cycling1 = Activity.create!(name: 'Cycling', category: CATEGORY[13], description: 'One of the best ways to see the city', price: 80, address: "Arthur-Schnitzler-Platz 1, 1070 Wien, Austria", latitude: '48.20498', longitude: '16.35742')
cycling1_photo = URI.open("https://www.wien.info/resource/image/291246/3x2/832/561/4f5fe7f1ccaa8f3c8bd8cf41c58c8597/AC0CC7E36898973162403A5709EE676A/50150-radfahren-fahrrad-ringstrasse-radweg.webp")
cycling1.photo.attach(io: cycling1_photo, filename: "cycling1.png", content_type: "image/png")

drinks1 = Activity.create!(name: 'Drinks', category: CATEGORY[14], description: 'Top location, nice crowd', price: 80, address: "Arthur-Schnitzler-Platz 1, 1070 Wien, Austria", latitude: '48.20492', longitude: '16.35748')
drinks1_photo = URI.open("https://frynx.at/wp-content/uploads/2019/12/Die-5-ausgefallensten-Cocktailbars-in-Wien.jpg")
drinks1.photo.attach(io: drinks1_photo, filename: "drinks1.png", content_type: "image/png")

clubbing1 = Activity.create!(name: 'Clubbing', category: CATEGORY[15], description: 'The best DJs from all around the world come and play here', price: 80, address: "Arthur-Schnitzler-Platz 1, 1070 Wien, Austria", latitude: '48.20499', longitude: '16.35743')
clubbing1_photo = URI.open("https://d27k8xmh3cuzik.cloudfront.net/wp-content/uploads/2018/06/vienna-nightlife-cover-001.jpg")
clubbing1.photo.attach(io: clubbing1_photo, filename: "clubbing1.png", content_type: "image/png")

yoga1 = Activity.create!(name: 'Yoga', category: CATEGORY[16], description: 'Relax and grab a latte in our yoga cafe', price: 80, address: "Arthur-Schnitzler-Platz 1, 1070 Wien, Austria", latitude: '48.20494', longitude: '16.35743')
yoga1_photo = URI.open("https://americaninvienna.com/wp-content/uploads/2018/03/ginny-rose-stewart-UxkcSzRWM2s-unsplash-scaled.jpg")
yoga1.photo.attach(io: yoga1_photo, filename: "yoga1.png", content_type: "image/png")

wellness1 = Activity.create!(name: 'Wellness', category: CATEGORY[17], description: 'Escape from the city while staying in the very center of Vienna', price: 80, address: "Arthur-Schnitzler-Platz 1, 1070 Wien, Austria", latitude: '48.20493', longitude: '16.35744')
wellness1_photo = URI.open("https://cf.bstatic.com/xdata/images/xphoto/1020x340/48362219.jpg?k=07f5d0117a3bafbf346e20c7d4f633093081d6a6b9b9aeda66fd2687b510fbf4&o=")
wellness1.photo.attach(io: wellness1_photo, filename: "wellness1.png", content_type: "image/png")

nails1 = Activity.create!(name: 'Nails', category: CATEGORY[18], description: 'Quick and with top service overall', price: 80, address: "Arthur-Schnitzler-Platz 1, 1070 Wien, Austria", latitude: '48.20495', longitude: '16.35743')
nails1_photo = URI.open("https://soleilnailspavienna.com/uploads/fdemoi55cqzj7/logo/2019/06/25/thumbnail/1_1561522016_92_asd-w768.png")
nails1.photo.attach(io: nails1_photo, filename: "nails1.png", content_type: "image/png")

hair_dresser1 = Activity.create!(name: 'Hair dresser', category: CATEGORY[19], description: 'Queens and princesses like to come here', price: 80, address: "Arthur-Schnitzler-Platz 1, 1070 Wien, Austria", latitude: '48.20494', longitude: '16.35742')
hair_dresser1_photo = URI.open("https://images.fresha.com/lead-images/placeholders/hair-salon-81.jpg?class=venue-gallery-mobile")
hair_dresser1.photo.attach(io: hair_dresser1_photo, filename: "hair_dresser1.png", content_type: "image/png")

review1 = Review.create!(rating: 5, content: "Wow!! Amazing experience! Worth going there just for the building :) I couldn't stop looking at the ceiling before the show started!!", user: svetlana, activity: opera4)
review1_photo1 = URI.open("https://www.myo.org/wp-content/uploads/2015/03/Vienna-State-Opera-House.jpg")
review1.photos.attach(io: review1_photo1, filename: "review1photo1.png", content_type: "image/png")
review1_photo2 = URI.open("https://i0.wp.com/www.whiskiedwanderlust.com/wp-content/uploads/2015/03/Vienna-Opera_Foyer.jpg?resize=600%2C450&ssl=1")
review1.photos.attach(io: review1_photo2, filename: "review1photo2.png", content_type: "image/png")

review2 = Review.create!(rating: 4, content: "Probably my favorite in Vienna :) Just make sure you book enough in advance if you want to get good seats at a reasonable price.", user: claire, activity: opera4)
review2_photo1 = URI.open("https://meetmeattheopera.com/wp-content/uploads/2015/05/Vienna-Opera-House.jpg")
review2.photos.attach(io: review2_photo1, filename: "review2photo1.png", content_type: "image/png")
review2_photo2 = URI.open("https://www.viennaconcerts.com/si/stateopera/vienna-state-opera8.jpg")
review2.photos.attach(io: review2_photo2, filename: "review2photo2.png", content_type: "image/png")

booking1 = Booking.create!(start_date: "2024-03-07", end_date: "2024-03-07", status: "pending", user: sarah, activity: opera1)

participation1 = Participation.create!(booking: booking1, user: johanna)
participation2 = Participation.create!(booking: booking1, user: claire)
participation3 = Participation.create!(booking: booking1, user: petra)
participation4 = Participation.create!(booking: booking1, user: svetlana)
participation5 = Participation.create!(booking: booking1, user: jennifer)

[tennis1, tennis2, tennis3, tennis4,
  crossfit1, crossfit2, crossfit3, crossfit4,
  opera1, opera2, opera3, opera4,
  review1, booking1,
  participation1, participation2, participation3, participation4, participation5,
  restaurant1,
  brunch1,
  waltz1,
  museum1,
  river1,
  shopping1,
  sightseeing1,
  conference1,
  aquarium1,
  zoo1,
  cycling1,
  drinks1,
  clubbing1,
  yoga1,
  wellness1,
  nails1,
  hair_dresser1].each(&:save)
