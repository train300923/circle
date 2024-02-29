# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data ca then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.destroy_all
Activity.destroy_all
Booking.destroy_all

CATEGORY = ["Tennis", "Crossfit", "Opera"]

sarah = User.create(first_name: 'sarah', last_name: 'maffre', age: 32, job: 'codeuse professionnelle', address: '12 rue des renardeaux 75011 paris', phone_number: '061245654348', biography: "j'ai pour habitude de me considerer comme une codeuse folle", latitude: '48.86481', longitude: '2.38762', preferred_category: CATEGORY[2], email: 'sarah@circle.com', password: 'password1')
sarah_photo = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/Sarah_Jeffery_%2831666424268%29.jpg/1200px-Sarah_Jeffery_%2831666424268%29.jpg")
sarah.photo.attach(io: sarah_photo, filename: "sarah.png", content_type: "image/png")
kaouthar = User.create(first_name: 'kaouthar', last_name: 'elherch', age: 25, job: 'ingenieur electromecanique', address: '45 avenue du chateau 78000 versailles', phone_number: '0612486323', biography: "j'adore la gym!", latitude: '48.80528', longitude: '2.12227', preferred_category: CATEGORY[1], email: 'kaouthar@circle.com', password: 'password2')
kaouthar_photo = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1696669146/c5q2t4mbhrmvc03esl5l.jpg")
kaouthar.photo.attach(io: kaouthar_photo, filename: "kaouthar.png", content_type: "image/png")
johanna = User.create(first_name: 'johanna', last_name: 'johnson', age: 52, job: 'marketing director', address: '30 zedlitzgasse 1010 wien', phone_number: '0612486323', biography: "j'adore l'opera et la culture!", latitude: '48.20681', longitude: '16.37935', preferred_category: CATEGORY[2], email: 'johanna@circle.com', password: 'password3')
johanna_photo = URI.open("https://static1.purepeople.com/articles/5/89/51/5/@/722469-johanna-kawa-nouvelle-animatrice-de-580x0-4.jpg")
johanna.photo.attach(io: johanna_photo, filename: "johanna.png", content_type: "image/png")
claire = User.create(first_name: 'claire', last_name: 'kurz', age: 33, job: 'ex prime minister', address: 'rotgasse 10, 1010 Wien, Austria', phone_number: '0612486323', biography: "unique est la ville de vienne pour la culture", latitude: '48.21103', longitude: '16.37473', preferred_category: CATEGORY[2], email: 'claire@circle.com', password: 'password4')
claire_photo = URI.open("https://www.gala.fr/imgre/fit/~1~gal~2023~09~07~b1ef180b-3000-4566-94b4-1140fab0097f.jpeg/3354x2437/quality/80/claire-keim.jpeg")
claire.photo.attach(io: claire_photo, filename: "claire.png", content_type: "image/png")
petra = User.create(first_name: 'petra', last_name: 'de la casca', age: 40, job: 'social media expert', address: 'Habsburgergasse 7, 1010 Wien, Austria', phone_number: '0612486323', biography: "je suis ne et j'ai grandi dans cette ville qui est pour moi tout a fait speciale", latitude: '48.20809', longitude: '16.36825', preferred_category: CATEGORY[2], email: 'petra@circle.com', password: 'password5')
petra_photo = URI.open("https://upload.wikimedia.org/wikipedia/commons/3/33/Yael_Grobglas_at_2015_PaleyFest.jpg")
petra.photo.attach(io: petra_photo, filename: "petra.png", content_type: "image/png")
svetlana = User.create(first_name: 'svetlana', last_name: 'rodot', age: 38, job: 'chanteuse', address: 'Schubertring 13, 1010 Wien, Austria', phone_number: '0612486323', biography: "nouvelle venue dans cette ville, j'aimerai rencontrer de nouvelles personnes ayant des interets communs", latitude: '48.20206', longitude: '16.37481', preferred_category: CATEGORY[0], email: 'svetlana@circle.com', password: 'password6')
svetlana_photo = URI.open("https://www.amazing-women.com/photo/Kharkov260/93987-1.jpg")
svetlana.photo.attach(io: svetlana_photo, filename: "svetlana.png", content_type: "image/png")

tennis1 = Activity.create(name: 'Tennis Club du Tourniquet', category: CATEGORY[0], description: 'Venez profitez de nos superbes equipements sportifs ainsi que de notre proximite avec le lac d Annecy', price: 40, address: '40 Rue de Verdun 74940 Annecy-le-Vieux', latitude: '45.91032', longitude: '6.15853')
tennis1_photo = URI.open("https://time.com/shopping/static/acf0d86662eed64a9e6c17d3429f0bca/57e17/best-tennis-rackets.jpg")
tennis1.photo.attach(io: tennis1_photo, filename: "tennis1.png", content_type: "image/png")
tennis2 = Activity.create(name: 'Oswald Tennis Club', category: CATEGORY[0], description: 'Magnifique complexe sportif tres moderne, il y a plus de 10 terrains', price: 35, address: 'Hauptallee, 1020 Wien, Austria', latitude: '48.19552', longitude: '16.43879')
tennis2_photo = URI.open("https://files.eversports.com/a5e19f2a-3dd9-4007-87f6-3271077e557a/tennis_treff_oswald_at_17669_eversports_6jpg-x-large.webp")
tennis2.photo.attach(io: tennis2_photo, filename: "tennis2.png", content_type: "image/png")
tennis3 = Activity.create(name: 'Tennis Club de Beziers', category: CATEGORY[0], description: 'Club tres dynamique accueillant la Nestea Cup, vous serez tres bien recu. Nous avons 10 terrains greenset, quick et terre battue', price: 20, address: '15 avenue jean-baptiste blattes 34500 Béziers', latitude: '43.34011', longitude: '3.19099')
tennis3_photo = URI.open("https://www.beziers-mediterranee.com/wp-content/uploads/wpetourisme/Tennis-Club-Biterrois--3-.jpg")
tennis3.photo.attach(io: tennis3_photo, filename: "tennis3.png", content_type: "image/png")
tennis4 = Activity.create(name: 'Tennis Club de Versailles', category: CATEGORY[0], description: 'Venez faire du sport dans notre club, nous vous accueillons du lundi au samedi de 9h a 18h, et apres le sport, le reconfort, nous vous offrons un pastis pour etancher votre soif', price: 15, address: '57 Rue Rémont, 78000 Versailles', latitude: '48.79200', longitude: '2.15454')
tennis4_photo = URI.open("https://www.tcgrandversailles.fr/file/si603679/Installations-fi14979208x330.JPG")
tennis4.photo.attach(io: tennis4_photo, filename: "tennis4.png", content_type: "image/png")

