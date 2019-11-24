
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

def find_pet_by_name(pet_shop_hash, name_of_pet)
	for pet in pet_shop_hash[:pets]
		if pet[:name] == name_of_pet
			return pet
		end
	end	
	return nil
end

# So here what is being returned ?
# Am I just deleting the dogs name or the whole hash?
#Is this being permanantly deleted ?
def remove_pet_by_name(pet_shop_hash, name_of_pet)
	for pet in pet_shop_hash[:pets]
		if pet[:name] == name_of_pet
			pet.delete(:name)
			return nil
		end
	end	
end

# Needed to use the push method here as I am pushing the hash into an array,
# Merge didn't work 
# Still confused as to how this is actually an array
def add_pet_to_stock(pet_shop_hash, new_pet_hash)
	pet_shop_hash[:pets].push(new_pet_hash)
end

def stock_count(pet_shop_hash)
	pet_shop_hash[:pets].length
end

def customer_cash(customer)
	return customer[:cash]
end

def remove_customer_cash(customer, cash_to_remove)
	new_balance = customer[:cash].to_i - cash_to_remove.to_i
	customer[:cash] = new_balance
end


def customer_pet_count(customer)
	return customer[:pets].length
end


def add_pet_to_customer(customer, new_pet_hash)
	new_pet_name = new_pet_hash[:name]
	customer[:pets].push(new_pet_name)
end

def customer_can_afford_pet(customer, new_pet_hash)
	if customer[:cash] > new_pet_hash[:price]
		return true
	else return false
end


