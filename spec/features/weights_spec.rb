require 'rails_helper'

feature 'Weights' do
  scenario 'can save weight' do
    visit 'weights/new'
    fill_in('weight_weight', :with => 172.2)
    click_button("Save")
    expect(page).to have_content("Weight Saved")
    expect(page).to have_content('172.2')
  end

end


    # it "creates a job from the form" do
    #   visit '/jobs/new'
    #   fill_in('job_title', :with => "job title")
    #   fill_in('job_company', :with => "job company")
    #   click_button('Create Job')
    #   expect(page).to have_content("Job successfully created")
    #   expect(page).to have_content("job title")
    #   expect(page).to have_content("job company")
    #   expect(current_path).to eq '/jobs/1'

    # end