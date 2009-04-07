#!/usr/bin/env ruby
require 'etapDriver.rb'


module Etapper

endpoint_url = ARGV.shift
obj = MessagingService.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   addAccount(account_1, boolean_2)
#
# ARGS
#   account_1       Account - {etapestryAPI/service}Account
#   boolean_2       Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
# RETURNS
#   result          C_String - {http://www.w3.org/2001/XMLSchema}string
#
account_1 = boolean_2 = nil
puts obj.addAccount(account_1, boolean_2)

# SYNOPSIS
#   addAndProcessGift(gift_1, boolean_2)
#
# ARGS
#   gift_1          Gift - {etapestryAPI/service}Gift
#   boolean_2       Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
# RETURNS
#   result          C_String - {http://www.w3.org/2001/XMLSchema}string
#
gift_1 = boolean_2 = nil
puts obj.addAndProcessGift(gift_1, boolean_2)

# SYNOPSIS
#   addAndProcessPayment(payment_1, boolean_2)
#
# ARGS
#   payment_1       Payment - {etapestryAPI/service}Payment
#   boolean_2       Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
# RETURNS
#   result          C_String - {http://www.w3.org/2001/XMLSchema}string
#
payment_1 = boolean_2 = nil
puts obj.addAndProcessPayment(payment_1, boolean_2)

# SYNOPSIS
#   addContact(contact_1, boolean_2)
#
# ARGS
#   contact_1       Contact - {etapestryAPI/service}Contact
#   boolean_2       Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
# RETURNS
#   result          C_String - {http://www.w3.org/2001/XMLSchema}string
#
contact_1 = boolean_2 = nil
puts obj.addContact(contact_1, boolean_2)

# SYNOPSIS
#   addDisbursement(disbursement_1, boolean_2)
#
# ARGS
#   disbursement_1  Disbursement - {etapestryAPI/service}Disbursement
#   boolean_2       Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
# RETURNS
#   result          C_String - {http://www.w3.org/2001/XMLSchema}string
#
disbursement_1 = boolean_2 = nil
puts obj.addDisbursement(disbursement_1, boolean_2)

# SYNOPSIS
#   addGift(gift_1, boolean_2)
#
# ARGS
#   gift_1          Gift - {etapestryAPI/service}Gift
#   boolean_2       Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
# RETURNS
#   result          C_String - {http://www.w3.org/2001/XMLSchema}string
#
gift_1 = boolean_2 = nil
puts obj.addGift(gift_1, boolean_2)

# SYNOPSIS
#   addLoginCredentials(loginCredentialsRequest_1)
#
# ARGS
#   loginCredentialsRequest_1 LoginCredentialsRequest - {etapestryAPI/service}LoginCredentialsRequest
#
# RETURNS
#   result          LoginCredentialsResponse - {etapestryAPI/service}LoginCredentialsResponse
#
loginCredentialsRequest_1 = nil
puts obj.addLoginCredentials(loginCredentialsRequest_1)

# SYNOPSIS
#   addNote(note_1, boolean_2)
#
# ARGS
#   note_1          Note - {etapestryAPI/service}Note
#   boolean_2       Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
# RETURNS
#   result          C_String - {http://www.w3.org/2001/XMLSchema}string
#
note_1 = boolean_2 = nil
puts obj.addNote(note_1, boolean_2)

# SYNOPSIS
#   addOutlookIntegrationEmail(outlookIntegrationEmail_1, arrayOfAccount_2)
#
# ARGS
#   outlookIntegrationEmail_1 OutlookIntegrationEmail - {etapestryAPI/service}OutlookIntegrationEmail
#   arrayOfAccount_2 ArrayOfAccount - {etapestryAPI/service}ArrayOfAccount
#
# RETURNS
#   result          C_String - {http://www.w3.org/2001/XMLSchema}string
#
outlookIntegrationEmail_1 = arrayOfAccount_2 = nil
puts obj.addOutlookIntegrationEmail(outlookIntegrationEmail_1, arrayOfAccount_2)

# SYNOPSIS
#   addOutlookIntegrationError(string_1)
#
# ARGS
#   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   N/A
#
string_1 = nil
puts obj.addOutlookIntegrationError(string_1)

# SYNOPSIS
#   addOutlookIntegrationStats(string_1, date_2, int_3, int_4, int_5, int_6, int_7)
#
# ARGS
#   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
#   date_2          DateTime - {http://www.w3.org/2001/XMLSchema}dateTime
#   int_3           Int - {http://www.w3.org/2001/XMLSchema}int
#   int_4           Int - {http://www.w3.org/2001/XMLSchema}int
#   int_5           Int - {http://www.w3.org/2001/XMLSchema}int
#   int_6           Int - {http://www.w3.org/2001/XMLSchema}int
#   int_7           Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   N/A
#
string_1 = date_2 = int_3 = int_4 = int_5 = int_6 = int_7 = nil
puts obj.addOutlookIntegrationStats(string_1, date_2, int_3, int_4, int_5, int_6, int_7)

