require 'pry'

def nyc_pigeon_organizer(data)
  new_obj = {}
  data.map do |key,value|
      value.map do |x,y|
        y.collect do |name|
          binding.pry
          if new_obj[name][key]
            new_obj[name][key]<<x.to_s
          elsif new_obj[name]
            new_obj[name][key]=[x.to_s]
          else
            new_obj[name]={key=>x.to_s}
          end
          end
        end
      end

  new_obj
end
