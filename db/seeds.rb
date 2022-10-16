# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


#destroy ALL
Comment.destroy_all
Picture.destroy_all
Category.destroy_all

categories = [["Wallpaper", "From epic drone shots to inspiring moments in nature, find free HD wallpapers worthy of your screens."], ["Nature","Let’s celebrate the magic of Mother Earth — with images of everything our planet has to offer."], ["People", "Real people, captured. Photography has the power to reflect the world around us, give voice to individuals and groups."]]

category_cover = ['db/Images/cover_arboles.png','db/Images/cover_mujer.png','db/Images/cover_oso.png']
category_cover_name = ['cover_arboles.png','cover_mujer.png','cover_oso.png']
n = 0

categories.each do |category|
    new_category = Category.create(
        name: category[0],
        description: category[1],
    )
    new_category.cover.attach(io: File.open(category_cover[n]), filename: category_cover_name[n])
    n += 1
end

pictures_wallpaper = [["Starry Sky","England's night sky"],["Tetris","A tetris-themed wallpaper"],["Windows","windows 10 wallpaper"]]
pictures_nature = [["The Forest","A forest at night"],["Flowers","Beautiful flowers in the garden"],["Bird in the tree","A bird making its nest in a tree"]]
pictures_people = [["People","Group of people crossing the street"],["Theater","Actors in a play"],["Football","the biggest football game in history"]]

picture_photo = ["db/Images/vr.png","db/Images/uvas.png","db/Images/tundra.png","db/Images/tigre.png","db/Images/scooters.png","db/Images/raices.png","db/Images/puesta_de_sol.png","db/Images/planta.png","db/Images/pato.png"]
picture_photo_name = ["vr.png","uvas.png","tundra.png","tigre.png","scooters.png","raices.png","puesta_de_sol.png","planta.png","pato.png"]

m = 0
pictures_wallpaper.each do |picture|
    new_picture = Picture.create(
        title: picture[0],
        description: picture[1],
        category_id: Category.all[0].id,
    )
    new_picture.photo.attach(io: File.open(picture_photo[m]), filename: picture_photo_name[m])
    m += 1    
end

pictures_nature.each do |picture|
    new_picture = Picture.create(
        title: picture[0],
        description: picture[1],
        category_id: Category.all[1].id,
    )
    new_picture.photo.attach(io: File.open(picture_photo[m]), filename: picture_photo_name[m])
    m += 1
end

pictures_people.each do |picture|
    new_picture = Picture.create(
        title: picture[0],
        description: picture[1],
        category_id: Category.all[2].id,
    )
    new_picture.photo.attach(io: File.open(picture_photo[m]), filename: picture_photo_name[m])
    m += 1
end

comments = ["I like it","It's very nice","It is the best","I'm lovin 'it","It could be better","I prefer other types of photos","It could be better","It's my favorite","I can't believe how incredible this is","what a wonderful photo","It is awful","Meh","It is amazing","I think it's good","change the cameraman","XD","I think it could be better","I wish I could take pictures like this","Follow me on Instagram","First","So beautiful","LOL","Amazing","These are photos","I take better photos","the best thing i saw in my life"]

comments.each_with_index do |comment, index|
    @id = 0
    if index <= 2
        @id = 0
    elsif 2 < index && index <= 5
        @id = 1
    elsif 5 < index && index <= 8
        @id = 2
    elsif 8 < index && index <= 11
        @id = 3
    elsif 11 < index && index <= 14
        @id = 4
    elsif 14 < index && index <= 17
        @id = 5
    elsif 17 < index && index <= 20
        @id = 6
    elsif 20 < index && index <= 23
        @id = 7
    elsif 23 < index && index <= 25
        @id = 8
    end
    Comment.create(
        content: comment,
        picture_id: Picture.all[@id].id,
    )
end