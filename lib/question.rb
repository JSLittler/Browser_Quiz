require 'pg'

class Question
  
  def self.all
    connection = PG.connect(dbname: 'Browser_Quiz')
    result = connection.exec("SELECT * FROM questions;")
    result.map { |question| question['question'] }
  end

end
