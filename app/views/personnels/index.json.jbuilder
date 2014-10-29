json.array!(@personnels) do |personnel|
  json.extract! personnel, :id, :uname, :mailing_list, :formally_affiliated, :retiree, :rostered, :first_name, :last_name, :salutation, :notes, :research_interests, :skills_expertise, :bio, :employee_id
  json.url personnel_url(personnel, format: :json)
end
