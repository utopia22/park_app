User.create(email: 'admin@example.com',   password: 'password')

array = %w(#トイレ #駐車場 #芝生 #アスレチック #水遊び #ボール遊び #公園散歩 #滑り台 #ブランコ #砂場 #ジャングルジム #鉄棒)
array.each{ |tag|
  tag_list = ActsAsTaggableOn::Tag.new
  tag_list.name = tag
  tag_list.save
}
