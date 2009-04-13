# Defines all of the "stub" methods that we haven't yet speced out and built server code for
# (and therefore client code).

module Etapper

  class MessagingService
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
    def addAccount(account_1, boolean_2)
      p [account_1, boolean_2]
      raise NotImplementedError.new
    end

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
    def addAndProcessGift(gift_1, boolean_2)
      p [gift_1, boolean_2]
      raise NotImplementedError.new
    end

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
    def addAndProcessPayment(payment_1, boolean_2)
      p [payment_1, boolean_2]
      raise NotImplementedError.new
    end

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
    def addContact(contact_1, boolean_2)
      p [contact_1, boolean_2]
      raise NotImplementedError.new
    end

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
    def addDisbursement(disbursement_1, boolean_2)
      p [disbursement_1, boolean_2]
      raise NotImplementedError.new
    end

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
    def addGift(gift_1, boolean_2)
      p [gift_1, boolean_2]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   addLoginCredentials(loginCredentialsRequest_1)
    #
    # ARGS
    #   loginCredentialsRequest_1 LoginCredentialsRequest - {etapestryAPI/service}LoginCredentialsRequest
    #
    # RETURNS
    #   result          LoginCredentialsResponse - {etapestryAPI/service}LoginCredentialsResponse
    #
    def addLoginCredentials(loginCredentialsRequest_1)
      p [loginCredentialsRequest_1]
      raise NotImplementedError.new
    end

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
    def addNote(note_1, boolean_2)
      p [note_1, boolean_2]
      raise NotImplementedError.new
    end

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
    def addOutlookIntegrationEmail(outlookIntegrationEmail_1, arrayOfAccount_2)
      p [outlookIntegrationEmail_1, arrayOfAccount_2]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   addOutlookIntegrationError(string_1)
    #
    # ARGS
    #   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
    #
    # RETURNS
    #   N/A
    #
    def addOutlookIntegrationError(string_1)
      p [string_1]
      raise NotImplementedError.new
    end

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
    def addOutlookIntegrationStats(string_1, date_2, int_3, int_4, int_5, int_6, int_7)
      p [string_1, date_2, int_3, int_4, int_5, int_6, int_7]
      raise NotImplementedError.new
    end

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
    def addPayment(payment_1, boolean_2)
      p [payment_1, boolean_2]
      raise NotImplementedError.new
    end

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
    def addPledge(pledge_1, boolean_2)
      p [pledge_1, boolean_2]
      raise NotImplementedError.new
    end

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
    def addRecurringGift(recurringGift_1, boolean_2)
      p [recurringGift_1, boolean_2]
      raise NotImplementedError.new
    end

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
    def addSoftCredit(softCredit_1, boolean_2)
      p [softCredit_1, boolean_2]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   connect(connectRequest_1)
    #
    # ARGS
    #   connectRequest_1 ConnectRequest - {etapestryAPI/service}ConnectRequest
    #
    # RETURNS
    #   result          C_String - {http://www.w3.org/2001/XMLSchema}string
    #
    def connect(connectRequest_1)
      p [connectRequest_1]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   externalLogin(externalLoginRequest_1)
    #
    # ARGS
    #   externalLoginRequest_1 ExternalLoginRequest - {etapestryAPI/service}ExternalLoginRequest
    #
    # RETURNS
    #   result          C_String - {http://www.w3.org/2001/XMLSchema}string
    #
    def externalLogin(externalLoginRequest_1)
      p [externalLoginRequest_1]
      raise NotImplementedError.new
    end

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
    def findAccountsForOutlookIntegration(string_1, string_2, boolean_3)
      p [string_1, string_2, boolean_3]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getAccount(string_1)
    #
    # ARGS
    #   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
    #
    # RETURNS
    #   result          Account - {etapestryAPI/service}Account
    #
    def getAccount(string_1)
      p [string_1]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getAccountById(int_1)
    #
    # ARGS
    #   int_1           Int - {http://www.w3.org/2001/XMLSchema}int
    #
    # RETURNS
    #   result          Account - {etapestryAPI/service}Account
    #
    def getAccountById(int_1)
      p [int_1]
      raise NotImplementedError.new
    end

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
    def getAccountByPersonaType(string_1, string_2, boolean_3)
      p [string_1, string_2, boolean_3]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getAccountByUniqueDefinedValue(definedValue_1)
    #
    # ARGS
    #   definedValue_1  DefinedValue - {etapestryAPI/service}DefinedValue
    #
    # RETURNS
    #   result          Account - {etapestryAPI/service}Account
    #
    def getAccountByUniqueDefinedValue(definedValue_1)
      p [definedValue_1]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getAccountFromPhoneAThonList(string_1)
    #
    # ARGS
    #   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
    #
    # RETURNS
    #   result          Account - {etapestryAPI/service}Account
    #
    def getAccountFromPhoneAThonList(string_1)
      p [string_1]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getAccountInvolvePrivacySettings(string_1)
    #
    # ARGS
    #   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
    #
    # RETURNS
    #   result          Account - {etapestryAPI/service}Account
    #
    def getAccountInvolvePrivacySettings(string_1)
      p [string_1]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getAccountRef(definedValue_1)
    #
    # ARGS
    #   definedValue_1  DefinedValue - {etapestryAPI/service}DefinedValue
    #
    # RETURNS
    #   result          C_String - {http://www.w3.org/2001/XMLSchema}string
    #
    def getAccountRef(definedValue_1)
      p [definedValue_1]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getApproaches(boolean_1)
    #
    # ARGS
    #   boolean_1       Boolean - {http://www.w3.org/2001/XMLSchema}boolean
    #
    # RETURNS
    #   result          ArrayOfstring - {etapestryAPI/service}ArrayOfstring
    #
    def getApproaches(boolean_1)
      p [boolean_1]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getCachedCartElements(int_1)
    #
    # ARGS
    #   int_1           Int - {http://www.w3.org/2001/XMLSchema}int
    #
    # RETURNS
    #   result          PagedCartElementsResponse - {etapestryAPI/service}PagedCartElementsResponse
    #
    def getCachedCartElements(int_1)
      p [int_1]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getCachedDefinedFields(int_1)
    #
    # ARGS
    #   int_1           Int - {http://www.w3.org/2001/XMLSchema}int
    #
    # RETURNS
    #   result          PagedDefinedFieldsResponse - {etapestryAPI/service}PagedDefinedFieldsResponse
    #
    def getCachedDefinedFields(int_1)
      p [int_1]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getCachedJournalEntries(int_1)
    #
    # ARGS
    #   int_1           Int - {http://www.w3.org/2001/XMLSchema}int
    #
    # RETURNS
    #   result          PagedJournalEntriesResponse - {etapestryAPI/service}PagedJournalEntriesResponse
    #
    def getCachedJournalEntries(int_1)
      p [int_1]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getCachedQueryResults(int_1)
    #
    # ARGS
    #   int_1           Int - {http://www.w3.org/2001/XMLSchema}int
    #
    # RETURNS
    #   result          PagedQueryResultsResponse - {etapestryAPI/service}PagedQueryResultsResponse
    #
    def getCachedQueryResults(int_1)
      p [int_1]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getCalendarItem(string_1)
    #
    # ARGS
    #   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
    #
    # RETURNS
    #   result          CalendarItem - {etapestryAPI/service}CalendarItem
    #
    def getCalendarItem(string_1)
      p [string_1]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getCampaigns(boolean_1)
    #
    # ARGS
    #   boolean_1       Boolean - {http://www.w3.org/2001/XMLSchema}boolean
    #
    # RETURNS
    #   result          ArrayOfstring - {etapestryAPI/service}ArrayOfstring
    #
    def getCampaigns(boolean_1)
      p [boolean_1]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getCartCategory(string_1)
    #
    # ARGS
    #   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
    #
    # RETURNS
    #   result          CartCategory - {etapestryAPI/service}CartCategory
    #
    def getCartCategory(string_1)
      p [string_1]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getCartElements(pagedCartElementsRequest_1)
    #
    # ARGS
    #   pagedCartElementsRequest_1 PagedCartElementsRequest - {etapestryAPI/service}PagedCartElementsRequest
    #
    # RETURNS
    #   result          PagedCartElementsResponse - {etapestryAPI/service}PagedCartElementsResponse
    #
    def getCartElements(pagedCartElementsRequest_1)
      p [pagedCartElementsRequest_1]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getCartItem(string_1)
    #
    # ARGS
    #   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
    #
    # RETURNS
    #   result          CartItem - {etapestryAPI/service}CartItem
    #
    def getCartItem(string_1)
      p [string_1]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getCartPreferences(string_1)
    #
    # ARGS
    #   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
    #
    # RETURNS
    #   result          CartPreferences - {etapestryAPI/service}CartPreferences
    #
    def getCartPreferences(string_1)
      p [string_1]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getContact(string_1)
    #
    # ARGS
    #   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
    #
    # RETURNS
    #   result          Contact - {etapestryAPI/service}Contact
    #
    def getContact(string_1)
      p [string_1]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getContactByUniqueDefinedValue(definedValue_1)
    #
    # ARGS
    #   definedValue_1  DefinedValue - {etapestryAPI/service}DefinedValue
    #
    # RETURNS
    #   result          Contact - {etapestryAPI/service}Contact
    #
    def getContactByUniqueDefinedValue(definedValue_1)
      p [definedValue_1]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getContactRef(definedValue_1)
    #
    # ARGS
    #   definedValue_1  DefinedValue - {etapestryAPI/service}DefinedValue
    #
    # RETURNS
    #   result          C_String - {http://www.w3.org/2001/XMLSchema}string
    #
    def getContactRef(definedValue_1)
      p [definedValue_1]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getDeclaration(string_1)
    #
    # ARGS
    #   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
    #
    # RETURNS
    #   result          Declaration - {etapestryAPI/service}Declaration
    #
    def getDeclaration(string_1)
      p [string_1]
      raise NotImplementedError.new
    end

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
    def getDefinedField(string_1, boolean_2)
      p [string_1, boolean_2]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getDefinedFields(pagedDefinedFieldsRequest_1)
    #
    # ARGS
    #   pagedDefinedFieldsRequest_1 PagedDefinedFieldsRequest - {etapestryAPI/service}PagedDefinedFieldsRequest
    #
    # RETURNS
    #   result          PagedDefinedFieldsResponse - {etapestryAPI/service}PagedDefinedFieldsResponse
    #
    def getDefinedFields(pagedDefinedFieldsRequest_1)
      p [pagedDefinedFieldsRequest_1]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getDisbursement(string_1)
    #
    # ARGS
    #   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
    #
    # RETURNS
    #   result          Disbursement - {etapestryAPI/service}Disbursement
    #
    def getDisbursement(string_1)
      p [string_1]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getDonorLoginPreferences
    #
    # ARGS
    #   N/A
    #
    # RETURNS
    #   result          DonorLoginPreferences - {etapestryAPI/service}DonorLoginPreferences
    #
    def getDonorLoginPreferences()
      p []
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getDuplicateAccount(duplicateAccountSearch_1)
    #
    # ARGS
    #   duplicateAccountSearch_1 DuplicateAccountSearch - {etapestryAPI/service}DuplicateAccountSearch
    #
    # RETURNS
    #   result          Account - {etapestryAPI/service}Account
    #
    def getDuplicateAccount(duplicateAccountSearch_1)
      p [duplicateAccountSearch_1]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getDuplicateAccounts(duplicateAccountSearch_1)
    #
    # ARGS
    #   duplicateAccountSearch_1 DuplicateAccountSearch - {etapestryAPI/service}DuplicateAccountSearch
    #
    # RETURNS
    #   result          ArrayOfAccount - {etapestryAPI/service}ArrayOfAccount
    #
    def getDuplicateAccounts(duplicateAccountSearch_1)
      p [duplicateAccountSearch_1]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getDynamicQueryResults(pagedDynamicQueryResultsRequest_1)
    #
    # ARGS
    #   pagedDynamicQueryResultsRequest_1 PagedDynamicQueryResultsRequest - {etapestryAPI/service}PagedDynamicQueryResultsRequest
    #
    # RETURNS
    #   result          PagedQueryResultsResponse - {etapestryAPI/service}PagedQueryResultsResponse
    #
    def getDynamicQueryResults(pagedDynamicQueryResultsRequest_1)
      p [pagedDynamicQueryResultsRequest_1]
      raise NotImplementedError.new
    end

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
    def getEntityRole(string_1, boolean_2)
      p [string_1, boolean_2]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getExistingQueryResults(pagedExistingQueryResultsRequest_1)
    #
    # ARGS
    #   pagedExistingQueryResultsRequest_1 PagedExistingQueryResultsRequest - {etapestryAPI/service}PagedExistingQueryResultsRequest
    #
    # RETURNS
    #   result          PagedQueryResultsResponse - {etapestryAPI/service}PagedQueryResultsResponse
    #
    def getExistingQueryResults(pagedExistingQueryResultsRequest_1)
      p [pagedExistingQueryResultsRequest_1]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getFunds(boolean_1)
    #
    # ARGS
    #   boolean_1       Boolean - {http://www.w3.org/2001/XMLSchema}boolean
    #
    # RETURNS
    #   result          ArrayOfstring - {etapestryAPI/service}ArrayOfstring
    #
    def getFunds(boolean_1)
      p [boolean_1]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getGift(string_1)
    #
    # ARGS
    #   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
    #
    # RETURNS
    #   result          Gift - {etapestryAPI/service}Gift
    #
    def getGift(string_1)
      p [string_1]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getInvitation(string_1)
    #
    # ARGS
    #   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
    #
    # RETURNS
    #   result          Invitation - {etapestryAPI/service}Invitation
    #
    def getInvitation(string_1)
      p [string_1]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getJournalEntries(pagedJournalEntriesRequest_1)
    #
    # ARGS
    #   pagedJournalEntriesRequest_1 PagedJournalEntriesRequest - {etapestryAPI/service}PagedJournalEntriesRequest
    #
    # RETURNS
    #   result          PagedJournalEntriesResponse - {etapestryAPI/service}PagedJournalEntriesResponse
    #
    def getJournalEntries(pagedJournalEntriesRequest_1)
      p [pagedJournalEntriesRequest_1]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getLetters(boolean_1)
    #
    # ARGS
    #   boolean_1       Boolean - {http://www.w3.org/2001/XMLSchema}boolean
    #
    # RETURNS
    #   result          ArrayOfstring - {etapestryAPI/service}ArrayOfstring
    #
    def getLetters(boolean_1)
      p [boolean_1]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getMyAccount
    #
    # ARGS
    #   N/A
    #
    # RETURNS
    #   result          Account - {etapestryAPI/service}Account
    #
    def getMyAccount()
      p []
      raise NotImplementedError.new
    end

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
    def getMyAccountByPersonaType(string_1, boolean_2)
      p [string_1, boolean_2]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getMyEntityRole
    #
    # ARGS
    #   N/A
    #
    # RETURNS
    #   result          EntityRole - {etapestryAPI/service}EntityRole
    #
    def getMyEntityRole()
      p []
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getMyJournalEntries
    #
    # ARGS
    #   N/A
    #
    # RETURNS
    #   result          Collection - {http://java.sun.com/jax-rpc-ri/internal}collection
    #
    def getMyJournalEntries()
      p []
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getMyJournalSummary
    #
    # ARGS
    #   N/A
    #
    # RETURNS
    #   result          JournalSummary - {etapestryAPI/service}JournalSummary
    #
    def getMyJournalSummary()
      p []
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getMyPrivacyPreferences
    #
    # ARGS
    #   N/A
    #
    # RETURNS
    #   result          PrivacyPreferences - {etapestryAPI/service}PrivacyPreferences
    #
    def getMyPrivacyPreferences()
      p []
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getNextCartElements
    #
    # ARGS
    #   N/A
    #
    # RETURNS
    #   result          PagedCartElementsResponse - {etapestryAPI/service}PagedCartElementsResponse
    #
    def getNextCartElements()
      p []
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getNextDefinedFields
    #
    # ARGS
    #   N/A
    #
    # RETURNS
    #   result          PagedDefinedFieldsResponse - {etapestryAPI/service}PagedDefinedFieldsResponse
    #
    def getNextDefinedFields()
      p []
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getNextJournalEntries
    #
    # ARGS
    #   N/A
    #
    # RETURNS
    #   result          PagedJournalEntriesResponse - {etapestryAPI/service}PagedJournalEntriesResponse
    #
    def getNextJournalEntries()
      p []
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getNextQueryResults
    #
    # ARGS
    #   N/A
    #
    # RETURNS
    #   result          PagedQueryResultsResponse - {etapestryAPI/service}PagedQueryResultsResponse
    #
    def getNextQueryResults()
      p []
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getNote(string_1)
    #
    # ARGS
    #   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
    #
    # RETURNS
    #   result          Note - {etapestryAPI/service}Note
    #
    def getNote(string_1)
      p [string_1]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getNoteByUniqueDefinedValue(definedValue_1)
    #
    # ARGS
    #   definedValue_1  DefinedValue - {etapestryAPI/service}DefinedValue
    #
    # RETURNS
    #   result          Note - {etapestryAPI/service}Note
    #
    def getNoteByUniqueDefinedValue(definedValue_1)
      p [definedValue_1]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getNoteRef(definedValue_1)
    #
    # ARGS
    #   definedValue_1  DefinedValue - {etapestryAPI/service}DefinedValue
    #
    # RETURNS
    #   result          C_String - {http://www.w3.org/2001/XMLSchema}string
    #
    def getNoteRef(definedValue_1)
      p [definedValue_1]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getOrderItem(string_1)
    #
    # ARGS
    #   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
    #
    # RETURNS
    #   result          OrderItem - {etapestryAPI/service}OrderItem
    #
    def getOrderItem(string_1)
      p [string_1]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getOrderShipping(string_1)
    #
    # ARGS
    #   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
    #
    # RETURNS
    #   result          OrderShipping - {etapestryAPI/service}OrderShipping
    #
    def getOrderShipping(string_1)
      p [string_1]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getOrderTax(string_1)
    #
    # ARGS
    #   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
    #
    # RETURNS
    #   result          OrderTax - {etapestryAPI/service}OrderTax
    #
    def getOrderTax(string_1)
      p [string_1]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getOrganizationPreferences
    #
    # ARGS
    #   N/A
    #
    # RETURNS
    #   result          OrganizationPreferences - {etapestryAPI/service}OrganizationPreferences
    #
    def getOrganizationPreferences()
      p []
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getOutlookIntegrationContactMethods
    #
    # ARGS
    #   N/A
    #
    # RETURNS
    #   result          ArrayOfDefinedValue - {etapestryAPI/service}ArrayOfDefinedValue
    #
    def getOutlookIntegrationContactMethods()
      p []
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getOutlookIntegrationVersion
    #
    # ARGS
    #   N/A
    #
    # RETURNS
    #   result          C_String - {http://www.w3.org/2001/XMLSchema}string
    #
    def getOutlookIntegrationVersion()
      p []
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getPayment(string_1)
    #
    # ARGS
    #   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
    #
    # RETURNS
    #   result          Payment - {etapestryAPI/service}Payment
    #
    def getPayment(string_1)
      p [string_1]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getPhoneAThonLists(boolean_1)
    #
    # ARGS
    #   boolean_1       Boolean - {http://www.w3.org/2001/XMLSchema}boolean
    #
    # RETURNS
    #   result          ArrayOfPhoneAThonList - {etapestryAPI/service}ArrayOfPhoneAThonList
    #
    def getPhoneAThonLists(boolean_1)
      p [boolean_1]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getPledge(string_1)
    #
    # ARGS
    #   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
    #
    # RETURNS
    #   result          Pledge - {etapestryAPI/service}Pledge
    #
    def getPledge(string_1)
      p [string_1]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getPrivacyPreferences(string_1)
    #
    # ARGS
    #   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
    #
    # RETURNS
    #   result          PrivacyPreferences - {etapestryAPI/service}PrivacyPreferences
    #
    def getPrivacyPreferences(string_1)
      p [string_1]
      raise NotImplementedError.new
    end

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
    def getQueryResultStats(string_1, string_2)
      p [string_1, string_2]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getRecurringGift(string_1)
    #
    # ARGS
    #   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
    #
    # RETURNS
    #   result          RecurringGift - {etapestryAPI/service}RecurringGift
    #
    def getRecurringGift(string_1)
      p [string_1]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getRecurringGiftSchedule(string_1)
    #
    # ARGS
    #   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
    #
    # RETURNS
    #   result          RecurringGiftSchedule - {etapestryAPI/service}RecurringGiftSchedule
    #
    def getRecurringGiftSchedule(string_1)
      p [string_1]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getSegmentedDonation(string_1)
    #
    # ARGS
    #   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
    #
    # RETURNS
    #   result          SegmentedDonation - {etapestryAPI/service}SegmentedDonation
    #
    def getSegmentedDonation(string_1)
      p [string_1]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getSegmentedOrder(string_1)
    #
    # ARGS
    #   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
    #
    # RETURNS
    #   result          SegmentedOrder - {etapestryAPI/service}SegmentedOrder
    #
    def getSegmentedOrder(string_1)
      p [string_1]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getSegmentedPledge(string_1)
    #
    # ARGS
    #   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
    #
    # RETURNS
    #   result          SegmentedPledge - {etapestryAPI/service}SegmentedPledge
    #
    def getSegmentedPledge(string_1)
      p [string_1]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getSoftCredit(string_1)
    #
    # ARGS
    #   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
    #
    # RETURNS
    #   result          SoftCredit - {etapestryAPI/service}SoftCredit
    #
    def getSoftCredit(string_1)
      p [string_1]
      raise NotImplementedError.new
    end

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
    def getSystemDefinedValues(string_1, boolean_2)
      p [string_1, boolean_2]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getTransaction(string_1)
    #
    # ARGS
    #   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
    #
    # RETURNS
    #   result          AnyType - {http://www.w3.org/2001/XMLSchema}anyType
    #
    def getTransaction(string_1)
      p [string_1]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getTransactionByUniqueDefinedValue(definedValue_1)
    #
    # ARGS
    #   definedValue_1  DefinedValue - {etapestryAPI/service}DefinedValue
    #
    # RETURNS
    #   result          AnyType - {http://www.w3.org/2001/XMLSchema}anyType
    #
    def getTransactionByUniqueDefinedValue(definedValue_1)
      p [definedValue_1]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getTransactionProcessors(boolean_1)
    #
    # ARGS
    #   boolean_1       Boolean - {http://www.w3.org/2001/XMLSchema}boolean
    #
    # RETURNS
    #   result          ArrayOfTransactionProcessor - {etapestryAPI/service}ArrayOfTransactionProcessor
    #
    def getTransactionProcessors(boolean_1)
      p [boolean_1]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   getTransactionRef(definedValue_1)
    #
    # ARGS
    #   definedValue_1  DefinedValue - {etapestryAPI/service}DefinedValue
    #
    # RETURNS
    #   result          C_String - {http://www.w3.org/2001/XMLSchema}string
    #
    def getTransactionRef(definedValue_1)
      p [definedValue_1]
      raise NotImplementedError.new
    end

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
    def getUserDefinedSetValues(string_1, boolean_2)
      p [string_1, boolean_2]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   hasMoreCartElements
    #
    # ARGS
    #   N/A
    #
    # RETURNS
    #   result          Boolean - {http://www.w3.org/2001/XMLSchema}boolean
    #
    def hasMoreCartElements()
      p []
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   hasMoreDefinedFields
    #
    # ARGS
    #   N/A
    #
    # RETURNS
    #   result          Boolean - {http://www.w3.org/2001/XMLSchema}boolean
    #
    def hasMoreDefinedFields()
      p []
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   hasMoreJournalEntries
    #
    # ARGS
    #   N/A
    #
    # RETURNS
    #   result          Boolean - {http://www.w3.org/2001/XMLSchema}boolean
    #
    def hasMoreJournalEntries()
      p []
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   hasMoreQueryResults
    #
    # ARGS
    #   N/A
    #
    # RETURNS
    #   result          Boolean - {http://www.w3.org/2001/XMLSchema}boolean
    #
    def hasMoreQueryResults()
      p []
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   initLinkedTransaction
    #
    # ARGS
    #   N/A
    #
    # RETURNS
    #   result          LinkedTransaction - {etapestryAPI/service}LinkedTransaction
    #
    def initLinkedTransaction()
      p []
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   isMyPasswordExpired
    #
    # ARGS
    #   N/A
    #
    # RETURNS
    #   result          Boolean - {http://www.w3.org/2001/XMLSchema}boolean
    #
    def isMyPasswordExpired()
      p []
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   login(string_1, string_2)
    #
    # ARGS
    #   username        C_String - {http://www.w3.org/2001/XMLSchema}string
    #   password        C_String - {http://www.w3.org/2001/XMLSchema}string
    #
    # RETURNS
    #   endpoint          C_String - {http://www.w3.org/2001/XMLSchema}string
    #
    # TESTING:
    # * login('johntest','mypass') returns success (empty endpoint)
    # * login('jilltest','anotherpass') returns endpoint to '127.0.0.1:10010' if called from elsewhere; otherwise success
    # * login('carltest','anotherpass') returns Account Password Expired
    # * login('fredtest','athirdpass') returns Account Locked Out
    # * login('saratest','fourthpass') returns Invalid License
    # * Anything else should return Invalid Login
    def login(username, password)
      p [username, password]

    end

    # SYNOPSIS
    #   logout
    #
    # ARGS
    #   N/A
    #
    # RETURNS
    #   N/A
    #
    def logout()
      p []
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   pingOkay
    #
    # ARGS
    #   N/A
    #
    # RETURNS
    #   result          C_String - {http://www.w3.org/2001/XMLSchema}string
    #
    def pingOkay()
      p []
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   pingTime
    #
    # ARGS
    #   N/A
    #
    # RETURNS
    #   result          DateTime - {http://www.w3.org/2001/XMLSchema}dateTime
    #
    def pingTime()
      p []
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   processAccountChange(accountChangeRequest_1)
    #
    # ARGS
    #   accountChangeRequest_1 AccountChangeRequest - {etapestryAPI/service}AccountChangeRequest
    #
    # RETURNS
    #   N/A
    #
    def processAccountChange(accountChangeRequest_1)
      p [accountChangeRequest_1]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   processCartOrder(cartOrderRequest_1)
    #
    # ARGS
    #   cartOrderRequest_1 CartOrderRequest - {etapestryAPI/service}CartOrderRequest
    #
    # RETURNS
    #   result          CartOrderResponse - {etapestryAPI/service}CartOrderResponse
    #
    def processCartOrder(cartOrderRequest_1)
      p [cartOrderRequest_1]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   processEcommerceRequest(ecommerceRequest_1)
    #
    # ARGS
    #   ecommerceRequest_1 EcommerceRequest - {etapestryAPI/service}EcommerceRequest
    #
    # RETURNS
    #   result          EcommerceResponse - {etapestryAPI/service}EcommerceResponse
    #
    def processEcommerceRequest(ecommerceRequest_1)
      p [ecommerceRequest_1]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   processForgottenPasswordEmailHelp(forgottenPasswordEmailHelpRequest_1)
    #
    # ARGS
    #   forgottenPasswordEmailHelpRequest_1 ForgottenPasswordEmailHelpRequest - {etapestryAPI/service}ForgottenPasswordEmailHelpRequest
    #
    # RETURNS
    #   result          Int - {http://www.w3.org/2001/XMLSchema}int
    #
    def processForgottenPasswordEmailHelp(forgottenPasswordEmailHelpRequest_1)
      p [forgottenPasswordEmailHelpRequest_1]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   processForgottenPasswordResetHelp(forgottenPasswordResetHelpRequest_1)
    #
    # ARGS
    #   forgottenPasswordResetHelpRequest_1 ForgottenPasswordResetHelpRequest - {etapestryAPI/service}ForgottenPasswordResetHelpRequest
    #
    # RETURNS
    #   result          C_String - {http://www.w3.org/2001/XMLSchema}string
    #
    def processForgottenPasswordResetHelp(forgottenPasswordResetHelpRequest_1)
      p [forgottenPasswordResetHelpRequest_1]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   processTransaction(processTransactionRequest_1)
    #
    # ARGS
    #   processTransactionRequest_1 ProcessTransactionRequest - {etapestryAPI/service}ProcessTransactionRequest
    #
    # RETURNS
    #   result          C_String - {http://www.w3.org/2001/XMLSchema}string
    #
    def processTransaction(processTransactionRequest_1)
      p [processTransactionRequest_1]
      raise NotImplementedError.new
    end

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
    def reverseTransaction(string_1, string_2)
      p [string_1, string_2]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   sendEmail(sendEmailRequest_1)
    #
    # ARGS
    #   sendEmailRequest_1 SendEmailRequest - {etapestryAPI/service}SendEmailRequest
    #
    # RETURNS
    #   result          Int - {http://www.w3.org/2001/XMLSchema}int
    #
    def sendEmail(sendEmailRequest_1)
      p [sendEmailRequest_1]
      raise NotImplementedError.new
    end

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
    def updateAccount(account_1, boolean_2)
      p [account_1, boolean_2]
      raise NotImplementedError.new
    end

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
    def updateContact(contact_1, boolean_2)
      p [contact_1, boolean_2]
      raise NotImplementedError.new
    end

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
    def updateForgottenPassword(string_1, string_2, string_3)
      p [string_1, string_2, string_3]
      raise NotImplementedError.new
    end

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
    def updateGift(gift_1, boolean_2)
      p [gift_1, boolean_2]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   updateMyExpiredPassword(string_1)
    #
    # ARGS
    #   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
    #
    # RETURNS
    #   N/A
    #
    def updateMyExpiredPassword(string_1)
      p [string_1]
      raise NotImplementedError.new
    end

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
    def updateMyLoginCredentials(string_1, string_2)
      p [string_1, string_2]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   updateMyPassword(string_1)
    #
    # ARGS
    #   string_1        C_String - {http://www.w3.org/2001/XMLSchema}string
    #
    # RETURNS
    #   N/A
    #
    def updateMyPassword(string_1)
      p [string_1]
      raise NotImplementedError.new
    end

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
    def updateNote(note_1, boolean_2)
      p [note_1, boolean_2]
      raise NotImplementedError.new
    end

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
    def updatePrivacyPreferences(privacyPreferences_1, boolean_2)
      p [privacyPreferences_1, boolean_2]
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   validateCartLicense
    #
    # ARGS
    #   N/A
    #
    # RETURNS
    #   result          Boolean - {http://www.w3.org/2001/XMLSchema}boolean
    #
    def validateCartLicense()
      p []
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   validateDonorLoginLicense
    #
    # ARGS
    #   N/A
    #
    # RETURNS
    #   result          Boolean - {http://www.w3.org/2001/XMLSchema}boolean
    #
    def validateDonorLoginLicense()
      p []
      raise NotImplementedError.new
    end

    # SYNOPSIS
    #   validateOutlookIntegrationLicense
    #
    # ARGS
    #   N/A
    #
    # RETURNS
    #   result          Boolean - {http://www.w3.org/2001/XMLSchema}boolean
    #
    def validateOutlookIntegrationLicense()
      p []
      raise NotImplementedError.new
    end
  end



end
