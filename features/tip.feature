Feature: tip based on customer experience
   Background:
	In order to decide on a tip
	Customer should reflect on his experience
	
Scenario: customer ends his meal in a grumpy mood
	Given there is a customer who is "grumpy"
	When customer orders "pizza"
	And customer pays
	Then tip is "0.00"
	
Scenario: customer ends his meal in an indifferent mood
	Given there is a customer who is "indifferent"
	When customer orders "pizza"
	And customer pays
	Then tip is "0.10"
	
Scenario: customer ends his meal in a happy mood
	Given there is a customer who is "happy"
	When customer orders "pizza"
	And customer pays
	Then tip is "0.15"
	
Scenario: customer ends his meal in a very happy mood
	Given there is a customer who is "very happy"
	When customer orders "pizza"
	And customer pays
	Then tip is "0.20"
			
