Feature: Attitude adjustment
    Background:
	In order to put the customer in a receptive mood
	As a waiter
	I want to greet the customer
	So that he will be happy and give me a big tip
	
	Scenario: waiter greets the customer nicely
		Given there is a customer
		When I go to his table
		Then I greet him
		And he responds positively
		And leaves a big tip after his meal
		
	Scenario: waiter is smug
		Given there is a customer
		When I go to his table
		Then I greet him
		And he responds negatively
		And leaves no tip
