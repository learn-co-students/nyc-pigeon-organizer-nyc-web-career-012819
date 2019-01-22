require "pry"
def nyc_pigeon_organizer(data)
  # write your code here!
  new_hash = {}
  data.each do |attributes, value|
    value.each do |des, names|
      names.each do |p_name|
        if new_hash[p_name]
          if new_hash[p_name][attributes]
             binding.pry
            new_hash[p_name][attributes] << des.to_s
          else
            new_hash[p_name][attributes] = [des.to_s]
          end
        else
          new_hash[p_name] = {attributes => [des.to_s]}
        end
      end
    end
  end
  new_hash
end
