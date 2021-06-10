require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask renders the form" do
    visit root_url
    assert_selector "p", text: "Ask your coach anything"
  end

    test "saying Hello yields a grumpy response from the coach" do
    visit root_url
    fill_in "ask", with: "Hello"
    click_on "Ask"

    assert_text "I don't care, get dressed and go to work!"
    take_screenshot
  end
end
