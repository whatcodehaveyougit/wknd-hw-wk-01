
def pet_shop_name(pet_shop_hash)
	return pet_shop_hash[:name]
end

def total_cash(pet_shop_hash)
	return pet_shop_hash[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop_hash, amount)
	total_cash = pet_shop_hash[:admin][:total_cash]
	updated_total_cash = total_cash + amount
	pet_shop_hash[:admin][:total_cash] = updated_total_cash
end

def pets_sold(pet_shop_hash)
		return pet_shop_hash[:admin][:pets_sold]
end

# Sixth Test

# I was doing this and using the variable instead of pet_shop_hash on the last line
# and it didn't seem to be working.

def increase_pets_sold(pet_shop_hash, new_pets)
	current_number_pets = pet_shop_hash[:admin][:pets_sold]
	updated_total_pets = current_number_pets + new_pets
	pet_shop_hash[:admin][:pets_sold] = updated_total_pets
end

def stock_count(pet_shop_hash)
	return pet_shop_hash[:pets].length
end

def pets_by_breed(pet_shop_hash, breed_of_one_pet)
	breed_array = []  
	for pet in pet_shop_hash[:pets]
		if pet[:breed] == breed_of_one_pet.to_s
			breed_array.push(breed_of_one_pet)
		end
	end	
	return breed_array
end


def pets_by_breed(pet_shop_hash, breed_not_found)
	breed_array = []  
	for pet in pet_shop_hash[:pets]
		if pet[:breed] == breed_not_found.to_s
			breed_array.push(breed_not_found)
		end
	end	
	return breed_array
end	