# SYNOPSIS
#   addPayment(payment_1, boolean_2)
#
# ARGS
#   payment_1       Payment - {etapestryAPI/service}Payment
#   boolean_2       Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
# RETURNS
#   result          C_String - {http://www.w3.org/2001/XMLSchema}string
#
payment_1 = boolean_2 = nil
puts obj.addPayment(payment_1, boolean_2)

# SYNOPSIS
#   addPledge(pledge_1, boolean_2)
#
# ARGS
#   pledge_1        Pledge - {etapestryAPI/service}Pledge
#   boolean_2       Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
# RETURNS
#   result          C_String - {http://www.w3.org/2001/XMLSchema}string
#
pledge_1 = boolean_2 = nil
puts obj.addPledge(pledge_1, boolean_2)

# SYNOPSIS
#   addRecurringGift(recurringGift_1, boolean_2)
#
# ARGS
#   recurringGift_1 RecurringGift - {etapestryAPI/service}RecurringGift
#   boolean_2       Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
# RETURNS
#   result          C_String - {http://www.w3.org/2001/XMLSchema}string
#
recurringGift_1 = boolean_2 = nil
puts obj.addRecurringGift(recurringGift_1, boolean_2)

# SYNOPSIS
#   addSoftCredit(softCredit_1, boolean_2)
#
# ARGS
#   softCredit_1    SoftCredit - {etapestryAPI/service}SoftCredit
#   boolean_2       Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
# RETURNS
#   result          C_String - {http://www.w3.org/2001/XMLSchema}string
#
softCredit_1 = boolean_2 = nil
puts obj.addSoftCredit(softCredit_1, boolean_2)

# SYNOPSIS
#   connect(connectRequest_1)
#
# ARGS
#   connectRequest_1 ConnectRequest - {etapestryAPI/service}ConnectRequest
#
# RETURNS
#   result          C_String - {http://www.w3.org/2001/XMLSchema}string
#
connectRequest_1 = nil
puts obj.connect(connectRequest_1)

# SYNOPSIS
#   externalLogin(externalLoginRequest_1)
#
# ARGS
#   externalLoginRequest_1 ExternalLoginRequest - {etapestryAPI/service}ExternalLoginRequest
#
# RETURNS
#   result          C_String - {http://www.w3.org/2001/XMLSchema}string
#
externalLoginRequest_1 = nil
puts obj.externalLogin(externalLoginRequest_1)

# SYNOPSIS
#   findAccountsForOutlookIntegration(string_1, string_2, boolean_3)
#
# ARGS
#   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
#   string_2        C_String - {http://www.w3.org/2001/XMLSchema}string
#   boolean_3       Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
# RETURNS
#   result          ArrayOfAccount - {etapestryAPI/service}ArrayOfAccount
#
string_1 = string_2 = boolean_3 = nil
puts obj.findAccountsForOutlookIntegration(string_1, string_2, boolean_3)

# SYNOPSIS
#   getAccount(string_1)
#
# ARGS
#   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Account - {etapestryAPI/service}Account
#
string_1 = nil
puts obj.getAccount(string_1)

# SYNOPSIS
#   getAccountById(int_1)
#
# ARGS
#   int_1           Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   result          Account - {etapestryAPI/service}Account
#
int_1 = nil
puts obj.getAccountById(int_1)

# SYNOPSIS
#   getAccountByPersonaType(string_1, string_2, boolean_3)
#
# ARGS
#   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
#   string_2        C_String - {http://www.w3.org/2001/XMLSchema}string
#   boolean_3       Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
# RETURNS
#   result          Account - {etapestryAPI/service}Account
#
string_1 = string_2 = boolean_3 = nil
puts obj.getAccountByPersonaType(string_1, string_2, boolean_3)

# SYNOPSIS
#   getAccountByUniqueDefinedValue(definedValue_1)
#
# ARGS
#   definedValue_1  DefinedValue - {etapestryAPI/service}DefinedValue
#
# RETURNS
#   result          Account - {etapestryAPI/service}Account
#
definedValue_1 = nil
puts obj.getAccountByUniqueDefinedValue(definedValue_1)

# SYNOPSIS
#   getAccountFromPhoneAThonList(string_1)
#
# ARGS
#   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Account - {etapestryAPI/service}Account
#
string_1 = nil
puts obj.getAccountFromPhoneAThonList(string_1)

