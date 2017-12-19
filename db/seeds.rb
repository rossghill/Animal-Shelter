require('pry-byebug')

require_relative('../models/owner')
require_relative('../models/animal')
require_relative('../models/animal_type')
require_relative('../models/adoption')

# Date is ISO 8601 format: YYYY-MM-DD

Adoption.delete_all()
Animal.delete_all()
Owner.delete_all()
AnimalType.delete_all()

owner0 = Owner.new({'name' => 'none'})
owner1 = Owner.new({'name' => 'Zsolt'})
owner2 = Owner.new({'name' => 'Alex'})
owner3 = Owner.new({'name' => 'John'})

owner0.save()
owner1.save()
owner2.save()
owner3.save()

animal1 = Animal.new({'name' => 'Chico',
                      'admission_date' => '2017-07-01',
                      'adoptable' => 'Yes',
                      'animal_type' => 'Dog',
                      'adoption_status' => 'unadopted'})
animal2 = Animal.new({'name' => 'Gizmo',
                      'admission_date' => '2017-11-17',
                      'adoptable' => 'No',
                      'animal_type' => 'Guinea Pig',
                      'adoption_status' => 'unadopted'})
animal3 = Animal.new({'name' => 'Liz',
                      'admission_date' => '2017-11-08',
                      'adoptable' => 'No',
                      'animal_type' => 'Cat',
                      'adoption_status' => 'adopted'})
animal4 = Animal.new({'name' => 'Elmo',
                      'admission_date' => '2017-12-09',
                      'adoptable' => 'No',
                      'animal_type' => 'Python',
                      'adoption_status' => 'adopted'})
animal5 = Animal.new({'name' => 'Jocky',
                      'admission_date' => '2017-12-09',
                      'adoptable' => 'No',
                      'animal_type' => 'Budgie',
                      'adoption_status' => 'adopted'})

animal1.save()
animal2.save()
animal3.save()
animal4.save()
animal5.save()


adoption1 = Adoption.new({'adoption_date' => '2017-12-16',
  'owner_id' => owner1.id,
  'animal_id' => animal3.id})
adoption2 = Adoption.new({'adoption_date' => '2017-12-17',
  'owner_id' => owner1.id,
  'animal_id' => animal4.id})
adoption3 = Adoption.new({'adoption_date' => '2017-12-19',
  'owner_id' => owner1.id,
  'animal_id' => animal5.id})

adoption1.save()
adoption2.save()
adoption3.save()

# animal_type1 = AnimalType.new({'name' => 'Dog'})
# animal_type2 = AnimalType.new({'name' => 'Guinea Pig'})
# animal_type3 = AnimalType.new({'name' => 'Cat'})
# animal_type4 = AnimalType.new({'name' => 'Python'})
#
# animal_type1.save()
# animal_type2.save()
# animal_type3.save()
# animal_type4.save()

all_animals = Animal.all()
all_adoptions = Adoption.all()
animal4.owner
binding.pry()
nil
