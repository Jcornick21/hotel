What classes does each implementation include? Are the lists the same?
Each implementation includes the CartEntry, ShoppingCart, Order. the list of the classes are the same.


Write down a sentence to describe each class.
CartEntry is the product and the price of the product
ShoppingCart is the actual list of products
Order is the total price of everything in the ShoppingCart


How do the classes relate to each other? It might be helpful to draw a diagram on a whiteboard or piece of paper.

the CartEntry is what populates the list of the ShoppingCart and the order totals the cost of the ShoppingCart list.


What data does each class store? How (if at all) does this differ between the two implementations?
implementation A :
CartEntry stores the price and quantity of product
ShoppingCart stores the list of items
Order stores a new instance of shopping cart and sales tax and sum

implementation B :
CartEntry stores the price and quantity of product
ShoppingCart stores the list of items and sum
Order stores a new instance of shopping cart and sales tax and subtotal


What methods does each class have? How (if at all) does this differ between the two implementations?

implementation A has 4 methods:
 3 are initialize methods and 1 is a total price method.

implementation B has 6 methods:

3 are initialize and there are 2 price methods and 1 total_price method.

Consider the Order#total_price method. In each implementation:
Is logic to compute the price delegated to "lower level" classes like ShoppingCart and CartEntry, or is it retained in Order?

In implementation A the logic to compute price is retained in Order class in implementation B the logic to compute price seems to be broken up into two smaller price methods on CartEntry and ShoppingCart


Does total_price directly manipulate the instance variables of other classes? No


If we decide items are cheaper if bought in bulk, how would this change the code? Yes, Which implementation is easier to modify? implementation B


Which implementation better adheres to the single responsibility principle? implementation A


Bonus question once you've read Metz ch. 3: Which implementation is more loosely coupled? implementation B
