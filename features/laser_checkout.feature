Feature: New, More Powerful Laser Checkout System

  (Reference: http://www.youtube.com/watch?v=Cu7gzjK16oc#t=2m57s)

  The Emperor's quest for global domination has prompted him to open a
  supermarket (Empire Market) with a new more powerful laser checkout system.

  Emperor Randy has instructed Lord (Chad) Vader to ensure that it becomes fully armed and operational.

  Empire Market sell only three products:

  | Product code | Name                     | Price   |
  | 001          | Lavender heart           | £9.25   |
  | 002          | Personalised cufflinks   | £45.00  |
  | 003          | Kids T-shirt             | £19.95  |

  The Emperor wants to ensure the loyalty of his customers by offering them 10% off when they spend over £60.

  Clint, the nightshift manager has too many lavendar hearts and wants to get encourage customers to buy more by reducing their price to £8.50 when their are two or more in the basket.

  The laser checkout system can scan items in any order, and because the Emperor and Nightshift manager change their minds often, it needs to be flexible regarding pricing rules.

  Once items are "scanned" they are in the "basket". When the basket is "totaled" all "discounts" are applied.


  As Chad Vader
  I want the more powerful laser checkout system to meet the needs of my master
  So that he can dominate the galaxy

  Scenario: Scan products
    Given Chad has started the checkout
    When he scans a product
    Then he should see that product in the basket
