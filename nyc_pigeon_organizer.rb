require 'pry'
def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |x,y|
    y.each do |k,array|
      array.each do |m|
        if pigeon_list.keys.include?(m) == false
          pigeon_list[m] = {}
        end
        if pigeon_list[m].include?(x) == false
          pigeon_list[m][x] = []
        end
         
        if pigeon_list[m][x].include?(k) == false && data[x][k].include?(m) == true
          pigeon_list[m][x] << k.to_s
        
        end
      end
    end
  end
  
  pigeon_list
end