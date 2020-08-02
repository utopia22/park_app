# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


array = %w(#トイレ #駐車場  #芝生  #アスレチック  #水遊び  #ボール遊び  #公園散歩  #滑り台 #ブランコ  #砂場' #ジャングルジム #鉄棒)
array.each{ |tag|
  tag_list = ActsAsTaggableOn::Tag.new
  tag_list.name = tag
  tag_list.save
}

[
  [image: File.open('./app/assets/images/otikawa.jpg'), '落川公園', '公園の外周には三方に水路がのびており、ザリガニとりや水遊びが楽しめます。見通しのよい芝生の広場は親子連れでにぎわっています。日影が少ないので、夏場は帽子を忘れずに。', '日野市落川2012番地', '百草園駅より東へ徒歩約10分', '#水遊び #アスレチック #芝生 #ボール遊び'],
  [image: File.open('./app/assets/images/otikawa.jpg'), 'ほどくぼ地区広場', '少し傾斜のある草原と雑木林。遊具はありませんが、木登り、草すべり、どんぐり拾いなどが楽しめます。原っぱなので、はだしでかけまわっても大丈夫。ただし、周辺に人家が少ないので、子どもの一人遊びは避けたほうがよいでしょう。', '日野市程久保3丁目22番地の2', '京王線多摩動物公園駅より東へ徒歩5分']
].each do |img,name,outline,location,access,tag_list|
  Post.create!(
    {image: img, name: name, outline: outline, location: location, access: access, tag_list: tag_list}
  )
end