crossfit1 = Activity.create(name: 'Gymclub de Versailles', category: CATEGORY[1], description: 'Activite de gym tres energetique qui va vous faire demarrer la journee sur le bon pied!', price: 10, address: "15 Rue d'Anjou 78000 Versailles", latitude: '48.79739', longitude: '2.12640')
crossfit1_photo = URI.open("https://usercontent.one/wp/www.crossfitlarochelle.com/wp-content/uploads/2022/09/le-crossfit-pour-femme-enceinte-scaled-e1662456440958.jpg")
crossfit1.photo.attach(io: crossfit1_photo, filename: "crossfit1.png", content_type: "image/png")
crossfit2 = Activity.create(name: 'Mrs.Sporty Club Wien', category: CATEGORY[1], description: 'Super content que vous veniez sur notre page! Vous trouverez ici tous les modules prets pour vous entrainer', price: 13, address: "Porzellangasse 33A, 1090 Wien, Austria", latitude: '48.23051', longitude: '16.36943')
crossfit2_photo = URI.open("https://www.mrssporty.at/club/wien-hernals/wp-content/uploads/sites/193/2023/01/pic_club-news_2.png")
crossfit2.photo.attach(io: crossfit2_photo, filename: "crossfit2.png", content_type: "image/png")
crossfit3 = Activity.create(name: 'Gymclub de Reims', category: CATEGORY[1], description: 'Tout simplement le meilleur club de France! Rejoignez nous des maintenant!', price: 8, address: "8 Allee du Vignoble 51100 Reims", latitude: '49.22154', longitude: '4.01964')
crossfit3_photo = URI.open("https://static.wixstatic.com/media/f6c10c_2e5f22b706144487b2a1b43441962cd4~mv2.jpg/v1/fit/w_320%2Ch_320%2Cal_c%2Cq_80,enc_auto/file.jpg")
crossfit3.photo.attach(io: crossfit3_photo, filename: "crossfit3.png", content_type: "image/png")
crossfit4 = Activity.create(name: 'Gymclub d Avignon', category: CATEGORY[1], description: 'Les papes, c etait avant, maintenant ici, c est la capitale de la levee de fonte! ', price: 17, address: "162 Avenue Pierre Semard 84000 Avignon", latitude: '43.92925', longitude: '4.83410')
crossfit4_photo = URI.open("https://datas.onefitnessclub.fr/images/clubs/avignon/One-Fitness-Avignon-011.jpg")
crossfit4.photo.attach(io: crossfit4_photo, filename: "crossfit4.png", content_type: "image/png")

opera1 = Activity.create(name: 'Volkstheater', category: CATEGORY[2], description: 'Magnifique opera "Lac des Cygnes", standing ovation!', price: 80, address: "Arthur-Schnitzler-Platz 1, 1070 Wien, Austria", latitude: '48.20497', longitude: '16.35741')
opera1_photo = URI.open("https://www.europeantheatre.eu/uploads/organisations/338/Volkstheater-RET-web.jpg")
opera1.photo.attach(io: opera1_photo, filename: "opera1.png", content_type: "image/png")
opera2 = Activity.create(name: 'Burgtheater', category: CATEGORY[2], description: 'Representations d opera tout simplement grandiose!', price: 75, address: "Universitätsring 2, 1010 Wien, Austria", latitude: '48.21180', longitude: '16.36283')
opera2_photo = URI.open("https://media.tacdn.com/media/attractions-splice-spp-674x446/0b/2c/f8/de.jpg")
opera2.photo.attach(io: opera2_photo, filename: "opera2.png", content_type: "image/png")
opera3 = Activity.create(name: 'Theater an der Wien', category: CATEGORY[2], description: 'On ne presente plus le Theater an der Wien! Les plus prestigieuses pieces et concerts se sont produits ici', price: 130, address: "Linke Wienzeile 6, 1060 Wien, Austria", latitude: '48.19930', longitude: '16.36371')
opera3_photo = URI.open("https://www.musicalvienna.at/media/image/16941_120801-18.jpg")
opera3.photo.attach(io: opera3_photo, filename: "opera3.png", content_type: "image/png")
opera4 = Activity.create(name: 'Vienna State Opera', category: CATEGORY[2], description: 'Toute la rigueur autrichienne dans ce lieu mythique', price: 150, address: "Opernring 2, 1010 Wien, Austria", latitude: '48.20330', longitude: '16.36899')
opera4_photo = URI.open("https://m-festival.biz/en/wp-content/uploads/2023/04/323927622_5694523843997527_6046703828531623519_n.jpeg")
opera4.photo.attach(io: opera4_photo, filename: "opera4.png", content_type: "image/png")

[tennis1, tennis2, tennis3, tennis4, crossfit1, crossfit2, crossfit3, crossfit4, opera1, opera2, opera3, opera4].each(&:save)
