User.create(email: 'admin@example.com',   password: 'password')

array = %w(#トイレ #駐車場 #芝生 #アスレチック #水遊び #ボール遊び #公園散歩 #滑り台 #ブランコ #砂場 #ジャングルジム #鉄棒)
array.each{ |tag|
  tag_list = ActsAsTaggableOn::Tag.new
  tag_list.name = tag
  tag_list.save
}

[
  [File.open(File.open("#{Rails.root}./app/assets/image/yatoguti.jpg"),谷戸口公園,程久保の知る人ぞ知る,東京都日野市程久保１丁目２０−１４,モノレール程久保駅から徒歩5分,#砂場]
  [
  Post.create!(
    {image: img, name: name, outline: outline, location: location, access: access, tag_list: tag_list}
  )

Post.create!(image: File.open("#{Rails.root}/public/uploads/post/image/1/yatoguti.jpg"),
park: 谷戸口公園,
outline: 程久保の知る人ぞ知る,
location: 東京都日野市程久保１丁目２０−１４,
access: モノレール程久保駅から徒歩5分)
