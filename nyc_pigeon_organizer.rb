def nyc_pigeon_organizer(data)
  # write your code here!
  
  hash = Hash.new
  data.each do |info, details|
    details.each do |detail, name_arr|
      name_arr.each do |name|
        if hash[name]
          if hash[name][info]
            hash[name][info] << detail.to_s
          else
            hash[name][info] = [detail.to_s]
          end
        else
          hash[name] = {info => [detail.to_s]}
        end
      end
    end
  end
  return hash
end