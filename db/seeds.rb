# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
gian = User.create(username: 'gian', password: 'password')

q_math = Quiz.find_or_create_by(title: 'Sample Simple Math', user_id: gian.id)
q_history = Quiz.find_or_create_by(title: 'Simple Simple History', user_id: gian.id)

question1 = Question.find_or_create_by(text_question: '1+1=_', answer: '2', quiz_id: q_math.id)
question2 = Question.find_or_create_by(text_question: '4+1=_', answer: '5', quiz_id: q_math.id)
question3 = Question.find_or_create_by(text_question: '5+2=_', answer: '7', quiz_id: q_math.id)
question4 = Question.find_or_create_by(text_question: '5*9=_', answer: '45', quiz_id: q_math.id)
question5 = Question.find_or_create_by(text_question: '16/4=_', answer: '4', quiz_id: q_math.id)

Choice.find_or_create_by(question_id: question1.id, text: '2')
Choice.find_or_create_by(question_id: question1.id, text: '1')
Choice.find_or_create_by(question_id: question1.id, text: '10')
Choice.find_or_create_by(question_id: question1.id, text: '3')

Choice.find_or_create_by(question_id: question2.id, text: '15')
Choice.find_or_create_by(question_id: question2.id, text: '7')
Choice.find_or_create_by(question_id: question2.id, text: '5')
Choice.find_or_create_by(question_id: question2.id, text: '4')

Choice.find_or_create_by(question_id: question3.id, text: '5')
Choice.find_or_create_by(question_id: question3.id, text: '7')
Choice.find_or_create_by(question_id: question3.id, text: '9')
Choice.find_or_create_by(question_id: question3.id, text: '1')

Choice.find_or_create_by(question_id: question4.id, text: '40')
Choice.find_or_create_by(question_id: question4.id, text: '55')
Choice.find_or_create_by(question_id: question4.id, text: '45')
Choice.find_or_create_by(question_id: question4.id, text: '95')

Choice.find_or_create_by(question_id: question5.id, text: '-4')
Choice.find_or_create_by(question_id: question5.id, text: '5')
Choice.find_or_create_by(question_id: question5.id, text: '1')
Choice.find_or_create_by(question_id: question5.id, text: '4')

h_question1 = Question.find_or_create_by(text_question: 'First President of USA', answer: 'George Washington', quiz_id: q_history.id)
h_question2 = Question.find_or_create_by(text_question: 'First State of the USA', answer: 'Delaware', quiz_id: q_history.id)
h_question3 = Question.find_or_create_by(text_question: 'Capital of the USA', answer: 'Washington, D.C.', quiz_id: q_history.id)

Choice.find_or_create_by(question_id: h_question1.id, text: 'George W. Bush')
Choice.find_or_create_by(question_id: h_question1.id, text: 'George Bush')
Choice.find_or_create_by(question_id: h_question1.id, text: 'George Washington')
Choice.find_or_create_by(question_id: h_question1.id, text: 'Barrack Obama')

Choice.find_or_create_by(question_id: h_question2.id, text: 'Virginia')
Choice.find_or_create_by(question_id: h_question2.id, text: 'North Carolina')
Choice.find_or_create_by(question_id: h_question2.id, text: 'New York')
Choice.find_or_create_by(question_id: h_question2.id, text: 'Delaware')

Choice.find_or_create_by(question_id: h_question3.id, text: 'Washington, D.C.')
Choice.find_or_create_by(question_id: h_question3.id, text: 'Baltimore, MD')
Choice.find_or_create_by(question_id: h_question3.id, text: 'Alexandria, VA')
Choice.find_or_create_by(question_id: h_question3.id, text: 'Wilmington,DE')


puts 'SEED DONE!'