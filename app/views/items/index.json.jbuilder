json.array!(@items) do |item|
  json.extract! item, :id, :facility_id, :dairy, :fish, :peanuts, :tree_Nuts, :eggs, :wheat_gluten, :soy, :crusta, :same_Line
  json.url item_url(item, format: :json)
end
