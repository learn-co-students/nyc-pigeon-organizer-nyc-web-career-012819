require 'pry'

def nyc_pigeon_organizer(data)
  new_obj = {}
  data.each do |key,value|
      value.each do |x,y|
        y.each do |name|
          if new_obj[name]
            if new_obj[name][key]
              new_obj[name][key]<<x.to_s
            else
            new_obj[name][key]=[x.to_s]
          end
          else
            new_obj[name]={key=>[x.to_s]}
          end
          end
        end
      end
  new_obj
end
