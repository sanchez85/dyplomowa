Feature: Jako zalogowany użytkownik
  mogę dodać wybrane produkty do koszyka
Background:
  Given Wybrane produkty zostały dodane do koszyka


    Scenario Outline: Wybieram produkt <produkt>
    When klikam przycisk zamów przy <produkt>
    Then Produkt nie został dodany do koszyka.
    Examples:
   | produkt |
   | produkt1 |
   | produkt2 |
   | produkt3 |
    Scenario Outline: Wybieram produkt <produkt>
    When klikam przycisk zamów przy <produkt>
    Then Produkt został poprawnie dodany do koszyka.
    Examples:
   | produkt |
   | produkt1 |
   | produkt2 |
   | produkt3 |