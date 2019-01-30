require 'pry'

def nyc_pigeon_organizer(data)
  #set up initial hash
  pigeon_list = {}

  #get all the pigeons
  data.each do |attribute, value|
  	value.each do |key, array|
  		array.each do |name|
  			if pigeon_list[name] != nil
  					if pigeon_list[name][attribute] != nil
  						pigeon_list[name][attribute].push(key.to_s)
  					else
  						pigeon_list[name][attribute] = [key.to_s]
						end
	  		else
					pigeon_list[name] = {
						attribute => [key.to_s]
					}
	  		end
  		end
  	end
  end
  pigeon_list
end