yaml_filename = Rails.root.join('db', 'seeds', 'impressions.yml')

File.open(yaml_filename) do |load_target_yaml|
  records = YAML.safe_load(load_target_yaml)
  records.each do |record|
    Impression.seed do |object|
      object.id = record['id']
      object.content = record['content']      
      object.status = record['status']
      object.from_id = record['from_id']
      object.to_id = record['to_id']
    end
  end
end
