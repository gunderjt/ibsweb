# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

degree_type = [
  'Other',
  'Ph.D.',
  'M.A. M.S.',
  'B.A. or B.S.'
]

degree_type.each { |dt| DegreeType.create(degree_type: dt)}

['Other',
'Home Page',
'CV',
'Publications',
'Scientific',
'Professional',
'Social',
'Blog'].each { |wt| WebsiteType.create(web_type: wt)}


pos = [{pos: 'Acting Director', rank: 1},
{pos: 'Administrative Assistant', rank: 100},
{pos: 'Administrative Officer', rank: 50},
{pos: 'Assistant Director', rank: 50},
{pos: 'Assistant to the Director', rank: 100},
{pos: 'Classified Staff', rank: 300},
{pos: 'Co-Director', rank: 10},
{pos: 'Communications Specialist', rank: 300},
{pos: 'Director', rank: 1},
{pos: 'Director of Training and Technical Assistance', rank: 150},
{pos: 'Director, Blueprints for Healthy Youth Development', rank: 150},
{pos: 'Editor', rank: 150},
{pos: 'Faculty Affiliate', rank: 300},
{pos: 'Faculty Associate', rank: 300},
{pos: 'Field Representative', rank: 300},
{pos: 'Founding Director', rank: 1},
{pos: 'Graduate Research Assistant', rank: 300},
{pos: 'Graduate Student Coordinator', rank: 300},
{pos: 'Grants Coordinator', rank: 150},
{pos: 'Informal Affiliate', rank: 500},
{pos: 'Information Technology Specialist', rank: 300},
{pos: 'Interviewer', rank: 300},
{pos: 'Librarian', rank: 300},
{pos: 'Library Manager', rank: 300},
{pos: 'Past Director', rank: 10},
{pos: 'Postdoctoral Research Associate', rank: 300},
{pos: 'Professional Research Assistant', rank: 300},
{pos: 'Program Assistant', rank: 100},
{pos: 'Project Director, Safe Communities Safe Schools', rank: 150},
{pos: 'Project Manager', rank: 300},
{pos: 'Publications Administrator', rank: 300},
{pos: 'Research Affiliate', rank: 300},
{pos: 'Research Associate', rank: 300},
{pos: 'Resource Manager', rank: 300},
{pos: 'Senior Editor', rank: 150},
{pos: 'Student Assistant', rank: 300},
{pos: 'Systems Administrator', rank: 300},
{pos: 'Temporary Aide', rank: 300},
{pos: 'test', rank: 300},
{pos: 'Visiting Faculty Associate', rank: 300},
{pos: 'Visiting Research Associate', rank: 300},
{pos: 'Visiting Student', rank: 300},
{pos: 'Web Developer', rank: 300}]

pos.each { |pos_hash| Position.create(title: pos_hash[:pos], rank: pos_hash[:rank])}

['Administration',
'Computing and Research Services',
'Problem Behavior and Positive Youth Development Program',
'Center for the Study and Prevention of Violence',
'Environment and Behavior Program',
'Environment and Society Program',
'Natural Hazards Center',
'Political and Economic Change Program',
'Institutions Program',
'Population Program',
'Population Aging Center',
'CU Population Center',
'African Population Studies Research and Training Program',
'Health Behavior Program',
'Health and Society Program',
'Center for the Governance of Natural Resources',
'Special Projects'].each { |a| Affiliation.create(institute_name: a)}

