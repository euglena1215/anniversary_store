yaml_filename = Rails.root.join('db', 'seeds', 'comments.yml')

File.open(yaml_filename) do |load_target_yaml|
  records = YAML.safe_load(load_target_yaml)
  records.each do |record|
    Comment.seed do |object|
      object.id = record['id']
      object.content = record['content']
      object.status = record['status']
      object.event_id = record['event_id']
      object.writer_id = record['writer_id']
    end
  end
end