# SYNOPSIS
#   getAccountInvolvePrivacySettings(string_1)
#
# ARGS
#   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Account - {etapestryAPI/service}Account
#
string_1 = nil
puts obj.getAccountInvolvePrivacySettings(string_1)

# SYNOPSIS
#   getAccountRef(definedValue_1)
#
# ARGS
#   definedValue_1  DefinedValue - {etapestryAPI/service}DefinedValue
#
# RETURNS
#   result          C_String - {http://www.w3.org/2001/XMLSchema}string
#
definedValue_1 = nil
puts obj.getAccountRef(definedValue_1)

# SYNOPSIS
#   getApproaches(boolean_1)
#
# ARGS
#   boolean_1       Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
# RETURNS
#   result          ArrayOfstring - {etapestryAPI/service}ArrayOfstring
#
boolean_1 = nil
puts obj.getApproaches(boolean_1)

# SYNOPSIS
#   getCachedCartElements(int_1)
#
# ARGS
#   int_1           Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   result          PagedCartElementsResponse - {etapestryAPI/service}PagedCartElementsResponse
#
int_1 = nil
puts obj.getCachedCartElements(int_1)

# SYNOPSIS
#   getCachedDefinedFields(int_1)
#
# ARGS
#   int_1           Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   result          PagedDefinedFieldsResponse - {etapestryAPI/service}PagedDefinedFieldsResponse
#
int_1 = nil
puts obj.getCachedDefinedFields(int_1)

# SYNOPSIS
#   getCachedJournalEntries(int_1)
#
# ARGS
#   int_1           Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   result          PagedJournalEntriesResponse - {etapestryAPI/service}PagedJournalEntriesResponse
#
int_1 = nil
puts obj.getCachedJournalEntries(int_1)

# SYNOPSIS
#   getCachedQueryResults(int_1)
#
# ARGS
#   int_1           Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   result          PagedQueryResultsResponse - {etapestryAPI/service}PagedQueryResultsResponse
#
int_1 = nil
puts obj.getCachedQueryResults(int_1)

# SYNOPSIS
#   getCalendarItem(string_1)
#
# ARGS
#   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          CalendarItem - {etapestryAPI/service}CalendarItem
#
string_1 = nil
puts obj.getCalendarItem(string_1)

# SYNOPSIS
#   getCampaigns(boolean_1)
#
# ARGS
#   boolean_1       Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
# RETURNS
#   result          ArrayOfstring - {etapestryAPI/service}ArrayOfstring
#
boolean_1 = nil
puts obj.getCampaigns(boolean_1)

# SYNOPSIS
#   getCartCategory(string_1)
#
# ARGS
#   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          CartCategory - {etapestryAPI/service}CartCategory
#
string_1 = nil
puts obj.getCartCategory(string_1)

# SYNOPSIS
#   getCartElements(pagedCartElementsRequest_1)
#
# ARGS
#   pagedCartElementsRequest_1 PagedCartElementsRequest - {etapestryAPI/service}PagedCartElementsRequest
#
# RETURNS
#   result          PagedCartElementsResponse - {etapestryAPI/service}PagedCartElementsResponse
#
pagedCartElementsRequest_1 = nil
puts obj.getCartElements(pagedCartElementsRequest_1)

# SYNOPSIS
#   getCartItem(string_1)
#
# ARGS
#   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          CartItem - {etapestryAPI/service}CartItem
#
string_1 = nil
puts obj.getCartItem(string_1)

# SYNOPSIS
#   getCartPreferences(string_1)
#
# ARGS
#   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          CartPreferences - {etapestryAPI/service}CartPreferences
#
string_1 = nil
puts obj.getCartPreferences(string_1)

# SYNOPSIS
#   getContact(string_1)
#
# ARGS
#   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Contact - {etapestryAPI/service}Contact
#
string_1 = nil
puts obj.getContact(string_1)

# SYNOPSIS
#   getContactByUniqueDefinedValue(definedValue_1)
#
# ARGS
#   definedValue_1  DefinedValue - {etapestryAPI/service}DefinedValue
#
# RETURNS
#   result          Contact - {etapestryAPI/service}Contact
#
definedValue_1 = nil
puts obj.getContactByUniqueDefinedValue(definedValue_1)

# SYNOPSIS
#   getContactRef(definedValue_1)
#
# ARGS
#   definedValue_1  DefinedValue - {etapestryAPI/service}DefinedValue
#
# RETURNS
#   result          C_String - {http://www.w3.org/2001/XMLSchema}string
#
definedValue_1 = nil
puts obj.getContactRef(definedValue_1)

# SYNOPSIS
#   getDeclaration(string_1)
#
# ARGS
#   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Declaration - {etapestryAPI/service}Declaration
#
string_1 = nil
puts obj.getDeclaration(string_1)

