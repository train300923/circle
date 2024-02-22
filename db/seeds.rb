# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.destroy_all
Activity.destroy_all
Booking.destroy_all

guilhem = User.create(first_name: 'guilhem', last_name: 'maffre', address: '12 rue des renardeaux 75011 paris', phone_number: '061245654348', biography: "j'ai pour habitude de me considerer comme un codeur fou", latitude: '48.86481', longitude: '2.38762', email: 'guilhem@circle.com', password: 'password1')
kaouthar = User.create(first_name: 'kaouthar', last_name: 'elherch', address: '45 avenue du chateau 78000 versailles', phone_number: '0612486323', biography: "j'adore la gym!", latitude: '48.80528', longitude: '2.12227', email: 'kaouthar@circle.com', password: 'password2')
ulrich = User.create(first_name: 'ulrich', last_name: 'johnson', address: '30 zedlitzgasse 1010 wien', phone_number: '0612486323', biography: "j'adore l'opera et la culture!", latitude: '48.20681', longitude: '16.37935', email: 'ulrich@circle.com', password: 'password3')
sebastian = User.create(first_name: 'sebastian', last_name: 'kurz', address: 'rotgasse 10, 1010 Wien, Austria', phone_number: '0612486323', biography: "unique est la ville de vienne pour la culture", latitude: '48.21103', longitude: '16.37473', email: 'sebastian@circle.com', password: 'password4')
tony = User.create(first_name: 'tony', last_name: 'de la casca', address: 'Habsburgergasse 7, 1010 Wien, Austria', phone_number: '0612486323', biography: "je suis ne et j'ai grandi dans cette ville qui est pour moi tout a fait speciale", latitude: '48.20809', longitude: '16.36825', email: 'tony@circle.com', password: 'password5')
julien = User.create(first_name: 'julien', last_name: 'rodot', address: 'Schubertring 13, 1010 Wien, Austria', phone_number: '0612486323', biography: "nouveau venu dans cette ville, j'aimerai rencontrer de nouvelles personnes ayant des interets communs", latitude: '48.20206', longitude: '16.37481', email: 'julien@circle.com', password: 'password6')

tennis1 = Activity.create(name: 'Tennis Club du Tourniquet', category: 'Tennis', description: 'Venez profitez de nos superbes equipements sportifs ainsi que de notre proximite avec le lac d Annecy', price: 40, address: '40 Rue de Verdun 74940 Annecy-le-Vieux', latitude: '45.91032', longitude: '6.15853')
tennis1_photo = URI.open("https://time.com/shopping/static/acf0d86662eed64a9e6c17d3429f0bca/57e17/best-tennis-rackets.jpg")
tennis1.photo.attach(io: tennis1_photo, filename: "tennis1.png", content_type: "image/png")
tennis2 = Activity.create(name: 'Oswald Tennis Club', category: 'Tennis', description: 'Magnifique complexe sportif tres moderne, il y a plus de 10 terrains', price: 35, address: 'Hauptallee, 1020 Wien, Austria', latitude: '48.19552', longitude: '16.43879')
tennis2_photo = URI.open("https://files.eversports.com/a5e19f2a-3dd9-4007-87f6-3271077e557a/tennis_treff_oswald_at_17669_eversports_6jpg-x-large.webp")
tennis2.photo.attach(io: tennis2_photo, filename: "tennis2.png", content_type: "image/png")
tennis3 = Activity.create(name: 'Tennis Club de Beziers', category: 'Tennis', description: 'Club tres dynamique accueillant la Nestea Cup, vous serez tres bien recu. Nous avons 10 terrains greenset, quick et terre battue', price: 20, address: '15 avenue jean-baptiste blattes 34500 Béziers', latitude: '43.34011', longitude: '3.19099')
tennis3_photo = URI.open("https://www.beziers-mediterranee.com/wp-content/uploads/wpetourisme/Tennis-Club-Biterrois--3-.jpg")
tennis3.photo.attach(io: tennis3_photo, filename: "tennis3.png", content_type: "image/png")
tennis4 = Activity.create(name: 'Tennis Club de Versailles', category: 'Tennis', description: 'Venez faire du sport dans notre club, nous vous accueillons du lundi au samedi de 9h a 18h, et apres le sport, le reconfort, nous vous offrons un pastis pour etancher votre soif', price: 15, address: '57 Rue Rémont, 78000 Versailles', latitude: '48.79200', longitude: '2.15454')
tennis4_photo = URI.open("https://www.tcgrandversailles.fr/file/si603679/Installations-fi14979208x330.JPG")
tennis4.photo.attach(io: tennis4_photo, filename: "tennis4.png", content_type: "image/png")

