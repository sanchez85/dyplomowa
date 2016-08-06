Feature: Jako zalogowany użytkownik
  wypełniam formularz zmówienia produktów.
Background:
  Given Zamówienie zostało poprawnie zrealizowane.



  Scenario Outline: Realizuję zamówienie
    When wypełnię '<pole1>' wielkością '<ulica>'
    And wypełnię '<pole2>'wielkością '<miasto>'
    And wypełnię '<pole3>'wielkością '<kod>'
    And kliknę zamawiam
    Then Nie można złożyć zamówienia.
    Examples:
   | pole1 | pole2 | pole3 |ulica | miasto | kod |
   | ulica | miasto |kod | Wałowa | Gdańsk  |80-180|
   | ulica | miasto |kod | W@ł0wa | Gdansk15  |80180|
   | ulica | miasto |kod | W@ł0wa | Llanfairpwllgwyngyllgogerychwyrndrobwllllantysiliog |80180AZR|

  Scenario Outline: Realizuję zamówienie
    When wypełnię '<pole1>' wielkością '<ulica>'
    And wypełnię '<pole2>'wielkością '<miasto>'
    And wypełnię '<pole3>'wielkością '<kod>'
    And kliknę zamawiam
    Then Zamówienie zostało złożone.
    Examples:
   | pole1 | pole2 | pole3 |ulica | miasto | kod |
   | ulica | miasto |kod | Wałowa | Gdańsk  |80-180|
   | ulica | miasto |kod | W@ł0wa | Gdansk15  |80180|
   | ulica | miasto |kod | W@ł0wa | Llanfairpwllgwyngyllgogerychwyrndrobwllllantysiliog |80180AZR|