Feature: Jako zarejestrowany użytkownik
  mogę zalogować się do aplikacji
Background:
  Given Strona logowania jest otwarta


  Scenario Outline: Logowanie jako <ktos>
    When wypełnię '<pole1>' wielkością '<username>'
    And wypełnię '<pole2>'wielkością '<password>'
    And kliknę sign in
    Then Niepoprawne logowanie jako '<ktos>'
    Examples:
   | pole1 | pole2 | username | password | ktos |
   | username | password |user1 |  user| user1|
   | username | password |user | user1 | user |
   | username | password |admin | |admin |

  Scenario Outline: Logowanie jako <ktos>
    When wypełnię '<pole1>' wielkością '<username>'
    And wypełnię '<pole2>'wielkością '<password>'
    And kliknę sign in
    Then Jestem zalogowany do aplikacji jakos '<ktos>'
    Examples:
   | pole1 | pole2 | username | password | ktos |
   | username | password |user |  user| user|
   | username | password |admin | admin |admin|