json.array!(@sections) do |section|
  json.extract! section, :id, :name, :css, :html, :template_id
  # json.url section_url(section, format: :json)
end
