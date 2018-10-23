feature 'Browser_Quiz' do

  scenario 'seeing multiple choice questions' do
    sign_in
    expect(page).to have_content 'Here is a question'
  end

end