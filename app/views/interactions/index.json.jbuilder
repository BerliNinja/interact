json.array!(@interactions) do |interaction|
  json.extract! interaction, :id, :interaction, :description, :picture, :interactor, :interacted
  json.url interaction_url(interaction, format: :json)
end
