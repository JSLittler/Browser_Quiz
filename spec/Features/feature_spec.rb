feature 'Browser_Quiz' do

  scenario 'seeing multiple choice questions' do
    sign_in
    expect(page).to have_content 'Hi Ned Stark. Click on the correct answer:'
  end

  scenario 'seeing a question' do
    sign_in
    expect(page).to have_content 'Question'
  end

  scenario 'seeing multiple choice answers' do
    sign_in
    expect(page).to have_content 'A:'
    expect(page).to have_content 'B:'
    expect(page).to have_content 'C:'
    expect(page).to have_content 'D:'
  end

end