# SYNOPSIS
#   getDefinedField(string_1, boolean_2)
#
# ARGS
#   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
#   boolean_2       Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
# RETURNS
#   result          DefinedField - {etapestryAPI/service}DefinedField
#
string_1 = boolean_2 = nil
puts obj.getDefinedField(string_1, boolean_2)

# SYNOPSIS
#   getDefinedFields(pagedDefinedFieldsRequest_1)
#
# ARGS
#   pagedDefinedFieldsRequest_1 PagedDefinedFieldsRequest - {etapestryAPI/service}PagedDefinedFieldsRequest
#
# RETURNS
#   result          PagedDefinedFieldsResponse - {etapestryAPI/service}PagedDefinedFieldsResponse
#
pagedDefinedFieldsRequest_1 = nil
puts obj.getDefinedFields(pagedDefinedFieldsRequest_1)

# SYNOPSIS
#   getDisbursement(string_1)
#
# ARGS
#   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Disbursement - {etapestryAPI/service}Disbursement
#
string_1 = nil
puts obj.getDisbursement(string_1)

# SYNOPSIS
#   getDonorLoginPreferences
#
# ARGS
#   N/A
#
# RETURNS
#   result          DonorLoginPreferences - {etapestryAPI/service}DonorLoginPreferences
#

puts obj.getDonorLoginPreferences

# SYNOPSIS
#   getDuplicateAccount(duplicateAccountSearch_1)
#
# ARGS
#   duplicateAccountSearch_1 DuplicateAccountSearch - {etapestryAPI/service}DuplicateAccountSearch
#
# RETURNS
#   result          Account - {etapestryAPI/service}Account
#
duplicateAccountSearch_1 = nil
puts obj.getDuplicateAccount(duplicateAccountSearch_1)

# SYNOPSIS
#   getDuplicateAccounts(duplicateAccountSearch_1)
#
# ARGS
#   duplicateAccountSearch_1 DuplicateAccountSearch - {etapestryAPI/service}DuplicateAccountSearch
#
# RETURNS
#   result          ArrayOfAccount - {etapestryAPI/service}ArrayOfAccount
#
duplicateAccountSearch_1 = nil
puts obj.getDuplicateAccounts(duplicateAccountSearch_1)

# SYNOPSIS
#   getDynamicQueryResults(pagedDynamicQueryResultsRequest_1)
#
# ARGS
#   pagedDynamicQueryResultsRequest_1 PagedDynamicQueryResultsRequest - {etapestryAPI/service}PagedDynamicQueryResultsRequest
#
# RETURNS
#   result          PagedQueryResultsResponse - {etapestryAPI/service}PagedQueryResultsResponse
#
pagedDynamicQueryResultsRequest_1 = nil
puts obj.getDynamicQueryResults(pagedDynamicQueryResultsRequest_1)

# SYNOPSIS
#   getEntityRole(string_1, boolean_2)
#
# ARGS
#   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
#   boolean_2       Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
# RETURNS
#   result          EntityRole - {etapestryAPI/service}EntityRole
#
string_1 = boolean_2 = nil
puts obj.getEntityRole(string_1, boolean_2)

# SYNOPSIS
#   getExistingQueryResults(pagedExistingQueryResultsRequest_1)
#
# ARGS
#   pagedExistingQueryResultsRequest_1 PagedExistingQueryResultsRequest - {etapestryAPI/service}PagedExistingQueryResultsRequest
#
# RETURNS
#   result          PagedQueryResultsResponse - {etapestryAPI/service}PagedQueryResultsResponse
#
pagedExistingQueryResultsRequest_1 = nil
puts obj.getExistingQueryResults(pagedExistingQueryResultsRequest_1)

# SYNOPSIS
#   getFunds(boolean_1)
#
# ARGS
#   boolean_1       Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
# RETURNS
#   result          ArrayOfstring - {etapestryAPI/service}ArrayOfstring
#
boolean_1 = nil
puts obj.getFunds(boolean_1)

# SYNOPSIS
#   getGift(string_1)
#
# ARGS
#   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Gift - {etapestryAPI/service}Gift
#
string_1 = nil
puts obj.getGift(string_1)

# SYNOPSIS
#   getInvitation(string_1)
#
# ARGS
#   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Invitation - {etapestryAPI/service}Invitation
#
string_1 = nil
puts obj.getInvitation(string_1)

# SYNOPSIS
#   getJournalEntries(pagedJournalEntriesRequest_1)
#
# ARGS
#   pagedJournalEntriesRequest_1 PagedJournalEntriesRequest - {etapestryAPI/service}PagedJournalEntriesRequest
#
# RETURNS
#   result          PagedJournalEntriesResponse - {etapestryAPI/service}PagedJournalEntriesResponse
#
pagedJournalEntriesRequest_1 = nil
puts obj.getJournalEntries(pagedJournalEntriesRequest_1)

