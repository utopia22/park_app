require 'csv'

namespace :import_csv do

  desc "CSVデータをインポートするタスク"

  task posts: :environment do

    path = File.join Rails.root, "db/csv_data/csv_data.csv"
    list = []
    CSV.foreach(path, headers: true) do |row|
      Post.create!(
          image: eval(row ["image"]),
          park: row["park"],
          outline: row["outline"],
          location: row["location"],
          access: row["access"],
          tag_list: row["tag_list"]
      )
    end
  end
  end
