require 'csv'

namespace :import_csv do

  desc "CSVデータをインポートするタスク"

  task posts: :environment do

    path = File.join Rails.root, "db/csv_data/csv_data.csv"
    list = []
    CSV.foreach(path, headers: true) do |row|
      list << {
          image: row ["row"],
          park: row["park"],
          outline: row["outline"],
          location: row["location"],
          access: row["access"],
          tag_list: row["tag_list"]
      }
    end
    puts "インポート処理を開始"

    begin
      binding.pry
      Post.create!(list)
      puts "インポート完了!!"
    rescue ActiveModel::UnknownAttributeError => invalid
      puts "インポートに失敗：UnknownAttributeError"
    end
  end
end
