require './lib/question'

describe '.all' do
  it 'returns a list of questions' do
    connection = PG.connect(dbname: 'Browser_Quiz_test')

    connection.exec("INSERT INTO questions VALUES ('1',   'What always ends everything?', 'The apocalypse', 'The letter G', 'Bad personal hygiene', 'b');")
    connection.exec("INSERT INTO questions VALUES ('2',   'A boy and a doctor go fishing. The boy is the doctor''s son, but the doctor is not the boy''s father. Who is the doctor?', 'His grandmother', 'God', 'His mother', 'c');")
    connection.exec("INSERT INTO questions VALUES ('3',   'What has four fingers and a thumb, but is not alive.', 'A glove', 'Pudsey', 'Margaret Thatcher', 'a');")
    connection.exec("INSERT INTO questions VALUES ('4',   'I have keys but no lock. I have space but no room. You can enter but you can''t go outside, what am I?', 'An agoraphobic', 'A keyboard', 'A bank', 'b');")
    connection.exec("INSERT INTO questions VALUES ('5',   'What gets wet when it dries?', 'A radiator', 'A river', 'A towell', 'c');")
    connection.exec("INSERT INTO questions VALUES ('6',   'What comes once in a minute, twice in a momment and never in a thousand years?', 'A rabbit', 'A supernova', 'The letter M', 'c');")
    connection.exec("INSERT INTO questions VALUES ('7',   'What gets bigger the more you take away?', 'A hole', 'Carol Vorderman', 'A mob', 'a');")
    connection.exec("INSERT INTO questions VALUES ('8',   'I have two coins that add up to 30 pence. One is not a 20 pence piece. What are the two coins?', 'Two 10p pieces, close enough', 'A 20p pieceand a 10p piece', 'Here''s £50, I don''t deal in shrapnel', 'b');")
    connection.exec("INSERT INTO questions VALUES ('9',   'What goes all around the world, but stays in the corner?', 'An ambitious introvert', 'The naughty kid on a class trip down under', 'A stamp', 'c');")
    connection.exec("INSERT INTO questions VALUES ('10',  'Mary''s mother had four daughters. April, June and May were the names of the first three. What was the fourth called?', 'July', 'Nothing. No one talks to her anyway', 'Mary', 'c');")
    
    questions = Question.all
    expect(questions).to include "What always ends everything?"
    expect(questions).to include "A boy and a doctor go fishing. The boy is the doctor's son, but the doctor is not the boy's father. Who is the doctor?"
    expect(questions).to include "What has four fingers and a thumb, but is not alive."
    expect(questions).to include "I have keys but no lock. I have space but no room. You can enter but you can't go outside, what am I?"
    expect(questions).to include "What gets wet when it dries?"
    expect(questions).to include "What comes once in a minute, twice in a momment and never in a thousand years?"
    expect(questions).to include "What gets bigger the more you take away?"
    expect(questions).to include "I have two coins that add up to 30 pence. One is not a 20 pence piece. What are the two coins?"
    expect(questions).to include "What goes all around the world, but stays in the corner?"
    expect(questions).to include "Mary's mother had four daughters. April, June and May were the names of the first three. What was the fourth called?"
  end
end