# SYNOPSIS
#   getLetters(boolean_1)
#
# ARGS
#   boolean_1       Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
# RETURNS
#   result          ArrayOfstring - {etapestryAPI/service}ArrayOfstring
#
boolean_1 = nil
puts obj.getLetters(boolean_1)

# SYNOPSIS
#   getMyAccount
#
# ARGS
#   N/A
#
# RETURNS
#   result          Account - {etapestryAPI/service}Account
#

puts obj.getMyAccount

# SYNOPSIS
#   getMyAccountByPersonaType(string_1, boolean_2)
#
# ARGS
#   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
#   boolean_2       Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
# RETURNS
#   result          Account - {etapestryAPI/service}Account
#
string_1 = boolean_2 = nil
puts obj.getMyAccountByPersonaType(string_1, boolean_2)

# SYNOPSIS
#   getMyEntityRole
#
# ARGS
#   N/A
#
# RETURNS
#   result          EntityRole - {etapestryAPI/service}EntityRole
#

puts obj.getMyEntityRole

# SYNOPSIS
#   getMyJournalEntries
#
# ARGS
#   N/A
#
# RETURNS
#   result          Collection - {http://java.sun.com/jax-rpc-ri/internal}collection
#

puts obj.getMyJournalEntries

# SYNOPSIS
#   getMyJournalSummary
#
# ARGS
#   N/A
#
# RETURNS
#   result          JournalSummary - {etapestryAPI/service}JournalSummary
#

puts obj.getMyJournalSummary

# SYNOPSIS
#   getMyPrivacyPreferences
#
# ARGS
#   N/A
#
# RETURNS
#   result          PrivacyPreferences - {etapestryAPI/service}PrivacyPreferences
#

puts obj.getMyPrivacyPreferences

# SYNOPSIS
#   getNextCartElements
#
# ARGS
#   N/A
#
# RETURNS
#   result          PagedCartElementsResponse - {etapestryAPI/service}PagedCartElementsResponse
#

puts obj.getNextCartElements

# SYNOPSIS
#   getNextDefinedFields
#
# ARGS
#   N/A
#
# RETURNS
#   result          PagedDefinedFieldsResponse - {etapestryAPI/service}PagedDefinedFieldsResponse
#

puts obj.getNextDefinedFields

# SYNOPSIS
#   getNextJournalEntries
#
# ARGS
#   N/A
#
# RETURNS
#   result          PagedJournalEntriesResponse - {etapestryAPI/service}PagedJournalEntriesResponse
#

puts obj.getNextJournalEntries

# SYNOPSIS
#   getNextQueryResults
#
# ARGS
#   N/A
#
# RETURNS
#   result          PagedQueryResultsResponse - {etapestryAPI/service}PagedQueryResultsResponse
#

puts obj.getNextQueryResults

# SYNOPSIS
#   getNote(string_1)
#
# ARGS
#   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Note - {etapestryAPI/service}Note
#
string_1 = nil
puts obj.getNote(string_1)

# SYNOPSIS
#   getNoteByUniqueDefinedValue(definedValue_1)
#
# ARGS
#   definedValue_1  DefinedValue - {etapestryAPI/service}DefinedValue
#
# RETURNS
#   result          Note - {etapestryAPI/service}Note
#
definedValue_1 = nil
puts obj.getNoteByUniqueDefinedValue(definedValue_1)

# SYNOPSIS
#   getNoteRef(definedValue_1)
#
# ARGS
#   definedValue_1  DefinedValue - {etapestryAPI/service}DefinedValue
#
# RETURNS
#   result          C_String - {http://www.w3.org/2001/XMLSchema}string
#
definedValue_1 = nil
puts obj.getNoteRef(definedValue_1)

# SYNOPSIS
#   getOrderItem(string_1)
#
# ARGS
#   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          OrderItem - {etapestryAPI/service}OrderItem
#
string_1 = nil
puts obj.getOrderItem(string_1)

# SYNOPSIS
#   getOrderShipping(string_1)
#
# ARGS
#   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          OrderShipping - {etapestryAPI/service}OrderShipping
#
string_1 = nil
puts obj.getOrderShipping(string_1)

# SYNOPSIS
#   getOrderTax(string_1)
#
# ARGS
#   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          OrderTax - {etapestryAPI/service}OrderTax
#
string_1 = nil
puts obj.getOrderTax(string_1)

# SYNOPSIS
#   getOrganizationPreferences
#
# ARGS
#   N/A
#
# RETURNS
#   result          OrganizationPreferences - {etapestryAPI/service}OrganizationPreferences
#

puts obj.getOrganizationPreferences

