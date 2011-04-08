Feature: Attitude adjustment
    Background:
	In order to put the customer in a receptive mood
	As a waiter
	I want to greet the customer
	So that he will be happy (and give me a big tip - tested in another feature)
	
	Scenario: waiter greets the customer nicely
		Given there is a customer who is "happy"
		When I greet him with "Hello, My name is Bob. How can I serve you today?"
		Then he is "very happy"
		
	Scenario: waiter is smug
		Given there is a customer who is "happy"
		When I greet him with "Wadda you want?"
		Then he is "indifferent"
		
	Scenario: waiter greets the customer nicely
		Given there is a customer who is "grumpy"
		When I greet him with "Hello, My name is Bob. How can I serve you today?"
		Then he is "indifferent"

	Scenario: waiter is smug
		Given there is a customer who is "grumpy"
		When I greet him with "Wadda you want?"
		Then he is "grumpy"
	
	Scenario: waiter greets the customer nicely
		Given there is a customer who is "very happy"
		When I greet him with "Hello, My name is Bob. How can I serve you today?"
		Then he is "very happy"
