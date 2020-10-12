# Checkout System
The idea is to implement a checkout system that conforms to the following interface :

```
co = Checkout.new(rules)
co.scan(item)
co.scan(item)
price = co.total
```

## Items
item | Price
--|
A | £30
B | £20
C | £50
D | £15

## Promotions
if 3 of item A are purchased, the price for all is £75.
if 2 of item B are purchased, the price for both is £35.
if the total basket price (after previous discounts) is over £150, the basket receives a discount of £20.

##Requirements
The marketing should be able to change promotions rules beyond the ones already in place.
