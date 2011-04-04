Feature: provide meal
	Background:
	In order to provide a fine dining experience
	Potential customers should be able to order, eat and pay for a meal from the menu
	

	Scenario: customer orders something from the menu
		Given customer orders "pizza"
		When waiter checks menu 
		And its there
		Then waiter places order with chef
		And chef cooks "pizza"
		And chef readies order
		And waiter delivers order
		And customer eats "pizza"
		And waiter gives check
		And customer pays
		And customer leaves
		
	Scenario: Customer orders something not on the menu
		Given customer orders "'flanksteak'"
		When waiter checks menu
		And  its not there
		Then waiter tells customer it is not on the menu
		And customer orders something else
	
	Scenario: Customer orders something not on the menu
		Given customer orders "flanksteak"
		When waiter checks menu
		And its not there
		Then waiter tells customer it is not on the menu
		And customer had heart set on "flanksteak" 
		And customer leaves

		
