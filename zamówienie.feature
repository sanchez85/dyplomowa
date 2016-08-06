Feature: Jako zalogowany użytkownik
  zamawiam produkty dodane wcześniej do koszyka.
Background:
  Given Strona z formularzem zamówienia jest otwarta



  Scenario Outline: Zamawiam wybrane produkty
    When klikam przycisk order
    Then Nie można zrealizować zamówienia

  Scenario Outline: Zamawiam wybrane produkty
    When klikam przycisk order
    Then Wybrane produkty zostały dodane do zamówienia