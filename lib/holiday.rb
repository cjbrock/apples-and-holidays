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
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter].each do | holiday, supplies |
    supplies << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].collect {| holiday, supplies | supplies}.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do | season, holidays | 
    puts "#{season.capitalize}:"
    holidays.each do | each_holiday, supplies |
      # send to a string
      # split holidays on _
      # map through each holiday
      # capitalize each holiday
      # join on a space
      # add a colon
      puts "  #{each_holiday.to_s.split('_').map { |holiday| holiday.capitalize }.join(' ')}: #{supplies.join(", ")}" 
      # join all supplies with a comma and a space
      # puts the whole mess
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

  holiday_hash.map do | season, holidays |
    holidays.map do | each_holiday, supplies |
      each_holiday if supplies.include?("BBQ")
    end
  end.flatten.compact
end







