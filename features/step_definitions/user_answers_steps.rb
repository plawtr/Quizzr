Then(/^my answer should be registered$/) do
  expect(UserAnswer.find_by user_id: @user.id, question_id: @question.id).not_to eq(nil)
  # expect(UserAnswer.all).not_to eq(nil)
end

