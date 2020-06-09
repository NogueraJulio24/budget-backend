require "application_system_test_case"

class CreditCardsTest < ApplicationSystemTestCase
  setup do
    @credit_card = credit_cards(:one)
  end

  test "visiting the index" do
    visit credit_cards_url
    assert_selector "h1", text: "Credit Cards"
  end

  test "creating a Credit card" do
    visit credit_cards_url
    click_on "New Credit Card"

    fill_in "Close day", with: @credit_card.close_day
    fill_in "Limit", with: @credit_card.limit
    fill_in "Name", with: @credit_card.name
    fill_in "Pay day", with: @credit_card.pay_day
    click_on "Create Credit card"

    assert_text "Credit card was successfully created"
    click_on "Back"
  end

  test "updating a Credit card" do
    visit credit_cards_url
    click_on "Edit", match: :first

    fill_in "Close day", with: @credit_card.close_day
    fill_in "Limit", with: @credit_card.limit
    fill_in "Name", with: @credit_card.name
    fill_in "Pay day", with: @credit_card.pay_day
    click_on "Update Credit card"

    assert_text "Credit card was successfully updated"
    click_on "Back"
  end

  test "destroying a Credit card" do
    visit credit_cards_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Credit card was successfully destroyed"
  end
end
