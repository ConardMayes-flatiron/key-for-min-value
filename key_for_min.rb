# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value
require "pry"

def key_for_min_value(name_hash)
    lowest_value_name = ""
    name_hash.collect do |name,age|
        if lowest_value_name == ""
            lowest_value_name = "#{name}"
        elsif age < name_hash[:"#{lowest_value_name}"]
            lowest_value_name = name
        end
    end
    if lowest_value_name == ""
        nil
    else
        return lowest_value_name.to_sym
    end
end