# SYNOPSIS
#   getOutlookIntegrationContactMethods
#
# ARGS
#   N/A
#
# RETURNS
#   result          ArrayOfDefinedValue - {etapestryAPI/service}ArrayOfDefinedValue
#

puts obj.getOutlookIntegrationContactMethods

# SYNOPSIS
#   getOutlookIntegrationVersion
#
# ARGS
#   N/A
#
# RETURNS
#   result          C_String - {http://www.w3.org/2001/XMLSchema}string
#

puts obj.getOutlookIntegrationVersion

# SYNOPSIS
#   getPayment(string_1)
#
# ARGS
#   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Payment - {etapestryAPI/service}Payment
#
string_1 = nil
puts obj.getPayment(string_1)

# SYNOPSIS
#   getPhoneAThonLists(boolean_1)
#
# ARGS
#   boolean_1       Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
# RETURNS
#   result          ArrayOfPhoneAThonList - {etapestryAPI/service}ArrayOfPhoneAThonList
#
boolean_1 = nil
puts obj.getPhoneAThonLists(boolean_1)

# SYNOPSIS
#   getPledge(string_1)
#
# ARGS
#   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Pledge - {etapestryAPI/service}Pledge
#
string_1 = nil
puts obj.getPledge(string_1)

# SYNOPSIS
#   getPrivacyPreferences(string_1)
#
# ARGS
#   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          PrivacyPreferences - {etapestryAPI/service}PrivacyPreferences
#
string_1 = nil
puts obj.getPrivacyPreferences(string_1)

# SYNOPSIS
#   getQueryResultStats(string_1, string_2)
#
# ARGS
#   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
#   string_2        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          QueryResultStats - {etapestryAPI/service}QueryResultStats
#
string_1 = string_2 = nil
puts obj.getQueryResultStats(string_1, string_2)

# SYNOPSIS
#   getRecurringGift(string_1)
#
# ARGS
#   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          RecurringGift - {etapestryAPI/service}RecurringGift
#
string_1 = nil
puts obj.getRecurringGift(string_1)

# SYNOPSIS
#   getRecurringGiftSchedule(string_1)
#
# ARGS
#   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          RecurringGiftSchedule - {etapestryAPI/service}RecurringGiftSchedule
#
string_1 = nil
puts obj.getRecurringGiftSchedule(string_1)

# SYNOPSIS
#   getSegmentedDonation(string_1)
#
# ARGS
#   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          SegmentedDonation - {etapestryAPI/service}SegmentedDonation
#
string_1 = nil
puts obj.getSegmentedDonation(string_1)

# SYNOPSIS
#   getSegmentedOrder(string_1)
#
# ARGS
#   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          SegmentedOrder - {etapestryAPI/service}SegmentedOrder
#
string_1 = nil
puts obj.getSegmentedOrder(string_1)

# SYNOPSIS
#   getSegmentedPledge(string_1)
#
# ARGS
#   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          SegmentedPledge - {etapestryAPI/service}SegmentedPledge
#
string_1 = nil
puts obj.getSegmentedPledge(string_1)

# SYNOPSIS
#   getSoftCredit(string_1)
#
# ARGS
#   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          SoftCredit - {etapestryAPI/service}SoftCredit
#
string_1 = nil
puts obj.getSoftCredit(string_1)

# SYNOPSIS
#   getSystemDefinedValues(string_1, boolean_2)
#
# ARGS
#   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
#   boolean_2       Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
# RETURNS
#   result          ArrayOfDefinedValue - {etapestryAPI/service}ArrayOfDefinedValue
#
string_1 = boolean_2 = nil
puts obj.getSystemDefinedValues(string_1, boolean_2)

# SYNOPSIS
#   getTransaction(string_1)
#
# ARGS
#   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          AnyType - {http://www.w3.org/2001/XMLSchema}anyType
#
string_1 = nil
puts obj.getTransaction(string_1)

# SYNOPSIS
#   getTransactionByUniqueDefinedValue(definedValue_1)
#
# ARGS
#   definedValue_1  DefinedValue - {etapestryAPI/service}DefinedValue
#
# RETURNS
#   result          AnyType - {http://www.w3.org/2001/XMLSchema}anyType
#
definedValue_1 = nil
puts obj.getTransactionByUniqueDefinedValue(definedValue_1)

# SYNOPSIS
#   getTransactionProcessors(boolean_1)
#
# ARGS
#   boolean_1       Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
# RETURNS
#   result          ArrayOfTransactionProcessor - {etapestryAPI/service}ArrayOfTransactionProcessor
#
boolean_1 = nil
puts obj.getTransactionProcessors(boolean_1)

