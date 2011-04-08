Feature: provide meal
	Background:
	In order to provide a fine dining experience
	Potential customers should be able to order, eat and pay for a meal from the menu
	

	Scenario: customer orders something from the menu
		Given customer orders "pizza"
		When waiter checks menu 
		And its there
		Then waiter places order with chef
		And waiter serves order
		And customer eats "pizza"
		And waiter gives check
		And customer pays
		And customer leaves
		
	Scenario: Customer orders something not on the menu
		Given customer orders "flanksteak"
		When waiter checks menu
		And  waiter tells customer "flanksteak" is not there
		Then customer orders "plankton"
	
