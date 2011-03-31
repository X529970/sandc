Feature: provide meal
	Background:
	In order to provide a fine dining experience
	Potential customers should be able to order, eat and pay for a meal from the menu
	

	Scenario: customer orders something from the menu
		customer orders pizza
		waiter checks menu
		waiter places order with chef
		chef cooks pizza
		chef readies order
		waiter delivers order
		customer eats pizza
		waiter gives check
		customer pays
		customer leaves
		
	Scenario: Customer orders something not on the menu
		customer orders flanksteak
		waiter checks the menu 
		waiter tells customer it is not on the menu
		customer orders something else
	
	Scenario: Customer orders something not on the menu
		customer orders flanksteak
		waiter checks the menu 
		waiter tells customer it is not on the menu
		customer had heart set on flanksteak 
		customer leaves

		