# SYNOPSIS
#   getTransactionRef(definedValue_1)
#
# ARGS
#   definedValue_1  DefinedValue - {etapestryAPI/service}DefinedValue
#
# RETURNS
#   result          C_String - {http://www.w3.org/2001/XMLSchema}string
#
definedValue_1 = nil
puts obj.getTransactionRef(definedValue_1)

# SYNOPSIS
#   getUserDefinedSetValues(string_1, boolean_2)
#
# ARGS
#   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
#   boolean_2       Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
# RETURNS
#   result          ArrayOfDefinedValue - {etapestryAPI/service}ArrayOfDefinedValue
#
string_1 = boolean_2 = nil
puts obj.getUserDefinedSetValues(string_1, boolean_2)

# SYNOPSIS
#   hasMoreCartElements
#
# ARGS
#   N/A
#
# RETURNS
#   result          Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#

puts obj.hasMoreCartElements

# SYNOPSIS
#   hasMoreDefinedFields
#
# ARGS
#   N/A
#
# RETURNS
#   result          Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#

puts obj.hasMoreDefinedFields

# SYNOPSIS
#   hasMoreJournalEntries
#
# ARGS
#   N/A
#
# RETURNS
#   result          Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#

puts obj.hasMoreJournalEntries

# SYNOPSIS
#   hasMoreQueryResults
#
# ARGS
#   N/A
#
# RETURNS
#   result          Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#

puts obj.hasMoreQueryResults

# SYNOPSIS
#   initLinkedTransaction
#
# ARGS
#   N/A
#
# RETURNS
#   result          LinkedTransaction - {etapestryAPI/service}LinkedTransaction
#

puts obj.initLinkedTransaction

# SYNOPSIS
#   isMyPasswordExpired
#
# ARGS
#   N/A
#
# RETURNS
#   result          Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#

puts obj.isMyPasswordExpired

# SYNOPSIS
#   login(string_1, string_2)
#
# ARGS
#   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
#   string_2        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          C_String - {http://www.w3.org/2001/XMLSchema}string
#
string_1 = string_2 = nil
puts obj.login(string_1, string_2)

# SYNOPSIS
#   logout
#
# ARGS
#   N/A
#
# RETURNS
#   N/A
#

puts obj.logout

# SYNOPSIS
#   pingOkay
#
# ARGS
#   N/A
#
# RETURNS
#   result          C_String - {http://www.w3.org/2001/XMLSchema}string
#

puts obj.pingOkay

# SYNOPSIS
#   pingTime
#
# ARGS
#   N/A
#
# RETURNS
#   result          DateTime - {http://www.w3.org/2001/XMLSchema}dateTime
#

puts obj.pingTime

# SYNOPSIS
#   processAccountChange(accountChangeRequest_1)
#
# ARGS
#   accountChangeRequest_1 AccountChangeRequest - {etapestryAPI/service}AccountChangeRequest
#
# RETURNS
#   N/A
#
accountChangeRequest_1 = nil
puts obj.processAccountChange(accountChangeRequest_1)

# SYNOPSIS
#   processCartOrder(cartOrderRequest_1)
#
# ARGS
#   cartOrderRequest_1 CartOrderRequest - {etapestryAPI/service}CartOrderRequest
#
# RETURNS
#   result          CartOrderResponse - {etapestryAPI/service}CartOrderResponse
#
cartOrderRequest_1 = nil
puts obj.processCartOrder(cartOrderRequest_1)

# SYNOPSIS
#   processEcommerceRequest(ecommerceRequest_1)
#
# ARGS
#   ecommerceRequest_1 EcommerceRequest - {etapestryAPI/service}EcommerceRequest
#
# RETURNS
#   result          EcommerceResponse - {etapestryAPI/service}EcommerceResponse
#
ecommerceRequest_1 = nil
puts obj.processEcommerceRequest(ecommerceRequest_1)

# SYNOPSIS
#   processForgottenPasswordEmailHelp(forgottenPasswordEmailHelpRequest_1)
#
# ARGS
#   forgottenPasswordEmailHelpRequest_1 ForgottenPasswordEmailHelpRequest - {etapestryAPI/service}ForgottenPasswordEmailHelpRequest
#
# RETURNS
#   result          Int - {http://www.w3.org/2001/XMLSchema}int
#
forgottenPasswordEmailHelpRequest_1 = nil
puts obj.processForgottenPasswordEmailHelp(forgottenPasswordEmailHelpRequest_1)

# SYNOPSIS
#   processForgottenPasswordResetHelp(forgottenPasswordResetHelpRequest_1)
#
# ARGS
#   forgottenPasswordResetHelpRequest_1 ForgottenPasswordResetHelpRequest - {etapestryAPI/service}ForgottenPasswordResetHelpRequest
#
# RETURNS
#   result          C_String - {http://www.w3.org/2001/XMLSchema}string
#
forgottenPasswordResetHelpRequest_1 = nil
puts obj.processForgottenPasswordResetHelp(forgottenPasswordResetHelpRequest_1)

