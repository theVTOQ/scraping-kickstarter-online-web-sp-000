# require libraries/modules here
require 'nokogiri'

def create_project_hash
  # write your code here
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)
  projects = {}

  kickstarter.css("li.project.grid_4").each do |project|
    title = project.css("h2.bbcard_name strong a").text
    projects[title] = {}
    projects[title][:image_link] = project.css(".project-thumbnail a img").attribute("src").value
    projects[title][:description] =
    projects[title][:percent_funded] =
  end
  projects
end
