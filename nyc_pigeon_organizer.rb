require 'pry'

def nyc_pigeon_organizer(data)
  data.each_with_object({}) do |(attr, hash), organized_hash|
    hash.each do |key, value|
      value.each do |name|
        organized_hash[name] ||= {}
        organized_hash[name][attr] ||= []
        organized_hash[name][attr] << key.to_s
      end
    end
  end
end
