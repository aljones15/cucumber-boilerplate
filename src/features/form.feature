Feature:
    In order to keep my product stable
    As a developer or product manager
    I want to make sure that everything works as expected

Scenario: Check the Splash Page For DID
  Given I open the url "/"
  Then I expect that element "img[src*='splash']" becomes visible
  Then I expect that the title is "DID - Dine in the Dark"
  Then I expect that element "h2" does exist
  Then I expect that element "#flashlight" does exist
  Then I expect that element "#curtain" does exist

Scenario: Click to get to the main content
  When I click on the element "h2"
  Then I expect that element "#main" becomes visible

Scenario: Check the Home Page
  Given the element "#main" is visible
  Then I expect that element "#main h2" is visible
  Then I expect that element "#main h2" contains the text "DID - Dine in the Dark"
  Then I expect that there are 4 "p" elements
  Then I expect that element "#main a[href*='tel']" is visible
  Then I expect that element "#main a.c-hand" is visible
  Then I expect that there are 3 "#main img" elements

Scenario: I expect the side menu is present
  Given the element "#sideMenu" is visible
  Then I expect that element "#sideMenu img.center-block" is visible
  Then I expect that there are 9 "#sideMenu h4" elements

Scenario: I click on Experience
  Given the element "#sideMenu" is visible
  Then I expect that element "//div[@id='sideMenu']//h4[text()='Experience']" is visible
  When I click on the element "//div[@id='sideMenu']//h4[text()='Experience']"
  Then I expect the element "//h2[contains(@class,'did-title')][text()='Experience']" becomes visible

Scenario: Check the Experience Page
  Given the element "#main" is visible
  Then I expect that element "#main h2" is visible
  Then I expect that element "#main h2" contains the text "Experience"
  Then I expect that there are 3 "p" elements
  Then I expect that there are 3 "#main img" elements

Scenario: I click on Cuisine
  Given the element "#sideMenu" is visible
  Then I expect that element "//div[@id='sideMenu']//h4[text()='Cuisine']" is visible
  When I click on the element "//div[@id='sideMenu']//h4[text()='Cuisine']"
  Then I expect the element "//h2[contains(@class,'did-title')][text()='Cuisine']" becomes visible

Scenario: Check the Cuisine Page
  Given the element "#main" is visible
  Then I expect that element "#main h2" is visible
  Then I expect that element "#main h2" contains the text "Cuisine"
  Then I expect that there are 4 "p" elements
  Then I expect that there are 3 "#main img" elements

Scenario: I click on Social Purpose
  Given the element "#sideMenu" is visible
  Then I expect that element "//div[@id='sideMenu']//h4[text()='Social Purpose']" is visible
  When I click on the element "//div[@id='sideMenu']//h4[text()='Social Purpose']"
  Then I expect the element "//h2[contains(@class,'did-title')][text()='Social Purpose']" becomes visible

Scenario: Check the Social Purpose Page
  Given the element "#main" is visible
  Then I expect that element "#main h2" is visible
  Then I expect that element "#main h2" contains the text "Social Purpose"
  Then I expect that there are 2 "p" elements
  Then I expect the element "#main-content ul" is visible
  Then I expect that there are 3 "#main-content ul li" elements
  Then I expect that there are 3 "#main img" elements

Scenario: I click on Events
  Given the element "#sideMenu" is visible
  Then I expect that element "//div[@id='sideMenu']//h4[text()='Events']" is visible
  When I click on the element "//div[@id='sideMenu']//h4[text()='Events']"
  Then I expect the element "//h2[contains(@class,'did-title')][text()='Events']" becomes visible

Scenario: Check the Events Page
  Given the element "#main" is visible
  Then I expect that element "#main h2" is visible
  Then I expect that element "#main h2" contains the text "Events"
  Then I expect that there are 2 "p" elements
  Then I expect that there are 3 "#main img" elements

Scenario: I click on Gallery
  Given the element "#sideMenu" is visible
  Then I expect that element "//div[@id='sideMenu']//h4[text()='Gallery']" is visible
  When I click on the element "//div[@id='sideMenu']//h4[text()='Gallery']"
  Then I expect the element "//h2[contains(@class,'did-title')][text()='Gallery']" becomes visible

Scenario: Check the Gallery Page
  Given the element "#main" is visible
  Then I expect that element "#main h2" is visible
  Then I expect that element "#main h2" contains the text "Gallery"
  Then I expect that element "#main-content iframe[title*='youtube']" becomes visible

Scenario: I click on Reviews
  Given the element "#sideMenu" is visible
  Then I expect that element "//div[@id='sideMenu']//h4[text()='Reviews']" is visible
  When I click on the element "//div[@id='sideMenu']//h4[text()='Reviews']"
  Then I expect the element "//h2[contains(@class,'did-title')][text()='Reviews']" becomes visible

Scenario: Check the Reviews Page
  Given the element "#main" is visible
  Then I expect that element "#main h2" is visible
  Then I expect that element "#main h2" contains the text "Reviews"
  Then I expect that there are 2 "#main-content p" elements
  Then I expect the element "#main-content a[href*='Bangkok']" is visible

Scenario: I click on Reservation
  Given the element "#sideMenu" is visible
  Then I expect that element "//div[@id='sideMenu']//h4[text()='Reservations']" is visible
  When I click on the element "//div[@id='sideMenu']//h4[text()='Reservations']"
  Then I expect the element "//h2[contains(@class,'did-title')][text()='Reservations']" becomes visible

Scenario: I check the Reservations Page
  Given the element "#main-content" is visible
  Then I expect the element "#main h2.did-title" is visible
  And I expect the element "#main h2.did-title" contains the text "Reservations"
  And I expect that there are 3 "#main-content p" elements
  And I expect the element "form#ReservationForm" is visible
  And I expect the element "input#FullName" is visible
  And I expect the element "input#EmailReservation" is visible
  And I expect the element "input#PhoneReservation" is visible
  And I expect the element ".react-datepicker__input-container" is visible
  And I expect the element "label[For='Time']" is visible
  And I expect the element "label[For='Group']" is visible
  And I expect the element "textarea#Notes" is visible
  And I expect that there are 2 "form button" elements

Scenario: I click on Contact
  Given the element "#sideMenu" is visible
  Then I expect that element "//div[@id='sideMenu']//h4[contains(text(),'Contact')]" is visible
  When I click on the element "//div[@id='sideMenu']//h4[contains(text(),'Contact')]"
  Then I expect the element "//h3[contains(text(),'Contact')]" becomes visible

Scenario: I check the Contact Form
  Given the element "//h3[contains(text(),'Contact')]" is visible
  Then I expect the element "form#contactForm" becomes visible
  Then I expect that there are 1 "#main-content p" elements
  And I expect the element "input#name" is visible
  And I expect the element "input#email" is visible
  And I expect the element "input#phone" is visible
  And I expect that there are 1 "form button" elements
