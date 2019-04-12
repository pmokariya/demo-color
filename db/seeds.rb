# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.fi: rst)
primany_colors = PrimaryColor.create([
										{ name: 'Red',hash_code: "#D32F2F" },
										{ name: 'Pink',hash_code: "#D81B60" },
										{ name: 'Purpal',hash_code: "#9C27B0" },
										{ name: 'Deep Purpal',hash_code: "#673AB7" },
										{ name: 'Indigo',hash_code: "#3F51B5" },
										{ name: 'Blue',hash_code: "#1976D2" },
										{ name: 'Light Blue',hash_code: "#03A9F4" },
										{ name: 'Cyan',hash_code: "#0098A6" },
										{ name: 'Teal',hash_code: "#00B39E" },
										{ name: 'Green',hash_code: "#42B348" },
										{ name: 'Light Green',hash_code: "#8BC34A" },
										{ name: 'Lime',hash_code: "#8BC34A" },
										{ name: 'Yellow',hash_code: "#FDD835" },
										{ name: 'Amber',hash_code: "#FFB300" },
										{ name: 'Orange',hash_code: "#FB8C00" },
										{ name: 'Deep Orange',hash_code: "#FF5722" },
										{ name: 'Brown',hash_code: "#795548" },
										{ name: 'Gray',hash_code: "#616161" },
										{ name: 'Blue Gray',hash_code: "#455A64" } 
									])

primany_colors.each do |pc|
	if pc.name == "Red"
		pc.secondary_colors.create(name: "red-1",hash_code: "#E67373")
		pc.secondary_colors.create(name: "red-2",hash_code: "#801C1C")
	end
	if pc.name == "Pink"
		pc.secondary_colors.create(name: "pink-1",hash_code: "#E6739D")
		pc.secondary_colors.create(name: "pink-2",hash_code: "#800F38")
	end
	if pc.name == "Purpal"
		pc.secondary_colors.create(name: "purpal-1",hash_code: "#D473E6")
		pc.secondary_colors.create(name: "purpal-2",hash_code: "#6C0080")
	end
	if pc.name == "Deep Purpal"
		pc.secondary_colors.create(name: "deep-purpal-2",hash_code: "#9D73E6")
		pc.secondary_colors.create(name: "deep-purpal-2",hash_code: "#492980")
	end
	if pc.name == "Indigo"
		pc.secondary_colors.create(name: "indigo-1",hash_code: "#7384E6")
		pc.secondary_colors.create(name: "indigo-2",hash_code: "#2D3980")
	end
	if pc.name == "Blue"
		pc.secondary_colors.create(name: "blue-1",hash_code: "#73ACE6")
		pc.secondary_colors.create(name: "blue-2",hash_code: "#0F4780")
	end
	if pc.name == "Light Blue"
		pc.secondary_colors.create(name: "light-blue-1",hash_code: "#73C1E6")
		pc.secondary_colors.create(name: "light-blue-2",hash_code: "#015880")
	end
	if pc.name == "Cyan"
		pc.secondary_colors.create(name: "light-blue-1",hash_code: "#73DCE6")
		pc.secondary_colors.create(name: "light-blue-2",hash_code: "#007580")
	end
	if pc.name == "Teal"
		pc.secondary_colors.create(name: "light-blue-1",hash_code: "#73E6D8")
		pc.secondary_colors.create(name: "light-blue-2",hash_code: "#008071")
	end
	if pc.name == "Green"
		pc.secondary_colors.create(name: "light-blue-1",hash_code: "#73E678")
		pc.secondary_colors.create(name: "light-blue-2",hash_code: "#2F8033")
	end
	if pc.name == "Light Green"
		pc.secondary_colors.create(name: "light-blue-1",hash_code: "#B0E673")
		pc.secondary_colors.create(name: "light-blue-2",hash_code: "#5B8030")
	end

	if pc.name == "Lime"
		pc.secondary_colors.create(name: "lime-1",hash_code: "#DAE673")
		pc.secondary_colors.create(name: "lime-2",hash_code: "#788032")
	end
	if pc.name == "Yellow"
		pc.secondary_colors.create(name: "yellow-1",hash_code: "#FFD980")
		pc.secondary_colors.create(name: "yellow-2",hash_code: "#FFD980")
	end
	if pc.name == "Amber"
		pc.secondary_colors.create(name: "amber-1",hash_code: "#FFD980")
		pc.secondary_colors.create(name: "amber-2",hash_code: "#996B00")
	end
	if pc.name == "Orange"
		pc.secondary_colors.create(name: "orange-1",hash_code: "#FFC680")
		pc.secondary_colors.create(name: "orange-2",hash_code: "#FF9D80")
	end
	if pc.name == "Deep Orange"
		pc.secondary_colors.create(name: "deep-orange-1",hash_code: "#FF9D80")
		pc.secondary_colors.create(name: "deep-orange-2",hash_code: "#B33B17")
	end
	if pc.name == "Brown"
		pc.secondary_colors.create(name: "brown-1",hash_code: "#B2988F")
		pc.secondary_colors.create(name: "brown-2",hash_code: "#593E36")
	end
	if pc.name == "Gray"
		pc.secondary_colors.create(name: "gray-1",hash_code: "#999999")
		pc.secondary_colors.create(name: "gray-2",hash_code: "#4D4D4D")
	end
	if pc.name == "Blue Gray"
		pc.secondary_colors.create(name: "blue-gray-1",hash_code: "#8E9BA2")
		pc.secondary_colors.create(name: "blue-gray-2",hash_code: "#36454D")
	end
end