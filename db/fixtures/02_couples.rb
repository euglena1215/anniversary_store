yaml_filename = Rails.root.join('db', 'seeds', 'couples.yml')

File.open(yaml_filename) do |load_target_yaml|
  records = YAML.safe_load(load_target_yaml)
  records.each do |record|
    Couple.seed do |object|
      object.id = record['id']
      object.user1_id = record['user1_id']
      object.user2_id = record['user2_id']
      object.ended_at = record['ended_at']
    end
  end
end
