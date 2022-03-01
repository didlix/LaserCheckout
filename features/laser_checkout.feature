Feature: New, More Powerful Laser Checkout System

  (Reference: http://www.youtube.com/watch?v=Cu7gzjK16oc#t=2m57s)

  The Emperor's quest for galactic domination has prompted him to open a
  supermarket (Empire Market) with a new more powerful laser checkout system.

  Emperor Randy has instructed Lord (Chad) Vader to ensure that it becomes fully armed and operational.

  Empire Market sell only three products:

  | Product code | Name                     | Price   |
  | 001          | Lavender heart           | £9.25   |
  | 002          | Personalised cufflinks   | £45.00  |
  | 003          | Kids T-shirt             | £19.95  |

  The Emperor wants to ensure the loyalty of his customers by offering them 10% off when they spend over £60.

  Clint, the nightshift manager has too many lavendar hearts and wants to get encourage customers to buy more by 
  reducing their price to £8.50 when their are two or more in the basket.

  The laser checkout system can scan items in any order, and because the Emperor and Nightshift manager change 
  their minds often, it needs to be flexible regarding pricing rules.

  Once items are "scanned" they are in the "basket". When the basket is "totaled" all "discounts" are applied.


  As Chad Vader
  I want the more powerful laser checkout system to meet the needs of my master
  So that he can dominate the galaxy

  Scenario: Scan products
    Given the new more powerful laser checkout system is fully armed and operational
    When I scan a product
    Then I should see that product in the basket

  Scenario: Total products
    Given I have scanned some products
    When I total the basket
    Then I should see how much money I owe

  Scenario Outline: Checkout applies special offers
    Given the new more powerful laser checkout system is fully armed and operational
    And I scan these products: <Product codes>
    When I total the basket
    Then the total owed should be: "<Total>"

    Scenarios: 10% off when I spend over £60
      | Product codes | Total |
      | 001, 002, 003 | 66.78 |

    Scenarios: Lavendar hearts become £8.50 when you buy two or more
      | Product codes | Total |
      | 001, 003, 001 | 36.95 |
      | 001, 001, 001 | 25.5  |

    Scenarios: Both offers can be used in combination
      | Product codes      | Total |
      | 001, 002, 001, 003 | 73.76 |
