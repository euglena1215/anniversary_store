yaml_filename = Rails.root.join('db', 'seeds', 'anniversaries.yml')

File.open(yaml_filename) do |load_target_yaml|
  records = YAML.safe_load(load_target_yaml)
  records.each do |record|
    Anniversary.seed do |object|
      object.id = record['id']
      object.year = record['year']
      object.month = record['month']
      object.day = record['day']
      object.title = record['title']
      object.couple_id = record['couple_id']
    end
  end
end
