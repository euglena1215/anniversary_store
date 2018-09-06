yaml_filename = Rails.root.join('db', 'seeds', 'alliances.yml')

File.open(yaml_filename) do |load_target_yaml|
  records = YAML.safe_load(load_target_yaml)
  records.each do |record|
    Alliance.seed do |object|
      object.id = record['id']
      object.logo = record['logo']
      object.url = record['url']
      object.name = record['name']
      object.message = record['message']
    end
  end
end
