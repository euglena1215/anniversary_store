
yaml_filename = Rails.root.join('db', 'seeds', 'users.yml')

File.open(yaml_filename) do |load_target_yaml|
  records = YAML.safe_load(load_target_yaml)
  records.each do |record|
    User.seed do |object|
      object.id = record['id']
      object.email = record['email']
      object.name = record['name']
      object.password = record['password']
      object.password_confirmation = record['password_confirmation']
    end
  end
end
