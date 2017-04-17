[User, Style, Type, Comment].each do |model|
  ActiveRecord::Base.connection.execute("TRUNCATE #{model.table_name} RESTART IDENTITY CASCADE")
end

user = User.create!(name: "buki")
type = Type.create!(name: "Protective-Style")

Style.create!(name: "Box Braids", method: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultrices, lorem in scelerisque ornare, augue nisi elementum lectus, et gravida felis tortor non elit. Vivamus pulvinar tempor cursus. Cras pellentesque non mauris id facilisis. Vivamus nec nulla eu leo mattis pellentesque pretium at sapien.", products: "Aliquam erat volutpat. Maecenas commodo maximus sapien, quis feugiat magna cursus ut. Suspendisse bibendum pellentesque nunc. Suspendisse potenti.", date: Date.new(2017, 4, 12), durability: 14, image: "https://s-media-cache-ak0.pinimg.com/736x/20/9f/f9/209ff96e734946dde8c4c80db6da29be.jpg", own: false, privacy: true, tags: "box-braids", type: type, user: user)