crossfit1 = Activity.create(name: 'Gymclub de Versailles', category: 'Crossfit', description: 'Activite de gym tres energetique qui va vous faire demarrer la journee sur le bon pied!', price: 10, address: "15 Rue d'Anjou 78000 Versailles", latitude: '48.79739', longitude: '2.12640')
crossfit1_photo = URI.open("https://usercontent.one/wp/www.crossfitlarochelle.com/wp-content/uploads/2022/09/le-crossfit-pour-femme-enceinte-scaled-e1662456440958.jpg")
crossfit1.photo.attach(io: crossfit1_photo, filename: "crossfit1.png", content_type: "image/png")
crossfit2 = Activity.create(name: 'Mrs.Sporty Club Wien', category: 'Crossfit', description: 'Super content que vous veniez sur notre page! Vous trouverez ici tous les modules prets pour vous entrainer', price: 13, address: "Porzellangasse 33A, 1090 Wien, Austria", latitude: '48.23051', longitude: '16.36943')
crossfit2_photo = URI.open("https://www.mrssporty.at/club/wien-hernals/wp-content/uploads/sites/193/2023/01/pic_club-news_2.png")
crossfit2.photo.attach(io: crossfit2_photo, filename: "crossfit2.png", content_type: "image/png")
crossfit3 = Activity.create(name: 'Gymclub de Reims', category: 'Crossfit', description: 'Tout simplement le meilleur club de France! Rejoignez nous des maintenant!', price: 8, address: "8 Allee du Vignoble 51100 Reims", latitude: '49.22154', longitude: '4.01964')
crossfit3_photo = URI.open("https://static.wixstatic.com/media/f6c10c_2e5f22b706144487b2a1b43441962cd4~mv2.jpg/v1/fit/w_320%2Ch_320%2Cal_c%2Cq_80,enc_auto/file.jpg")
crossfit3.photo.attach(io: crossfit3_photo, filename: "crossfit3.png", content_type: "image/png")
crossfit4 = Activity.create(name: 'Gymclub d Avignon', category: 'Crossfit', description: 'Les papes, c etait avant, maintenant ici, c est la capitale de la levee de fonte! ', price: 17, address: "162 Avenue Pierre Semard 84000 Avignon", latitude: '43.92925', longitude: '4.83410')
crossfit4_photo = URI.open("https://datas.onefitnessclub.fr/images/clubs/avignon/One-Fitness-Avignon-011.jpg")
crossfit4.photo.attach(io: crossfit4_photo, filename: "crossfit4.png", content_type: "image/png")

opera1 = Activity.create(name: 'Volkstheater', category: 'Opera', description: 'Magnifique opera "Lac des Cygnes", standing ovation!', price: 80, address: "Arthur-Schnitzler-Platz 1, 1070 Wien, Austria", latitude: '48.20497', longitude: '16.35741')
opera1_photo = URI.open("https://www.europeantheatre.eu/uploads/organisations/338/Volkstheater-RET-web.jpg")
opera1.photo.attach(io: opera1_photo, filename: "opera1.png", content_type: "image/png")
opera2 = Activity.create(name: 'Burgtheater', category: 'Opera', description: 'Representations d opera tout simplement grandiose!', price: 75, address: "Universitätsring 2, 1010 Wien, Austria", latitude: '48.21180', longitude: '16.36283')
opera2_photo = URI.open("https://media.tacdn.com/media/attractions-splice-spp-674x446/0b/2c/f8/de.jpg")
opera2.photo.attach(io: opera2_photo, filename: "opera2.png", content_type: "image/png")
opera3 = Activity.create(name: 'Theater an der Wien', category: 'Opera', description: 'On ne presente plus le Theater an der Wien! Les plus prestigieuses pieces et concerts se sont produits ici', price: 130, address: "Linke Wienzeile 6, 1060 Wien, Austria", latitude: '48.19930', longitude: '16.36371')
opera3_photo = URI.open("https://www.musicalvienna.at/media/image/16941_120801-18.jpg")
opera3.photo.attach(io: opera3_photo, filename: "opera3.png", content_type: "image/png")
opera4 = Activity.create(name: 'Vienna State Opera', category: 'Opera', description: 'Toute la rigueur autrichienne dans ce lieu mythique', price: 150, address: "Opernring 2, 1010 Wien, Austria", latitude: '48.20330', longitude: '16.36899')
opera4_photo = URI.open("https://m-festival.biz/en/wp-content/uploads/2023/04/323927622_5694523843997527_6046703828531623519_n.jpeg")
opera4.photo.attach(io: opera4_photo, filename: "opera4.png", content_type: "image/png")

[tennis1, tennis2, tennis3, tennis4, crossfit1, crossfit2, crossfit3, crossfit4, opera1, opera2, opera3, opera4].each(&:save)
