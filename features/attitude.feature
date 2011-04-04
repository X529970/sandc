Feature: Attitude adjustment
    Background:
	In order to put the customer in a receptive mood
	As a waiter
	I want to greet the customer
	So that he will be happy (and give me a big tip)
	
	Scenario: waiter greets the customer nicely
		Given there is a customer who is "happy"
		When I greet him with "Hello, My name is Bob. How can I serve you today?"
		Then he is "very happy"
		And leaves a big tip after his meal
		
	Scenario: waiter is smug
		Given there is a customer who is "happy"
		When I greet him with "Wadda you want?"
		Then he is "indifferent"
		And leaves a bad tip