# SYNOPSIS
#   processTransaction(processTransactionRequest_1)
#
# ARGS
#   processTransactionRequest_1 ProcessTransactionRequest - {etapestryAPI/service}ProcessTransactionRequest
#
# RETURNS
#   result          C_String - {http://www.w3.org/2001/XMLSchema}string
#
processTransactionRequest_1 = nil
puts obj.processTransaction(processTransactionRequest_1)

# SYNOPSIS
#   reverseTransaction(string_1, string_2)
#
# ARGS
#   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
#   string_2        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          C_String - {http://www.w3.org/2001/XMLSchema}string
#
string_1 = string_2 = nil
puts obj.reverseTransaction(string_1, string_2)

# SYNOPSIS
#   sendEmail(sendEmailRequest_1)
#
# ARGS
#   sendEmailRequest_1 SendEmailRequest - {etapestryAPI/service}SendEmailRequest
#
# RETURNS
#   result          Int - {http://www.w3.org/2001/XMLSchema}int
#
sendEmailRequest_1 = nil
puts obj.sendEmail(sendEmailRequest_1)

# SYNOPSIS
#   updateAccount(account_1, boolean_2)
#
# ARGS
#   account_1       Account - {etapestryAPI/service}Account
#   boolean_2       Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
# RETURNS
#   result          C_String - {http://www.w3.org/2001/XMLSchema}string
#
account_1 = boolean_2 = nil
puts obj.updateAccount(account_1, boolean_2)

# SYNOPSIS
#   updateContact(contact_1, boolean_2)
#
# ARGS
#   contact_1       Contact - {etapestryAPI/service}Contact
#   boolean_2       Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
# RETURNS
#   result          C_String - {http://www.w3.org/2001/XMLSchema}string
#
contact_1 = boolean_2 = nil
puts obj.updateContact(contact_1, boolean_2)

# SYNOPSIS
#   updateForgottenPassword(string_1, string_2, string_3)
#
# ARGS
#   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
#   string_2        C_String - {http://www.w3.org/2001/XMLSchema}string
#   string_3        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   N/A
#
string_1 = string_2 = string_3 = nil
puts obj.updateForgottenPassword(string_1, string_2, string_3)

# SYNOPSIS
#   updateGift(gift_1, boolean_2)
#
# ARGS
#   gift_1          Gift - {etapestryAPI/service}Gift
#   boolean_2       Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
# RETURNS
#   result          C_String - {http://www.w3.org/2001/XMLSchema}string
#
gift_1 = boolean_2 = nil
puts obj.updateGift(gift_1, boolean_2)

# SYNOPSIS
#   updateMyExpiredPassword(string_1)
#
# ARGS
#   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   N/A
#
string_1 = nil
puts obj.updateMyExpiredPassword(string_1)

# SYNOPSIS
#   updateMyLoginCredentials(string_1, string_2)
#
# ARGS
#   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
#   string_2        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   N/A
#
string_1 = string_2 = nil
puts obj.updateMyLoginCredentials(string_1, string_2)

# SYNOPSIS
#   updateMyPassword(string_1)
#
# ARGS
#   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   N/A
#
string_1 = nil
puts obj.updateMyPassword(string_1)

# SYNOPSIS
#   updateNote(note_1, boolean_2)
#
# ARGS
#   note_1          Note - {etapestryAPI/service}Note
#   boolean_2       Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
# RETURNS
#   result          C_String - {http://www.w3.org/2001/XMLSchema}string
#
note_1 = boolean_2 = nil
puts obj.updateNote(note_1, boolean_2)

# SYNOPSIS
#   updatePrivacyPreferences(privacyPreferences_1, boolean_2)
#
# ARGS
#   privacyPreferences_1 PrivacyPreferences - {etapestryAPI/service}PrivacyPreferences
#   boolean_2       Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
# RETURNS
#   N/A
#
privacyPreferences_1 = boolean_2 = nil
puts obj.updatePrivacyPreferences(privacyPreferences_1, boolean_2)

# SYNOPSIS
#   validateCartLicense
#
# ARGS
#   N/A
#
# RETURNS
#   result          Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#

puts obj.validateCartLicense

# SYNOPSIS
#   validateDonorLoginLicense
#
# ARGS
#   N/A
#
# RETURNS
#   result          Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#

puts obj.validateDonorLoginLicense

# SYNOPSIS
#   validateOutlookIntegrationLicense
#
# ARGS
#   N/A
#
# RETURNS
#   result          Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#

puts obj.validateOutlookIntegrationLicense




end
