require 'rails_helper'

describe 'User sees specific job with all associated tags' do
  scenario 'a user sees a job for a specific company and sees all tags' do
    company = Company.create(name: 'Test Company')
    job = company.jobs.create(title: 'Developer', level_of_interest: 70, city: 'Denver')
    tag = Tag.new(title: 'Software')
    job.tags.append(tag)

    visit company_job_path(company, job)

    expect(page).to have_content('Test Company')
    expect(page).to have_content('Developer')
    expect(page).to have_content('70')
    expect(page).to have_content('Tags: Software - 1')
  end
end
