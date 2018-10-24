require 'pg'

class Question
  
  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'Browser_Quiz_test')
    else
      connection = PG.connect(dbname: 'Browser_Quiz')
    end
    
    result = connection.exec("SELECT * FROM questions;")
    result.map { |question| question['question'] }
  end

end
