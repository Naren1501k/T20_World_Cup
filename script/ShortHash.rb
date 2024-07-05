def sort_hash_keys_by_length(hash)
    sorted_keys = hash.keys.sort_by { |key| key.length }
    sorted_hash = {}
  
    sorted_keys.each do |key|
      sorted_hash[key] = hash[key]
    end
  
    return sorted_hash
end
