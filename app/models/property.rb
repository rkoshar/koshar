class Property < ActiveRecord::Base
  has_many :Images
  require 'csv'


  def self.import(file)

    Property.destroy_all

    CSV.open("headers.csv", "wb") do |csv|
      csv << %w(MLS status CurrListPrice ListDate StreetAddress StreetName StreetSuffix City State ZIP Area Bedrooms Bathrooms SquareFootage LotSize Remarks YearBuilt Type)

      CSV.foreach(file.path) do |row|
        csv << row
      end
    end

    CSV.foreach("headers.csv", headers: true) do |row|
      Property.create! row.to_hash
    end

    Property.where(:MLS => 0).destroy_all
  end
end

#    CSV.open("headers.csv", "wb") do |csv|
#      csv << %w(test)
#    end



   # arr_of_arrs = CSV.read(file.path)

#    CSV.open(file.path, 'w', :write_headers=> true,
#    :headers => ["MLS", "status", "CurrListPrice", "ListDate", "StreetAddress", "StreetName", "StreetSuffix",
#    "City", "State", "ZIP", "Area", "Bedrooms", "Bathrooms", "SquareFootage", "LotSize", "Remarks", "YearBuilt",
#    "Type"]) do |hdr|
#      hdr << ["MLS, status, CurrListPrice, ListDate, StreetAddress, StreetName, StreetSuffix,
#              City, State, ZIP, Area, Bedrooms, Bathrooms, SquareFootage, LotSize, Remarks, YearBuilt,
#              Type"]
#    end

#   CSV.foreach(file.path, headers: false) do |row|
#      Property.create! row.to_hash
#   end

