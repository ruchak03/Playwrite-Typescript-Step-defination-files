    @Test @TC1
    Scenario: A deal exists containing "Facility A"
        When the user navigates to the deal
        Then the user successfully navigates to the deal page
        When the user selects "Facility A" from the list of facilities
        Then the main view updates to show the details for "Facility A"
        When the user scrolls to the "Borrower Allocation" section
        Then the "Borrower Allocation" section is visible
        And a dropdown field labeled "Joint & Several" is present
        And the dropdown selected value defaults to "Joint"
        When the user locates the "Compact Metrics Panel" or equivalent facility summary view
        Then the panel is visible
        And the panel displays an "Allocated Borrowers" metric
        And the "Allocated Borrowers" metric currently shows "0"


    @Test @TC2
    Scenario: Navigate to a deal with no borrowers defined in the master list
        When the user navigates to a deal containing "Facility A" and the Master Borrower list is empty
        And the user selects "Facility A" from the list of facilities
        Then the user successfully navigates to the deal page
        And the view updates to show the details for "Facility A"
        And the "Borrower Allocation" section displays a clear warning message: "No borrowers are defined in the deal's master list. Please add borrowers at the deal level to proceed"
        And the "Select Borrowers" button or any control to add borrowers is not visible or is disabled
        And the user cannot initiate borrower allocation for the facility


    @Test @TC3
    Scenario: Remove an allocated borrower and verify it becomes available for selection
        When the user navigates to "Facility D", which already has one or more borrowers allocated
        Then the facility view is displayed with visual tags for "Borrower X" and "Borrower Y"
        And the allocated borrower count is "2"
        When the user locates the visual tag for "Borrower X"
        Then the tag for "Borrower X" is visible and contains a small "A-" icon
        When the user clicks the "A-" icon on the "Borrower X" tag
        Then the visual tag for "Borrower X" is removed from UL 2
        And the visual tag for "Borrower Y" remains
        And the "Allocated Borrowers" count in the Compact Metrics Panel updates from "2" to "1"
        When the user clicks the "Select Borrowers" button to view the list
        Then "Borrower X" is no longer shown as allocated
        And "Borrower X" appears as available to be selected again


    @Test @TC4
    Scenario: Update the Joint & Several value for a facility and verify it persists after reload
        When User navigates to "Facility E" with at least two borrowers allocated
        Then the "Borrower Allocation" section shows "Borrower P" and "Borrower Q" are allocated
        And the "Joint & Several" dropdown is set to "Joint"
        When User clicks on the "Joint & Several" dropdown
        Then a list of options appears containing "Joint & Several"
        When User selects "Several" from the dropdown
        Then the dropdown displays "Several"
        When User clicks Save
        And User reloads the page
        Then the "Joint & Several" dropdown retains the value "Several"


@Test @TC6
Scenario Outline: Validate borrower limit for a facility with an allocated borrower
  When user clicks on the edit icon for the "<Facility>" with an allocated borrower
  Then user clicks on overview tab and scrolls down to Facility Global Amount having value "<FacilityGlobalAmount>"
  When User enters invalid amount "<InvalidLimit>" into the limit field
  Then The value "<InvalidLimit>" is displayed in the input field
  When User moves focus away from the limit field
  Then A validation error message is displayed
  When User corrects the limit to "<CorrectLimit>"
  And User clicks on save button
  Then The validation error message disappears

Examples:
  | Facility   | FacilityGlobalAmount | InvalidLimit | CorrectLimit |
  | Facility 4 | $1000000             | $1500000     | $900000      |


@Test @TC7
Scenario: Add borrowers to a facility and verify the primary borrower

        Given User opens the deal with primary borrower "Prime corp" and additional borrower "Second corp"
        Then User is on the deal page
        When User selects facility "Facility G" that has no borrowers allocated yet
        Then The facility view is shown
        When User adds primary borrower "Prime corp" to the facility
        And User adds additional borrower "Second corp" to the facility
        Then Both borrowers are added to the facility
        When User verifies the primary borrower flag for "Prime corp"
        Then "Prime corp" is visually indicated as the primary borrower


