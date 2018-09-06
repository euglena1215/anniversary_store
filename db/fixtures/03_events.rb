yaml_filename = Rails.root.join('db', 'seeds', 'events.yml')

File.open(yaml_filename) do |load_target_yaml|
  records = YAML.safe_load(load_target_yaml)
  records.each do |record|
    Event.seed do |object|
      object.id = record['id']
      object.image1 = record['image1']
      object.image2 = record['image2']
      object.image3 = record['image3']
      object.title = record['title']
      object.couple_id = record['couple_id']
      object.location = record['location']
    end
  end
end
