require "csv"

class ImportCsv
  def self.import(path)
    list = []
    CSV.foreach(path, headers: true) do |row|
      list << row.to_h
    end
    list
  end

  def self.user_data
    list = import("db/csv_data/user_data.csv")

    puts "開始"
    User.create!(list)
    puts "完了"
  end
end
