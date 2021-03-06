Feature: Sección Comunitaria

	Scenario: Country options in entrenamos page
		Given I visit the community page
		Then I should see all countries highlited
		And I should see "Eventos Comunitarios"

	Scenario: Próximos eventos (todos)
		Given there are community events
		When I visit the community ajax page
		Then I should see the json string for all of the community events
		
	Scenario: Codigo de pais de Argentina (ar)
		Given there are community events
		When I visit the community ajax page for Argentina
		Then I should see the json string for the Argentina community events

	Scenario: Codigo de pais erroneo
		Given there are community events
		When I visit the community ajax page for an invalid country
		Then I should see the json string for all of the community events
