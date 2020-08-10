require 'csv'

namespace :import_csv do

  desc "postテーブルのCSVデータをインポートするタスク"
  task posts: :environment do
    path = File.join Rails.root, "db/csv_data/post_data.csv"
    list = []
    CSV.foreach(path, headers: true) do |row|
      list << {
          image: File.open("#{Rails.root}/#{row["image"]}"),
          park: row["park"],
          outline: row["outline"],
          location: row["location"],
          access: row["access"],
          tag_list: row["tag_list"]
      }
    end
    puts "インポート処理を開始"
     Post.create!(list)
      puts "インポート完了!!"
  end

  desc "userテーブルのCSVデータをインポートするタスク"
  task users: :environment do
    path = File.join Rails.root, "db/csv_data/user_data.csv"
    list = []
    CSV.foreach(path, headers: true) do |row|
      list << {
          image_name: File.open("#{Rails.root}/#{row["image_name"]}"),
          name: row["name"],
          email: row["email"],
          password: row["password"],
      }
    end
    puts "インポート処理を開始"
     User.create!(list)
      puts "インポート完了!!"
  end

end
