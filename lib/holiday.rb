require "pry"

holiday_supplies_hash = {
  :winter => {
    :christmas => ["Lights", "Wreath"],
    :new_years => ["Party Hats"]
  },
  :summer => {
    :fourth_of_july => ["Fireworks", "BBQ"]
  },
  :fall => {
    :thanksgiving => ["Turkey"]
  },
  :spring => {
    :memorial_day => ["BBQ"]
  }
}

def second_supply_for_fourth_of_july(holiday_supplies_hash)
  holiday_supplies_hash[:spring][:memorial_day].join("")
end

def add_supply_to_winter_holidays(holiday_supplies_hash, supply)
  holiday_supplies_hash[:winter][:christmas] = supply
  holiday_supplies_hash[:winter][:new_years] = supply
end

def add_supply_to_memorial_day(holiday_supplies_hash, supply)
  holiday_supplies_hash.[:spring][:memorial_day] = supply)
end

def add_new_holiday_with_supplies(holiday_supplies_hash, season, holiday, supplies)
  holiday_supplies_hash[season][holiday] = supplies
end

def all_winter_holiday_supplies(holiday_supplies_hash)
  holiday_supplies_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_supplies_hash)
  holiday_supplies_hash.each do |season, holidays|
      puts "#{season.to_s.capitalize!}:"
    holidays.each do |holiday, supplies|
      holiday = holiday.to_s.tr("_"," ").split.each {|word| word.capitalize!}.join(" ")
    puts "  #{holiday}: #{supplies.join(", ")}"
    end
  end
end
