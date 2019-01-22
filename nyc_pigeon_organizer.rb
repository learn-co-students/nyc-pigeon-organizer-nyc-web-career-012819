require "pry"

def nyc_pigeon_organizer(data)
  organized = {}
  data.each do |property, hash|
    hash.each do |description, array|
      array.each do |name|

        if !organized.keys.include?(name)
          organized[name] = {}
        end
        if !organized[name].keys.include?(property)
          organized[name][property] = []
        end
        if !organized[name][property].include?(description)
          organized[name][property] << description.to_s
        end
      end
    end
  end
  organized
end
