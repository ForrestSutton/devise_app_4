#todo.md

<!-- rails generate controller Facilities new index no-test-framework

rails generate model Facility facilityName:string facility_id:integer dairy:boolean fish:boolean  peanuts:boolean tree_Nuts:boolean eggs:boolean  wheat_gluten:boolean  soy:boolean crusta:boolean -->

facility_id :dairy,  :fish,  :peanuts, :tree_Nuts, :eggs,  :wheat_gluten,  :soy, :crusta -->

a faclility process peanuts, this chocolate bar does not contain peanuts, a cholocate bar that is processed on the sameline does contain peanuts

rails generate scaffold Item facility_id:integer, dairy:boolean,  fish:boolean,  peanuts:boolean, tree_Nuts:boolean, eggs:boolean,  wheat_gluten:boolean,  soy:boolean, crusta:boolean, same_Line:string --no-test-framework