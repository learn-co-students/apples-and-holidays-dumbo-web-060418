require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
holiday_hash[:winter][:christmas] << supply
holiday_hash[:winter][:new_years] << supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
holiday_hash[:spring][:memorial_day] << supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
holiday_hash[season][holiday_name] = supply_array

end

def all_winter_holiday_supplies(holiday_hash)
holiday_supplies = []
holiday_supplies << holiday_hash[:winter][:christmas]
holiday_supplies << holiday_hash[:winter][:new_years]
holiday_supplies.flatten
end

def all_supplies_in_holidays(holiday_hash)
holiday_hash.each do |season, holidays|
  puts "#{season.capitalize}:"
holidays.each do |holiday, supplies|
newH = []
if holiday.to_s.split('_').count >= 2
newH = holiday.to_s.split('_')
newH.each do |x|
  x.capitalize!
end
  puts "  #{newH.join(" ")}: #{supplies.join(", ")}"
else
  puts "  #{holiday.to_s.capitalize}: #{supplies.join(", ")}"
end
end
end
end

def all_holidays_with_bbq(holiday_hash)
bbqhdays = []
holiday_hash.each do |seasons, holidays|
holidays.each do |holiday, supplies|
  if supplies.join(" ").include? "BBQ"
bbqhdays << holiday
end
end
end
return bbqhdays
end
