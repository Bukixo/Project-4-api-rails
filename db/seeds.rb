[User, Style, Type, Comment].each do |model|
  ActiveRecord::Base.connection.execute("TRUNCATE #{model.table_name} RESTART IDENTITY CASCADE")
end

u1 = User.create!(name: "buki",
 image: "https://scontent.xx.fbcdn.net/v/t1.0-9/15873121_10154245318666245_7518634129702698691_n.jpg?oh=d6d75ad2acf5aa3b662447749e7f2683&oe=59950ABA",
 email: "bukikekere@gmail.com",
 password: "password",
 password_confirmation: "password",
 privacy: true)

 u2 = User.create!(name: "sandra",
  image: "https://scontent.xx.fbcdn.net/v/t1.0-9/15873121_10154245318666245_7518634129702698691_n.jpg?oh=d6d75ad2acf5aa3b662447749e7f2683&oe=59950ABA",
  email: "sandra@ga.co",
  password: "password",
  password_confirmation: "password",
  privacy: true)

  u3 = User.create!(name: "farridah",
   image: "https://scontent.xx.fbcdn.net/v/t1.0-9/15873121_10154245318666245_7518634129702698691_n.jpg?oh=d6d75ad2acf5aa3b662447749e7f2683&oe=59950ABA",
   email: "farridah@ga.co",
   password: "password",
   password_confirmation: "password",
   privacy: true)

t1 = Type.create!(name: "Protective-Style")
t2 = Type.create!(name: "Natural-Hair")

Style.create!(name: "Box Braids",

procedure: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultrices, lorem in scelerisque ornare",
 products: "Aliquam erat volutpat. Maecenas commodo maximus sapien, quis feugiat magna cursus ut. Suspendisse bibendum pellentesque nunc. Suspendisse potenti.",
 date: Date.new(2017, 4, 12),
 durability: 14,
 image: "https://s-media-cache-ak0.pinimg.com/736x/20/9f/f9/209ff96e734946dde8c4c80db6da29be.jpg",
 own: false,
 privacy: true,
 tags: "box-braids",
 type: t1,
 user: u1)

Style.create!(name: "Natural-Hair Updo",
procedure: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultrices, lorem in scelerisque ornare, augue nisi elementum lectus, et gravida felis tortor non elit. Vivamus pulvinar tempor cursus.",
products: "Marley Hair",
date: Date.new(2017, 4, 20),
durability: 14,
image: File.open(File.join(Rails.root, "db/images/2.jpeg")),
own: false,
privacy: false,
tags: "locs",
type: t2,
user: u1)

Style.create!(name: "Twisted updo", procedure: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultrices, lorem in scelerisque ornare, augue nisi elementum lectus, et gravida felis tortor non elit. Vivamus pulvinar tempor cursus.",
products: "Marley Hair",
date: Date.new(2017, 4, 20),
durability: 14,
image: File.open(File.join(Rails.root, "db/images/a2.jpg")),
own: false,
privacy: false, tags: "locs",
type: t2,
user: u2)

Style.create!(name: "Afro", procedure: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultrices",
products: "Indian Hair",
date: Date.new(2017, 6, 21),
durability: 1,
image: File.open(File.join(Rails.root, "db/images/afro1.jpg")),
own: false,
privacy: false, tags: "weave",
type: t2,
user: u3)

Style.create!(name: "afro", procedure: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultrices",
products: "coconut oil",
date: Date.new(2017, 1, 1),
durability: 4,
image: File.open(File.join(Rails.root, "db/images/afro2.jpeg")),
own: false,
privacy: false, tags: "twistout",
type: t2,
user: u1)

Style.create!(name: "Box braids", procedure: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultrices",
products: "coconut oil",
date: Date.new(2017, 6, 21),
durability: 1,
image: File.open(File.join(Rails.root, "db/images/box1.jpg")),
own: false,
privacy: false, tags: "afro",
type: t1 ,
user: u2)

Style.create!(name: "short box braids", procedure: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultrices",
products: "water",
date: Date.new(2017, 6, 21),
durability: 1,
image: File.open(File.join(Rails.root, "db/images/box2.jpeg")),
own: false,
privacy: true, tags: "twa",
type: t1,
user: u3)

Style.create!(name: "Crcohet braids", procedure: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultrices",
products: "water",
date: Date.new(2017, 6, 21),
durability: 1,
image: File.open(File.join(Rails.root, "db/images/c2.jpg")),
own: false,
privacy: false,
tags: "twa",
type: t1,
user: u1)

Style.create!(name: "Crochets", procedure: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultrices",
products: "water",
date: Date.new(2017, 6, 21),
durability: 1,
image: File.open(File.join(Rails.root, "db/images/crochet1.png")),
own: false,
privacy: false,
tags: "twa",
type: t1,
user: u2)

Style.create!(name: "Purple locs", procedure: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultrices",
products: "water",
date: Date.new(2017, 6, 21),
durability: 1,
image: File.open(File.join(Rails.root, "db/images/locs1.jpg")),
own: false,
privacy: false,
tags: "twa",
type: t1,
user: u3)

Style.create!(name: "Locs", procedure: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultrices",
products: "water",
date: Date.new(2017, 6, 21),
durability: 1,
image: File.open(File.join(Rails.root, "db/images/locs2.jpg")),
own: false,
privacy: false,
tags: "twa",
type: t1,
user: u1)

Style.create!(name: "Tapered Cut", procedure: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultrices", products: "water",
date: Date.new(2017, 6, 21),
durability: 1,
image: File.open(File.join(Rails.root, "db/images/nh3.jpg")),
own: false,
privacy: true,
tags: "twa",
type: t2,
user: u2)

Style.create!(name: "Twa", procedure: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultrices", products: "water",
date: Date.new(2017, 6, 21),
durability: 1,
image: File.open(File.join(Rails.root, "db/images/nh4.jpg")),
own: false,
privacy: false,
tags: "twa",
type: t2,
user: u3)

Style.create!(name: "Weave", procedure: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultrices", products: "water",
date: Date.new(2017, 6, 21),
durability: 1,
image: File.open(File.join(Rails.root, "db/images/ph.jpg")),
own: false,
privacy: true,
tags: "twa",
type: t2,
user: u1)

Style.create!(name: "short Weave", procedure: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultrices", products: "water",
date: Date.new(2017, 6, 21),
durability: 1,
image: File.open(File.join(Rails.root, "db/images/shortweace.jpg")),
own: false,
privacy: false,
tags: "twa",
type: t2,
user: u2)
