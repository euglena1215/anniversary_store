yaml_filename = Rails.root.join('db', 'seeds', 'evaluations.yml')

File.open(yaml_filename) do |load_target_yaml|
  records = YAML.safe_load(load_target_yaml)
  records.each do |record|
    Evaluation.seed do |object|
      object.id = record['id']
      object.rate = record['rate']
      object.event_id = record['event_id']
      object.user_id = record['user_id']
    end
  end
end
