require 'pg'

def setup_test_database
  p "Setting up test database..."

  connection = PG.connect(dbname: 'Browser_Quiz_test')

  connection.exec("TRUNCATE questions;")
end

def sign_in
  visit('/')  
  fill_in("player_name", with: 'Ned Stark')
  click_button 'Submit'
end