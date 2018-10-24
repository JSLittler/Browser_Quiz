require './lib/question'

describe '.all' do
  it 'returns a list of questions' do
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