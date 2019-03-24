require "pry"

def get_first_name_of_season_winner(data, season)
  first_name = ""
  data.each do |season_num, contestants_array|
    if season_num == season
      contestants_array.each do |contestant_hash|
        contestant_hash.each do |info_key, info_val|
        if info_val == "Winner"
          first_name = contestant_hash["name"].split[0]
        end 
        end
      end
    end
  end  
    first_name
end

#data 
  #season_num
    #contestant_array
      #contestant_hash
        #info_key
          #info_val
          
def get_contestant_name(data, occupation)
  data.each do |season_num, contestants_array|
    contestants_array.each do |contestant_hash|
<<<<<<< HEAD
      contestant_hash.each do |info_key, info_val|
      if info_val == occupation
        return contestant_hash["name"]
        end
      end
      end
    end  
  end
  
=======
      binding.pry
      contestant_hash[:occupation] = occupation
        return contestant_hash["name"]
        
      end
    end  
  end
>>>>>>> 0c8dc6d95323eba2221eac5969a3e85aa9cce79d

def count_contestants_by_hometown(data, hometown)
  i = 0
  data.each do |season_num, contestants_array|
    contestants_array.each do |contestant_hash|
      contestant_hash.each do |info_key, info_val|
        if info_val == hometown
          i += 1
        end
      end
    end
  end
  i
  end  
  
def get_occupation(data, hometown)
  data.each do |season_num, contestants_array|
    contestants_array.each do |contestant_hash|
      contestant_hash.each do |info_key, info_val|
        if info_val == hometown
    return contestant_hash["occupation"]
        end
      end
    end
  end
end
  

def get_average_age_for_season(data, season)
   ages = []
   data.each do |season_num, contestants_array|
     if season_num == season
    contestants_array.each do |contestant_hash|
      contestant_hash.each do |info_key, info_val|
        if info_key == "age"
          ages.push(info_val.to_f)
        end
      end
    end
    end
  end
  (ages.sum / ages.length).round
end
