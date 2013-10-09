Given /^I not have aticles$/ do 
  Article.all
end

Given /^I have articles titled (.+) and with context (.+)$/ do |titles, context|
  titles.split(', ').each do |title|
  context.split(', ').each do |context|
    Article.create!(title: title, context: context).save!
  end
  end
end


Given /^I want edit my title for (.+) and my context for (.+) of article$/ do |title, context|
  step "I fill in \"article_title\" with \"#{title}\""
  step "I fill in \"Context\" with \"#{context}\""
  step "I press \"Update Article\"" 
end

Then /^I should see "([^\"]*)", "([^\"]*)"$/ do |text, context|
  page.should have_content(text, context)
end

When /^I follow link for "(.+)"$/ do |link|
  click_link(link)
end

When /^I press link for "(.+)"$/ do |link|
  click_link(link)
  page.driver.browser.switch_to.alert.accept
end
