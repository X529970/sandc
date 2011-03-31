Feature: provide meal
	Client orders dinner
	
	Scenario: Customer orders flanksteak
		customer orders flanksteak
		waiter checks the menu 
		waiter tells customer it is not on the menu
		customer orders something else
		
	Scenario: customer orders pizza
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
		
		