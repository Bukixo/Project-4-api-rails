[User, Style, Type, Comment].each do |model|
  ActiveRecord::Base.connection.execute("TRUNCATE #{model.table_name} RESTART IDENTITY CASCADE")
end

user = User.create!(name: "buki",
 image: "https://scontent.xx.fbcdn.net/v/t1.0-9/15873121_10154245318666245_7518634129702698691_n.jpg?oh=d6d75ad2acf5aa3b662447749e7f2683&oe=59950ABA",
 email: "bukikekere@gmail.com",
 password: "password",
 password_confirmation: "password",
 privacy: true)

t1 = Type.create!(name: "Protective-Style")
t2 = Type.create!(name: "Natural-Hair")

Style.create!(name: "Box Braids", procedure: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultrices, lorem in scelerisque ornare", products: "Aliquam erat volutpat. Maecenas commodo maximus sapien, quis feugiat magna cursus ut. Suspendisse bibendum pellentesque nunc. Suspendisse potenti.", date: Date.new(2017, 4, 12), durability: 14, image: "https://s-media-cache-ak0.pinimg.com/736x/20/9f/f9/209ff96e734946dde8c4c80db6da29be.jpg", own: false, privacy: true, tags: "box-braids", type: t1, user: user)

Style.create!(name: "Jumbo Locs", procedure: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultrices, lorem in scelerisque ornare, augue nisi elementum lectus, et gravida felis tortor non elit. Vivamus pulvinar tempor cursus.", products: "Marley Hair", date: Date.new(2017, 4, 20), durability: 14, image: "https://lh3.googleusercontent.com/-SqTAqcr7ong/V28XmO25NwI/AAAAAAAAGag/tRwRwv6pxHM/s640/blogger-image-2012356000.jpg", own: false, privacy: true, tags: "locs", type: t1, user: user)

Style.create!(name: "weave", procedure: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultrices", products: "Indian Hair", date: Date.new(2017, 6, 21), durability: 1, image: "https://s-media-cache-ak0.pinimg.com/736x/65/38/47/653847115d99627a7bc0bc0e39e16ebb.jpg", own: false, privacy: true, tags: "weave", type: t1, user: user)

Style.create!(name: "twistout", procedure: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultrices", products: "coconut oil", date: Date.new(2017, 1, 1), durability: 4, image: "http://www.mynaturalsistas.com/wp-content/uploads/2015/11/twist-out-toni3-e1448585279578.jpg", own: false, privacy: true, tags: "twistout", type: t2, user: user)

Style.create!(name: "afro", procedure: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultrices", products: "coconut oil", date: Date.new(2017, 6, 21), durability: 1, image: "https://s-media-cache-ak0.pinimg.com/736x/04/36/30/0436305a7e30c585dfeb1f28c19a9ab8.jpg", own: false, privacy: true, tags: "afro", type: t2 , user: user)

Style.create!(name: "twa", procedure: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultrices", products: "water", date: Date.new(2017, 6, 21), durability: 1, image: "https://s-media-cache-ak0.pinimg.com/736x/b6/62/c6/b662c640e507134d9958a50b1f6713a9.jpg", own: false, privacy: true, tags: "twa", type: t2, user: user)
