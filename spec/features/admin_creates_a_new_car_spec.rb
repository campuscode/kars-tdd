require 'rails_helper'

feature "Admin creates a new car" do
  scenario "successfully" do
    car = build(:car)
    visit new_car_path
    fill_in "Motor", with: car.motor
    fill_in "Preço", with: car.price
    fill_in "Km", with: car.km
    fill_in "Modelo", with: car.model
    fill_in "Ano", with: car.year
    fill_in "Nome", with: car.name

    click_button "Salvar"

    expect(page).to have_content(car.name)
    expect(page).to have_content(car.motor)
    expect(page).to have_content(car.year)
    expect(page).to have_content(car.price)
    expect(page).to have_content(car.km)
    expect(page).to have_content(car.model)
  end
end
