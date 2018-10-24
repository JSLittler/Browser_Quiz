require 'pg'

class Question
  attr_reader :question_number

  def self.instance
    @question
  end
  
  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'Browser_Quiz_test')
    else
      connection = PG.connect(dbname: 'Browser_Quiz')
    end
    
    result = connection.exec("SELECT * FROM questions;")
    result.map { |question| question['question'] }
  end

  def set_question_number
    @question_number = rand(10)
  end

  def set_question
    set_question_number
    connection = PG.connect(dbname: 'Browser_Quiz')
    export = connection.exec("SELECT question FROM questions WHERE id = #{@question_number};")
    obj = export.map{|result| result}
    objhash = obj[0]
    @question = objhash["question"]
  end

  def set_answer_a
    connection = PG.connect(dbname: 'Browser_Quiz')
    export = connection.exec("SELECT answer_a FROM questions WHERE id = #{@question_number};")
    obj = export.map{|result| result}
    objhash = obj[0]
    @answer_a = objhash["answer_a"]
  end

  def set_answer_b
    connection = PG.connect(dbname: 'Browser_Quiz')
    export = connection.exec("SELECT answer_b FROM questions WHERE id = #{@question_number};")
    obj = export.map{|result| result}
    objhash = obj[0]
    @answer_b = objhash["answer_b"]
  end

  def set_answer_c
    connection = PG.connect(dbname: 'Browser_Quiz')
    export = connection.exec("SELECT answer_c FROM questions WHERE id = #{@question_number};")
    obj = export.map{|result| result}
    objhash = obj[0]
    @answer_c = objhash["answer_c"]
  end

  def set_correct_answer
    connection = PG.connect(dbname: 'Browser_Quiz')
    export = connection.exec("SELECT correct_answer FROM questions WHERE id = #{@question_number};")
    obj = export.map{|result| result}
    objhash = obj[0]
    @correct_answer = objhash["correct_answer"]
  end

end
