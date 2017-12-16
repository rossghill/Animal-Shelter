require_relative('../models/animal')
require_relative('../models/owner')
require_relative('../models/animal_type')
require_relative('../models/adoption')

# Date is ISO 8601 format: YYYY-MM-DD

animal1 = Animal.new({'name' => 'Chico',
                      'admission_date' => '2017-07-01',
                      'adoptable' => 'yes',
                      'animal_type' => 'Dog',
                      'adoption_status' => 'unadopted'})
animal2 = Animal.new({'name' => 'Gizmo',
                      'admission_date' => '2017-11-17',
                      'adoptable' => 'no',
                      'animal_type' => 'Guinea Pig',
                      'adoption_status' => 'unadopted'})
animal3 = Animal.new({'name' => 'Liz',
                      'admission_date' => '2017-11-08',
                      'adoptable' => 'yes',
                      'animal_type' => 'Cat',
                      'adoption_status' => 'adopted'})
animal4 = Animal.new({'name' => 'Elmo',
                      'admission_date' => '2017-12-09',
                      'adoptable' => 'no',
                      'animal_type' => 'Python',
                      'adoption_status' => 'adopted'})

animal1.save()
animal2.save()
animal3.save()
animal4.save()

owner1 = Owner.new({'name' => 'Zsolt'})
owner2 = Owner.new({'name' => 'Alex'})
owner3 = Owner.new({'name' => 'John'})

owner1.save()
owner2.save()
owner3.save()
