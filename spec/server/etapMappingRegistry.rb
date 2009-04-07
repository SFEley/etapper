require 'etap.rb'
require 'soap/mapping'

module Etapper; module Server

module ServiceMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsService = "etapestryAPI/service"

  EncodedRegistry.set(
    Etapper::Server::Collection,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "anyType") }
  )

  EncodedRegistry.register(
    :class => Etapper::Server::Account,
    :schema_type => XSD::QName.new(NsService, "Account"),
    :schema_element => [
      ["accountDefinedValues", ["Etapper::Server::ArrayOfDefinedValue", XSD::QName.new(nil, "accountDefinedValues")], [0, 1]],
      ["accountRoleType", ["SOAP::SOAPInt", XSD::QName.new(nil, "accountRoleType")], [0, 1]],
      ["address", ["SOAP::SOAPString", XSD::QName.new(nil, "address")], [0, 1]],
      ["city", ["SOAP::SOAPString", XSD::QName.new(nil, "city")], [0, 1]],
      ["country", ["SOAP::SOAPString", XSD::QName.new(nil, "country")], [0, 1]],
      ["county", ["SOAP::SOAPString", XSD::QName.new(nil, "county")], [0, 1]],
      ["donorRecognitionName", ["SOAP::SOAPString", XSD::QName.new(nil, "donorRecognitionName")], [0, 1]],
      ["donorRecognitionType", ["SOAP::SOAPInt", XSD::QName.new(nil, "donorRecognitionType")], [0, 1]],
      ["donorRoleRef", ["SOAP::SOAPString", XSD::QName.new(nil, "donorRoleRef")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(nil, "email")], [0, 1]],
      ["firstName", ["SOAP::SOAPString", XSD::QName.new(nil, "firstName")], [0, 1]],
      ["id", ["SOAP::SOAPInt", XSD::QName.new(nil, "id")], [0, 1]],
      ["lastName", ["SOAP::SOAPString", XSD::QName.new(nil, "lastName")], [0, 1]],
      ["longSalutation", ["SOAP::SOAPString", XSD::QName.new(nil, "longSalutation")], [0, 1]],
      ["middleName", ["SOAP::SOAPString", XSD::QName.new(nil, "middleName")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]],
      ["note", ["SOAP::SOAPString", XSD::QName.new(nil, "note")], [0, 1]],
      ["passwordExpired", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "passwordExpired")], [0, 1]],
      ["personaDefinedValues", ["Etapper::Server::ArrayOfDefinedValue", XSD::QName.new(nil, "personaDefinedValues")], [0, 1]],
      ["personaType", ["SOAP::SOAPString", XSD::QName.new(nil, "personaType")], [0, 1]],
      ["personaTypes", ["Etapper::Server::ArrayOfstring", XSD::QName.new(nil, "personaTypes")], [0, 1]],
      ["phones", ["Etapper::Server::ArrayOfPhone", XSD::QName.new(nil, "phones")], [0, 1]],
      ["postalCode", ["SOAP::SOAPString", XSD::QName.new(nil, "postalCode")], [0, 1]],
      ["primaryPersona", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "primaryPersona")], [0, 1]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "ref")], [0, 1]],
      ["shortSalutation", ["SOAP::SOAPString", XSD::QName.new(nil, "shortSalutation")], [0, 1]],
      ["sortName", ["SOAP::SOAPString", XSD::QName.new(nil, "sortName")], [0, 1]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(nil, "state")], [0, 1]],
      ["teamRoleRef", ["SOAP::SOAPString", XSD::QName.new(nil, "teamRoleRef")], [0, 1]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")], [0, 1]],
      ["tributeRoleRef", ["SOAP::SOAPString", XSD::QName.new(nil, "tributeRoleRef")], [0, 1]],
      ["userRoleRef", ["SOAP::SOAPString", XSD::QName.new(nil, "userRoleRef")], [0, 1]],
      ["webAddress", ["SOAP::SOAPString", XSD::QName.new(nil, "webAddress")], [0, 1]]
    ]
  )

  EncodedRegistry.set(
    Etapper::Server::ArrayOfDefinedValue,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsService, "DefinedValue") }
  )

  EncodedRegistry.register(
    :class => Etapper::Server::DefinedValue,
    :schema_type => XSD::QName.new(NsService, "DefinedValue"),
    :schema_element => [
      ["dataType", ["SOAP::SOAPInt", XSD::QName.new(nil, "dataType")], [0, 1]],
      ["displayType", ["SOAP::SOAPInt", XSD::QName.new(nil, "displayType")], [0, 1]],
      ["fieldName", ["SOAP::SOAPString", XSD::QName.new(nil, "fieldName")], [0, 1]],
      ["fieldRef", ["SOAP::SOAPString", XSD::QName.new(nil, "fieldRef")], [0, 1]],
      ["value", ["SOAP::SOAPString", XSD::QName.new(nil, "value")], [0, 1]],
      ["valueRef", ["SOAP::SOAPString", XSD::QName.new(nil, "valueRef")], [0, 1]]
    ]
  )

  EncodedRegistry.set(
    Etapper::Server::ArrayOfstring,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "string") }
  )

  EncodedRegistry.set(
    Etapper::Server::ArrayOfPhone,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsService, "Phone") }
  )

  EncodedRegistry.register(
    :class => Etapper::Server::Phone,
    :schema_type => XSD::QName.new(NsService, "Phone"),
    :schema_element => [
      ["number", ["SOAP::SOAPString", XSD::QName.new(nil, "number")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Etapper::Server::Gift,
    :schema_type => XSD::QName.new(NsService, "Gift"),
    :schema_element => [
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(nil, "accountName")], [0, 1]],
      ["accountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "accountRef")], [0, 1]],
      ["amount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "amount")], [0, 1]],
      ["approach", ["SOAP::SOAPString", XSD::QName.new(nil, "approach")], [0, 1]],
      ["attachments", ["Etapper::Server::ArrayOfAttachment", XSD::QName.new(nil, "attachments")], [0, 1]],
      ["campaign", ["SOAP::SOAPString", XSD::QName.new(nil, "campaign")], [0, 1]],
      ["date", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "date")], [0, 1]],
      ["definedValues", ["Etapper::Server::ArrayOfDefinedValue", XSD::QName.new(nil, "definedValues")], [0, 1]],
      ["final", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "final")], [0, 1]],
      ["fund", ["SOAP::SOAPString", XSD::QName.new(nil, "fund")], [0, 1]],
      ["letter", ["SOAP::SOAPString", XSD::QName.new(nil, "letter")], [0, 1]],
      ["nonDeductibleAmount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "nonDeductibleAmount")], [0, 1]],
      ["note", ["SOAP::SOAPString", XSD::QName.new(nil, "note")], [0, 1]],
      ["offsettingRef", ["SOAP::SOAPString", XSD::QName.new(nil, "offsettingRef")], [0, 1]],
      ["originalAccountName", ["SOAP::SOAPString", XSD::QName.new(nil, "originalAccountName")], [0, 1]],
      ["originalAccountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "originalAccountRef")], [0, 1]],
      ["originalTransactionRef", ["SOAP::SOAPString", XSD::QName.new(nil, "originalTransactionRef")], [0, 1]],
      ["receipt", ["SOAP::SOAPString", XSD::QName.new(nil, "receipt")], [0, 1]],
      ["recognitionName", ["SOAP::SOAPString", XSD::QName.new(nil, "recognitionName")], [0, 1]],
      ["recognitionType", ["SOAP::SOAPInt", XSD::QName.new(nil, "recognitionType")], [0, 1]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "ref")], [0, 1]],
      ["segmentedTransactionRef", ["SOAP::SOAPString", XSD::QName.new(nil, "segmentedTransactionRef")], [0, 1]],
      ["softCredit", ["Etapper::Server::SoftCredit", XSD::QName.new(nil, "softCredit")], [0, 1]],
      ["tributeAccountName", ["SOAP::SOAPString", XSD::QName.new(nil, "tributeAccountName")], [0, 1]],
      ["tributeAccountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "tributeAccountRef")], [0, 1]],
      ["type", ["SOAP::SOAPInt", XSD::QName.new(nil, "type")], [0, 1]],
      ["valuable", ["Etapper::Server::Valuable", XSD::QName.new(nil, "valuable")], [0, 1]]
    ]
  )

  EncodedRegistry.set(
    Etapper::Server::ArrayOfAttachment,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsService, "Attachment") }
  )

  EncodedRegistry.register(
    :class => Etapper::Server::Attachment,
    :schema_type => XSD::QName.new(NsService, "Attachment"),
    :schema_element => [
      ["date", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "date")], [0, 1]],
      ["fileContent", ["SOAP::SOAPBase64", XSD::QName.new(nil, "fileContent")], [0, 1]],
      ["filename", ["SOAP::SOAPString", XSD::QName.new(nil, "filename")], [0, 1]],
      ["mimeType", ["SOAP::SOAPString", XSD::QName.new(nil, "mimeType")], [0, 1]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "ref")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Etapper::Server::SoftCredit,
    :schema_type => XSD::QName.new(NsService, "SoftCredit"),
    :schema_element => [
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(nil, "accountName")], [0, 1]],
      ["accountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "accountRef")], [0, 1]],
      ["amount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "amount")], [0, 1]],
      ["approach", ["SOAP::SOAPString", XSD::QName.new(nil, "approach")], [0, 1]],
      ["campaign", ["SOAP::SOAPString", XSD::QName.new(nil, "campaign")], [0, 1]],
      ["date", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "date")], [0, 1]],
      ["final", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "final")], [0, 1]],
      ["fund", ["SOAP::SOAPString", XSD::QName.new(nil, "fund")], [0, 1]],
      ["hardCreditAccountName", ["SOAP::SOAPString", XSD::QName.new(nil, "hardCreditAccountName")], [0, 1]],
      ["hardCreditAccountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "hardCreditAccountRef")], [0, 1]],
      ["hardCreditRef", ["SOAP::SOAPString", XSD::QName.new(nil, "hardCreditRef")], [0, 1]],
      ["letter", ["SOAP::SOAPString", XSD::QName.new(nil, "letter")], [0, 1]],
      ["note", ["SOAP::SOAPString", XSD::QName.new(nil, "note")], [0, 1]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "ref")], [0, 1]],
      ["type", ["SOAP::SOAPInt", XSD::QName.new(nil, "type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Etapper::Server::Valuable,
    :schema_type => XSD::QName.new(NsService, "Valuable"),
    :schema_element => [
      ["bond", ["Etapper::Server::Bond", XSD::QName.new(nil, "bond")], [0, 1]],
      ["cash", ["Etapper::Server::Cash", XSD::QName.new(nil, "cash")], [0, 1]],
      ["check", ["Etapper::Server::Check", XSD::QName.new(nil, "check")], [0, 1]],
      ["creditCard", ["Etapper::Server::CreditCard", XSD::QName.new(nil, "creditCard")], [0, 1]],
      ["electronicFundsTransfer", ["Etapper::Server::ElectronicFundsTransfer", XSD::QName.new(nil, "electronicFundsTransfer")], [0, 1]],
      ["inKind", ["Etapper::Server::InKind", XSD::QName.new(nil, "inKind")], [0, 1]],
      ["insurance", ["Etapper::Server::Insurance", XSD::QName.new(nil, "insurance")], [0, 1]],
      ["realEstate", ["Etapper::Server::RealEstate", XSD::QName.new(nil, "realEstate")], [0, 1]],
      ["stock", ["Etapper::Server::Stock", XSD::QName.new(nil, "stock")], [0, 1]],
      ["type", ["SOAP::SOAPInt", XSD::QName.new(nil, "type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Etapper::Server::Bond,
    :schema_type => XSD::QName.new(NsService, "Bond"),
    :schema_element => [
      ["actualValue", ["SOAP::SOAPDouble", XSD::QName.new(nil, "actualValue")], [0, 1]],
      ["dateCashed", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "dateCashed")], [0, 1]],
      ["issuingEntity", ["SOAP::SOAPString", XSD::QName.new(nil, "issuingEntity")], [0, 1]],
      ["maturityDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "maturityDate")], [0, 1]],
      ["note", ["SOAP::SOAPString", XSD::QName.new(nil, "note")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Etapper::Server::Cash,
    :schema_type => XSD::QName.new(NsService, "Cash"),
    :schema_element => [
      ["note", ["SOAP::SOAPString", XSD::QName.new(nil, "note")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Etapper::Server::Check,
    :schema_type => XSD::QName.new(NsService, "Check"),
    :schema_element => [
      ["account", ["SOAP::SOAPString", XSD::QName.new(nil, "account")], [0, 1]],
      ["bank", ["SOAP::SOAPString", XSD::QName.new(nil, "bank")], [0, 1]],
      ["date", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "date")], [0, 1]],
      ["note", ["SOAP::SOAPString", XSD::QName.new(nil, "note")], [0, 1]],
      ["number", ["SOAP::SOAPString", XSD::QName.new(nil, "number")], [0, 1]],
      ["payee", ["SOAP::SOAPString", XSD::QName.new(nil, "payee")], [0, 1]],
      ["signator", ["SOAP::SOAPString", XSD::QName.new(nil, "signator")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Etapper::Server::CreditCard,
    :schema_type => XSD::QName.new(NsService, "CreditCard"),
    :schema_element => [
      ["authorizationCode", ["SOAP::SOAPString", XSD::QName.new(nil, "authorizationCode")], [0, 1]],
      ["cardType", ["SOAP::SOAPString", XSD::QName.new(nil, "cardType")], [0, 1]],
      ["cvv2", ["SOAP::SOAPString", XSD::QName.new(nil, "cvv2")], [0, 1]],
      ["expirationMonth", ["SOAP::SOAPInt", XSD::QName.new(nil, "expirationMonth")], [0, 1]],
      ["expirationYear", ["SOAP::SOAPInt", XSD::QName.new(nil, "expirationYear")], [0, 1]],
      ["firstName", ["SOAP::SOAPString", XSD::QName.new(nil, "firstName")], [0, 1]],
      ["lastName", ["SOAP::SOAPString", XSD::QName.new(nil, "lastName")], [0, 1]],
      ["middleName", ["SOAP::SOAPString", XSD::QName.new(nil, "middleName")], [0, 1]],
      ["nameOnCard", ["SOAP::SOAPString", XSD::QName.new(nil, "nameOnCard")], [0, 1]],
      ["note", ["SOAP::SOAPString", XSD::QName.new(nil, "note")], [0, 1]],
      ["number", ["SOAP::SOAPString", XSD::QName.new(nil, "number")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Etapper::Server::ElectronicFundsTransfer,
    :schema_type => XSD::QName.new(NsService, "ElectronicFundsTransfer"),
    :schema_element => [
      ["accountNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "accountNumber")], [0, 1]],
      ["accountType", ["SOAP::SOAPInt", XSD::QName.new(nil, "accountType")], [0, 1]],
      ["authorizationCode", ["SOAP::SOAPString", XSD::QName.new(nil, "authorizationCode")], [0, 1]],
      ["bank", ["SOAP::SOAPString", XSD::QName.new(nil, "bank")], [0, 1]],
      ["dateOfBirth", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "dateOfBirth")], [0, 1]],
      ["driversLicenseNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "driversLicenseNumber")], [0, 1]],
      ["driversLicenseState", ["SOAP::SOAPString", XSD::QName.new(nil, "driversLicenseState")], [0, 1]],
      ["firstName", ["SOAP::SOAPString", XSD::QName.new(nil, "firstName")], [0, 1]],
      ["lastName", ["SOAP::SOAPString", XSD::QName.new(nil, "lastName")], [0, 1]],
      ["middleName", ["SOAP::SOAPString", XSD::QName.new(nil, "middleName")], [0, 1]],
      ["note", ["SOAP::SOAPString", XSD::QName.new(nil, "note")], [0, 1]],
      ["processDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "processDate")], [0, 1]],
      ["routingNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "routingNumber")], [0, 1]],
      ["ssn", ["SOAP::SOAPString", XSD::QName.new(nil, "ssn")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Etapper::Server::InKind,
    :schema_type => XSD::QName.new(NsService, "InKind"),
    :schema_element => [
      ["note", ["SOAP::SOAPString", XSD::QName.new(nil, "note")], [0, 1]],
      ["saleDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "saleDate")], [0, 1]],
      ["saleValue", ["SOAP::SOAPDouble", XSD::QName.new(nil, "saleValue")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Etapper::Server::Insurance,
    :schema_type => XSD::QName.new(NsService, "Insurance"),
    :schema_element => [
      ["beneficiary", ["SOAP::SOAPString", XSD::QName.new(nil, "beneficiary")], [0, 1]],
      ["insurer", ["SOAP::SOAPString", XSD::QName.new(nil, "insurer")], [0, 1]],
      ["lengthOfPolicyAgreement", ["SOAP::SOAPString", XSD::QName.new(nil, "lengthOfPolicyAgreement")], [0, 1]],
      ["note", ["SOAP::SOAPString", XSD::QName.new(nil, "note")], [0, 1]],
      ["organizationPayingPremiums", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "organizationPayingPremiums")], [0, 1]],
      ["policyNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "policyNumber")], [0, 1]],
      ["premiumAmount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "premiumAmount")], [0, 1]],
      ["premiumFrequency", ["SOAP::SOAPInt", XSD::QName.new(nil, "premiumFrequency")], [0, 1]],
      ["surrenderDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "surrenderDate")], [0, 1]],
      ["surrenderValue", ["SOAP::SOAPDouble", XSD::QName.new(nil, "surrenderValue")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Etapper::Server::RealEstate,
    :schema_type => XSD::QName.new(NsService, "RealEstate"),
    :schema_element => [
      ["location", ["SOAP::SOAPString", XSD::QName.new(nil, "location")], [0, 1]],
      ["note", ["SOAP::SOAPString", XSD::QName.new(nil, "note")], [0, 1]],
      ["realEstateType", ["SOAP::SOAPString", XSD::QName.new(nil, "realEstateType")], [0, 1]],
      ["saleDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "saleDate")], [0, 1]],
      ["saleValue", ["SOAP::SOAPDouble", XSD::QName.new(nil, "saleValue")], [0, 1]],
      ["size", ["SOAP::SOAPString", XSD::QName.new(nil, "size")], [0, 1]],
      ["taxParcelNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "taxParcelNumber")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Etapper::Server::Stock,
    :schema_type => XSD::QName.new(NsService, "Stock"),
    :schema_element => [
      ["brokerName", ["SOAP::SOAPString", XSD::QName.new(nil, "brokerName")], [0, 1]],
      ["brokerageFee", ["SOAP::SOAPDouble", XSD::QName.new(nil, "brokerageFee")], [0, 1]],
      ["company", ["SOAP::SOAPString", XSD::QName.new(nil, "company")], [0, 1]],
      ["note", ["SOAP::SOAPString", XSD::QName.new(nil, "note")], [0, 1]],
      ["numberOfShares", ["SOAP::SOAPDouble", XSD::QName.new(nil, "numberOfShares")], [0, 1]],
      ["pricePerShare", ["SOAP::SOAPDouble", XSD::QName.new(nil, "pricePerShare")], [0, 1]],
      ["saleDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "saleDate")], [0, 1]],
      ["salePricePerShare", ["SOAP::SOAPDouble", XSD::QName.new(nil, "salePricePerShare")], [0, 1]],
      ["ticker", ["SOAP::SOAPString", XSD::QName.new(nil, "ticker")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Etapper::Server::Payment,
    :schema_type => XSD::QName.new(NsService, "Payment"),
    :schema_element => [
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(nil, "accountName")], [0, 1]],
      ["accountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "accountRef")], [0, 1]],
      ["amount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "amount")], [0, 1]],
      ["approach", ["SOAP::SOAPString", XSD::QName.new(nil, "approach")], [0, 1]],
      ["attachments", ["Etapper::Server::ArrayOfAttachment", XSD::QName.new(nil, "attachments")], [0, 1]],
      ["campaign", ["SOAP::SOAPString", XSD::QName.new(nil, "campaign")], [0, 1]],
      ["date", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "date")], [0, 1]],
      ["definedValues", ["Etapper::Server::ArrayOfDefinedValue", XSD::QName.new(nil, "definedValues")], [0, 1]],
      ["final", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "final")], [0, 1]],
      ["fund", ["SOAP::SOAPString", XSD::QName.new(nil, "fund")], [0, 1]],
      ["letter", ["SOAP::SOAPString", XSD::QName.new(nil, "letter")], [0, 1]],
      ["note", ["SOAP::SOAPString", XSD::QName.new(nil, "note")], [0, 1]],
      ["offsettingRef", ["SOAP::SOAPString", XSD::QName.new(nil, "offsettingRef")], [0, 1]],
      ["originalAccountName", ["SOAP::SOAPString", XSD::QName.new(nil, "originalAccountName")], [0, 1]],
      ["originalAccountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "originalAccountRef")], [0, 1]],
      ["originalTransactionRef", ["SOAP::SOAPString", XSD::QName.new(nil, "originalTransactionRef")], [0, 1]],
      ["pledgeRef", ["SOAP::SOAPString", XSD::QName.new(nil, "pledgeRef")], [0, 1]],
      ["receipt", ["SOAP::SOAPString", XSD::QName.new(nil, "receipt")], [0, 1]],
      ["recognitionName", ["SOAP::SOAPString", XSD::QName.new(nil, "recognitionName")], [0, 1]],
      ["recognitionType", ["SOAP::SOAPInt", XSD::QName.new(nil, "recognitionType")], [0, 1]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "ref")], [0, 1]],
      ["segmentedTransactionRef", ["SOAP::SOAPString", XSD::QName.new(nil, "segmentedTransactionRef")], [0, 1]],
      ["softCredit", ["Etapper::Server::SoftCredit", XSD::QName.new(nil, "softCredit")], [0, 1]],
      ["tributeAccountName", ["SOAP::SOAPString", XSD::QName.new(nil, "tributeAccountName")], [0, 1]],
      ["tributeAccountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "tributeAccountRef")], [0, 1]],
      ["type", ["SOAP::SOAPInt", XSD::QName.new(nil, "type")], [0, 1]],
      ["valuable", ["Etapper::Server::Valuable", XSD::QName.new(nil, "valuable")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Etapper::Server::Contact,
    :schema_type => XSD::QName.new(NsService, "Contact"),
    :schema_element => [
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(nil, "accountName")], [0, 1]],
      ["accountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "accountRef")], [0, 1]],
      ["attachments", ["Etapper::Server::ArrayOfAttachment", XSD::QName.new(nil, "attachments")], [0, 1]],
      ["date", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "date")], [0, 1]],
      ["definedValues", ["Etapper::Server::ArrayOfDefinedValue", XSD::QName.new(nil, "definedValues")], [0, 1]],
      ["final", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "final")], [0, 1]],
      ["method", ["SOAP::SOAPString", XSD::QName.new(nil, "method")], [0, 1]],
      ["note", ["SOAP::SOAPString", XSD::QName.new(nil, "note")], [0, 1]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "ref")], [0, 1]],
      ["subject", ["SOAP::SOAPString", XSD::QName.new(nil, "subject")], [0, 1]],
      ["type", ["SOAP::SOAPInt", XSD::QName.new(nil, "type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Etapper::Server::Disbursement,
    :schema_type => XSD::QName.new(NsService, "Disbursement"),
    :schema_element => [
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(nil, "accountName")], [0, 1]],
      ["accountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "accountRef")], [0, 1]],
      ["amount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "amount")], [0, 1]],
      ["approach", ["SOAP::SOAPString", XSD::QName.new(nil, "approach")], [0, 1]],
      ["attachments", ["Etapper::Server::ArrayOfAttachment", XSD::QName.new(nil, "attachments")], [0, 1]],
      ["campaign", ["SOAP::SOAPString", XSD::QName.new(nil, "campaign")], [0, 1]],
      ["date", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "date")], [0, 1]],
      ["definedValues", ["Etapper::Server::ArrayOfDefinedValue", XSD::QName.new(nil, "definedValues")], [0, 1]],
      ["final", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "final")], [0, 1]],
      ["fund", ["SOAP::SOAPString", XSD::QName.new(nil, "fund")], [0, 1]],
      ["letter", ["SOAP::SOAPString", XSD::QName.new(nil, "letter")], [0, 1]],
      ["note", ["SOAP::SOAPString", XSD::QName.new(nil, "note")], [0, 1]],
      ["offsettingRef", ["SOAP::SOAPString", XSD::QName.new(nil, "offsettingRef")], [0, 1]],
      ["receipt", ["SOAP::SOAPString", XSD::QName.new(nil, "receipt")], [0, 1]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "ref")], [0, 1]],
      ["type", ["SOAP::SOAPInt", XSD::QName.new(nil, "type")], [0, 1]],
      ["valuable", ["Etapper::Server::Valuable", XSD::QName.new(nil, "valuable")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Etapper::Server::LoginCredentialsRequest,
    :schema_type => XSD::QName.new(NsService, "LoginCredentialsRequest"),
    :schema_element => [
      ["account", ["Etapper::Server::Account", XSD::QName.new(nil, "account")], [0, 1]],
      ["confirmationLoginURL", ["SOAP::SOAPString", XSD::QName.new(nil, "confirmationLoginURL")], [0, 1]],
      ["confirmationMessageFooter", ["SOAP::SOAPString", XSD::QName.new(nil, "confirmationMessageFooter")], [0, 1]],
      ["confirmationMessageHeader", ["SOAP::SOAPString", XSD::QName.new(nil, "confirmationMessageHeader")], [0, 1]],
      ["confirmationSender", ["SOAP::SOAPString", XSD::QName.new(nil, "confirmationSender")], [0, 1]],
      ["confirmationSignature", ["SOAP::SOAPString", XSD::QName.new(nil, "confirmationSignature")], [0, 1]],
      ["confirmationSubject", ["SOAP::SOAPString", XSD::QName.new(nil, "confirmationSubject")], [0, 1]],
      ["duplicateSearchCriteria", ["Etapper::Server::ArrayOfSearchCriteria", XSD::QName.new(nil, "duplicateSearchCriteria")], [0, 1]],
      ["duplicateSearchQuery", ["SOAP::SOAPString", XSD::QName.new(nil, "duplicateSearchQuery")], [0, 1]],
      ["failureEmail", ["SOAP::SOAPString", XSD::QName.new(nil, "failureEmail")], [0, 1]],
      ["loginId", ["SOAP::SOAPString", XSD::QName.new(nil, "loginId")], [0, 1]],
      ["matchHasLoginIdActionType", ["SOAP::SOAPInt", XSD::QName.new(nil, "matchHasLoginIdActionType")], [0, 1]],
      ["matchMultipleActionType", ["SOAP::SOAPInt", XSD::QName.new(nil, "matchMultipleActionType")], [0, 1]],
      ["matchNotFoundActionType", ["SOAP::SOAPInt", XSD::QName.new(nil, "matchNotFoundActionType")], [0, 1]],
      ["notificationEmail", ["SOAP::SOAPString", XSD::QName.new(nil, "notificationEmail")], [0, 1]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(nil, "password")], [0, 1]]
    ]
  )

  EncodedRegistry.set(
    Etapper::Server::ArrayOfSearchCriteria,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsService, "SearchCriteria") }
  )

  EncodedRegistry.register(
    :class => Etapper::Server::SearchCriteria,
    :schema_type => XSD::QName.new(NsService, "SearchCriteria"),
    :schema_element => [
      ["action", ["SOAP::SOAPString", XSD::QName.new(nil, "action")], [0, 1]],
      ["field", ["SOAP::SOAPString", XSD::QName.new(nil, "field")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")], [0, 1]],
      ["values", ["Etapper::Server::ArrayOfstring", XSD::QName.new(nil, "values")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Etapper::Server::LoginCredentialsResponse,
    :schema_type => XSD::QName.new(NsService, "LoginCredentialsResponse"),
    :schema_element => [
      ["accountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "accountRef")], [0, 1]],
      ["createdNewAccount", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "createdNewAccount")], [0, 1]],
      ["matchedMultiples", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "matchedMultiples")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Etapper::Server::Note,
    :schema_type => XSD::QName.new(NsService, "Note"),
    :schema_element => [
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(nil, "accountName")], [0, 1]],
      ["accountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "accountRef")], [0, 1]],
      ["attachments", ["Etapper::Server::ArrayOfAttachment", XSD::QName.new(nil, "attachments")], [0, 1]],
      ["date", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "date")], [0, 1]],
      ["definedValues", ["Etapper::Server::ArrayOfDefinedValue", XSD::QName.new(nil, "definedValues")], [0, 1]],
      ["final", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "final")], [0, 1]],
      ["immutable", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "immutable")], [0, 1]],
      ["note", ["SOAP::SOAPString", XSD::QName.new(nil, "note")], [0, 1]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "ref")], [0, 1]],
      ["type", ["SOAP::SOAPInt", XSD::QName.new(nil, "type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Etapper::Server::OutlookIntegrationEmail,
    :schema_type => XSD::QName.new(NsService, "OutlookIntegrationEmail"),
    :schema_element => [
      ["bCC", ["SOAP::SOAPString", XSD::QName.new(nil, "BCC")], [0, 1]],
      ["cC", ["SOAP::SOAPString", XSD::QName.new(nil, "CC")], [0, 1]],
      ["attachments", ["Etapper::Server::ArrayOfAttachment", XSD::QName.new(nil, "attachments")], [0, 1]],
      ["contactMethodRef", ["SOAP::SOAPString", XSD::QName.new(nil, "contactMethodRef")], [0, 1]],
      ["date", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "date")], [0, 1]],
      ["from", ["SOAP::SOAPString", XSD::QName.new(nil, "from")], [0, 1]],
      ["message", ["SOAP::SOAPBase64", XSD::QName.new(nil, "message")], [0, 1]],
      ["subject", ["SOAP::SOAPBase64", XSD::QName.new(nil, "subject")], [0, 1]],
      ["to", ["SOAP::SOAPString", XSD::QName.new(nil, "to")], [0, 1]]
    ]
  )

  EncodedRegistry.set(
    Etapper::Server::ArrayOfAccount,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsService, "Account") }
  )

  EncodedRegistry.register(
    :class => Etapper::Server::Pledge,
    :schema_type => XSD::QName.new(NsService, "Pledge"),
    :schema_element => [
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(nil, "accountName")], [0, 1]],
      ["accountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "accountRef")], [0, 1]],
      ["amount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "amount")], [0, 1]],
      ["approach", ["SOAP::SOAPString", XSD::QName.new(nil, "approach")], [0, 1]],
      ["attachments", ["Etapper::Server::ArrayOfAttachment", XSD::QName.new(nil, "attachments")], [0, 1]],
      ["campaign", ["SOAP::SOAPString", XSD::QName.new(nil, "campaign")], [0, 1]],
      ["customSchedule", ["Etapper::Server::CustomPaymentSchedule", XSD::QName.new(nil, "customSchedule")], [0, 1]],
      ["date", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "date")], [0, 1]],
      ["definedValues", ["Etapper::Server::ArrayOfDefinedValue", XSD::QName.new(nil, "definedValues")], [0, 1]],
      ["final", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "final")], [0, 1]],
      ["fund", ["SOAP::SOAPString", XSD::QName.new(nil, "fund")], [0, 1]],
      ["initialPaymentAmount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "initialPaymentAmount")], [0, 1]],
      ["letter", ["SOAP::SOAPString", XSD::QName.new(nil, "letter")], [0, 1]],
      ["linkedPaymentsAmount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "linkedPaymentsAmount")], [0, 1]],
      ["nextPaymentAmount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "nextPaymentAmount")], [0, 1]],
      ["nextPaymentDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "nextPaymentDate")], [0, 1]],
      ["nonDeductibleAmount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "nonDeductibleAmount")], [0, 1]],
      ["note", ["SOAP::SOAPString", XSD::QName.new(nil, "note")], [0, 1]],
      ["offsettingRef", ["SOAP::SOAPString", XSD::QName.new(nil, "offsettingRef")], [0, 1]],
      ["originalAccountName", ["SOAP::SOAPString", XSD::QName.new(nil, "originalAccountName")], [0, 1]],
      ["originalAccountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "originalAccountRef")], [0, 1]],
      ["originalTransactionRef", ["SOAP::SOAPString", XSD::QName.new(nil, "originalTransactionRef")], [0, 1]],
      ["outstandingBalance", ["SOAP::SOAPDouble", XSD::QName.new(nil, "outstandingBalance")], [0, 1]],
      ["paymentValuable", ["Etapper::Server::Valuable", XSD::QName.new(nil, "paymentValuable")], [0, 1]],
      ["receipt", ["SOAP::SOAPString", XSD::QName.new(nil, "receipt")], [0, 1]],
      ["recognitionName", ["SOAP::SOAPString", XSD::QName.new(nil, "recognitionName")], [0, 1]],
      ["recognitionType", ["SOAP::SOAPInt", XSD::QName.new(nil, "recognitionType")], [0, 1]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "ref")], [0, 1]],
      ["scheduledValuable", ["Etapper::Server::Valuable", XSD::QName.new(nil, "scheduledValuable")], [0, 1]],
      ["segmentedTransactionRef", ["SOAP::SOAPString", XSD::QName.new(nil, "segmentedTransactionRef")], [0, 1]],
      ["softCredit", ["Etapper::Server::SoftCredit", XSD::QName.new(nil, "softCredit")], [0, 1]],
      ["standardSchedule", ["Etapper::Server::StandardPaymentSchedule", XSD::QName.new(nil, "standardSchedule")], [0, 1]],
      ["tributeAccountName", ["SOAP::SOAPString", XSD::QName.new(nil, "tributeAccountName")], [0, 1]],
      ["tributeAccountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "tributeAccountRef")], [0, 1]],
      ["type", ["SOAP::SOAPInt", XSD::QName.new(nil, "type")], [0, 1]],
      ["writeOff", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "writeOff")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Etapper::Server::CustomPaymentSchedule,
    :schema_type => XSD::QName.new(NsService, "CustomPaymentSchedule"),
    :schema_element => [
      ["installmentAmounts", ["Etapper::Server::ArrayOfdouble", XSD::QName.new(nil, "installmentAmounts")], [0, 1]],
      ["installmentDates", ["Etapper::Server::ArrayOfdateTime", XSD::QName.new(nil, "installmentDates")], [0, 1]],
      ["note", ["SOAP::SOAPString", XSD::QName.new(nil, "note")], [0, 1]],
      ["processType", ["SOAP::SOAPInt", XSD::QName.new(nil, "processType")], [0, 1]]
    ]
  )

  EncodedRegistry.set(
    Etapper::Server::ArrayOfdouble,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "double") }
  )

  EncodedRegistry.set(
    Etapper::Server::ArrayOfdateTime,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "dateTime") }
  )

  EncodedRegistry.register(
    :class => Etapper::Server::StandardPaymentSchedule,
    :schema_type => XSD::QName.new(NsService, "StandardPaymentSchedule"),
    :schema_element => [
      ["firstInstallmentDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "firstInstallmentDate")], [0, 1]],
      ["frequency", ["SOAP::SOAPInt", XSD::QName.new(nil, "frequency")], [0, 1]],
      ["installmentAmount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "installmentAmount")], [0, 1]],
      ["note", ["SOAP::SOAPString", XSD::QName.new(nil, "note")], [0, 1]],
      ["processType", ["SOAP::SOAPInt", XSD::QName.new(nil, "processType")], [0, 1]],
      ["stopDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "stopDate")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Etapper::Server::RecurringGift,
    :schema_type => XSD::QName.new(NsService, "RecurringGift"),
    :schema_element => [
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(nil, "accountName")], [0, 1]],
      ["accountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "accountRef")], [0, 1]],
      ["amount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "amount")], [0, 1]],
      ["approach", ["SOAP::SOAPString", XSD::QName.new(nil, "approach")], [0, 1]],
      ["attachments", ["Etapper::Server::ArrayOfAttachment", XSD::QName.new(nil, "attachments")], [0, 1]],
      ["campaign", ["SOAP::SOAPString", XSD::QName.new(nil, "campaign")], [0, 1]],
      ["copyRgsElements", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "copyRgsElements")], [0, 1]],
      ["date", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "date")], [0, 1]],
      ["definedValues", ["Etapper::Server::ArrayOfDefinedValue", XSD::QName.new(nil, "definedValues")], [0, 1]],
      ["final", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "final")], [0, 1]],
      ["fund", ["SOAP::SOAPString", XSD::QName.new(nil, "fund")], [0, 1]],
      ["letter", ["SOAP::SOAPString", XSD::QName.new(nil, "letter")], [0, 1]],
      ["nonDeductibleAmount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "nonDeductibleAmount")], [0, 1]],
      ["note", ["SOAP::SOAPString", XSD::QName.new(nil, "note")], [0, 1]],
      ["offsettingRef", ["SOAP::SOAPString", XSD::QName.new(nil, "offsettingRef")], [0, 1]],
      ["originalAccountName", ["SOAP::SOAPString", XSD::QName.new(nil, "originalAccountName")], [0, 1]],
      ["originalAccountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "originalAccountRef")], [0, 1]],
      ["originalTransactionRef", ["SOAP::SOAPString", XSD::QName.new(nil, "originalTransactionRef")], [0, 1]],
      ["receipt", ["SOAP::SOAPString", XSD::QName.new(nil, "receipt")], [0, 1]],
      ["recognitionName", ["SOAP::SOAPString", XSD::QName.new(nil, "recognitionName")], [0, 1]],
      ["recognitionType", ["SOAP::SOAPInt", XSD::QName.new(nil, "recognitionType")], [0, 1]],
      ["recurringGiftScheduleRef", ["SOAP::SOAPString", XSD::QName.new(nil, "recurringGiftScheduleRef")], [0, 1]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "ref")], [0, 1]],
      ["softCredit", ["Etapper::Server::SoftCredit", XSD::QName.new(nil, "softCredit")], [0, 1]],
      ["tributeAccountName", ["SOAP::SOAPString", XSD::QName.new(nil, "tributeAccountName")], [0, 1]],
      ["tributeAccountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "tributeAccountRef")], [0, 1]],
      ["type", ["SOAP::SOAPInt", XSD::QName.new(nil, "type")], [0, 1]],
      ["valuable", ["Etapper::Server::Valuable", XSD::QName.new(nil, "valuable")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Etapper::Server::ConnectRequest,
    :schema_type => XSD::QName.new(NsService, "ConnectRequest"),
    :schema_element => [
      ["applicationContext", ["SOAP::SOAPString", XSD::QName.new(nil, "applicationContext")], [0, 1]],
      ["databaseId", ["SOAP::SOAPString", XSD::QName.new(nil, "databaseId")], [0, 1]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(nil, "password")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Etapper::Server::ExternalLoginRequest,
    :schema_type => XSD::QName.new(NsService, "ExternalLoginRequest"),
    :schema_element => [
      ["applicationContext", ["SOAP::SOAPString", XSD::QName.new(nil, "applicationContext")], [0, 1]],
      ["applicationName", ["SOAP::SOAPString", XSD::QName.new(nil, "applicationName")], [0, 1]],
      ["databaseId", ["SOAP::SOAPString", XSD::QName.new(nil, "databaseId")], [0, 1]],
      ["loginId", ["SOAP::SOAPString", XSD::QName.new(nil, "loginId")], [0, 1]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(nil, "password")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Etapper::Server::PagedCartElementsResponse,
    :schema_type => XSD::QName.new(NsService, "PagedCartElementsResponse"),
    :schema_element => [
      ["count", ["SOAP::SOAPInt", XSD::QName.new(nil, "count")], [0, 1]],
      ["data", ["Etapper::Server::Collection", XSD::QName.new(nil, "data")], [0, 1]],
      ["pages", ["SOAP::SOAPInt", XSD::QName.new(nil, "pages")], [0, 1]],
      ["start", ["SOAP::SOAPInt", XSD::QName.new(nil, "start")], [0, 1]],
      ["total", ["SOAP::SOAPInt", XSD::QName.new(nil, "total")], [0, 1]],
      ["usedCache", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "usedCache")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Etapper::Server::PagedDefinedFieldsResponse,
    :schema_type => XSD::QName.new(NsService, "PagedDefinedFieldsResponse"),
    :schema_element => [
      ["count", ["SOAP::SOAPInt", XSD::QName.new(nil, "count")], [0, 1]],
      ["data", ["Etapper::Server::Collection", XSD::QName.new(nil, "data")], [0, 1]],
      ["pages", ["SOAP::SOAPInt", XSD::QName.new(nil, "pages")], [0, 1]],
      ["start", ["SOAP::SOAPInt", XSD::QName.new(nil, "start")], [0, 1]],
      ["total", ["SOAP::SOAPInt", XSD::QName.new(nil, "total")], [0, 1]],
      ["usedCache", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "usedCache")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Etapper::Server::PagedJournalEntriesResponse,
    :schema_type => XSD::QName.new(NsService, "PagedJournalEntriesResponse"),
    :schema_element => [
      ["count", ["SOAP::SOAPInt", XSD::QName.new(nil, "count")], [0, 1]],
      ["data", ["Etapper::Server::Collection", XSD::QName.new(nil, "data")], [0, 1]],
      ["pages", ["SOAP::SOAPInt", XSD::QName.new(nil, "pages")], [0, 1]],
      ["start", ["SOAP::SOAPInt", XSD::QName.new(nil, "start")], [0, 1]],
      ["total", ["SOAP::SOAPInt", XSD::QName.new(nil, "total")], [0, 1]],
      ["usedCache", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "usedCache")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Etapper::Server::PagedQueryResultsResponse,
    :schema_type => XSD::QName.new(NsService, "PagedQueryResultsResponse"),
    :schema_element => [
      ["count", ["SOAP::SOAPInt", XSD::QName.new(nil, "count")], [0, 1]],
      ["data", ["Etapper::Server::Collection", XSD::QName.new(nil, "data")], [0, 1]],
      ["pages", ["SOAP::SOAPInt", XSD::QName.new(nil, "pages")], [0, 1]],
      ["start", ["SOAP::SOAPInt", XSD::QName.new(nil, "start")], [0, 1]],
      ["total", ["SOAP::SOAPInt", XSD::QName.new(nil, "total")], [0, 1]],
      ["usedCache", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "usedCache")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Etapper::Server::CalendarItem,
    :schema_type => XSD::QName.new(NsService, "CalendarItem"),
    :schema_element => [
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(nil, "accountName")], [0, 1]],
      ["accountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "accountRef")], [0, 1]],
      ["attachments", ["Etapper::Server::ArrayOfAttachment", XSD::QName.new(nil, "attachments")], [0, 1]],
      ["definedValues", ["Etapper::Server::ArrayOfDefinedValue", XSD::QName.new(nil, "definedValues")], [0, 1]],
      ["endTime", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "endTime")], [0, 1]],
      ["invitations", ["Etapper::Server::ArrayOfInvitation", XSD::QName.new(nil, "invitations")], [0, 1]],
      ["note", ["SOAP::SOAPString", XSD::QName.new(nil, "note")], [0, 1]],
      ["priority", ["SOAP::SOAPInt", XSD::QName.new(nil, "priority")], [0, 1]],
      ["private", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "private")], [0, 1]],
      ["recurringSchedule", ["Etapper::Server::RecurringSchedule", XSD::QName.new(nil, "recurringSchedule")], [0, 1]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "ref")], [0, 1]],
      ["remind", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "remind")], [0, 1]],
      ["startTime", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "startTime")], [0, 1]],
      ["status", ["SOAP::SOAPInt", XSD::QName.new(nil, "status")], [0, 1]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")], [0, 1]],
      ["type", ["SOAP::SOAPInt", XSD::QName.new(nil, "type")], [0, 1]]
    ]
  )

  EncodedRegistry.set(
    Etapper::Server::ArrayOfInvitation,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsService, "Invitation") }
  )

  EncodedRegistry.register(
    :class => Etapper::Server::Invitation,
    :schema_type => XSD::QName.new(NsService, "Invitation"),
    :schema_element => [
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(nil, "accountName")], [0, 1]],
      ["accountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "accountRef")], [0, 1]],
      ["calendarItem", ["Etapper::Server::CalendarItem", XSD::QName.new(nil, "calendarItem")], [0, 1]],
      ["date", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "date")], [0, 1]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "ref")], [0, 1]],
      ["remind", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "remind")], [0, 1]],
      ["status", ["SOAP::SOAPInt", XSD::QName.new(nil, "status")], [0, 1]],
      ["type", ["SOAP::SOAPInt", XSD::QName.new(nil, "type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Etapper::Server::RecurringSchedule,
    :schema_type => XSD::QName.new(NsService, "RecurringSchedule"),
    :schema_element => [
      ["frequency", ["SOAP::SOAPInt", XSD::QName.new(nil, "frequency")], [0, 1]],
      ["measure", ["SOAP::SOAPInt", XSD::QName.new(nil, "measure")], [0, 1]],
      ["startDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "startDate")], [0, 1]],
      ["stopDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "stopDate")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Etapper::Server::CartCategory,
    :schema_type => XSD::QName.new(NsService, "CartCategory"),
    :schema_element => [
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")], [0, 1]],
      ["disabled", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "disabled")], [0, 1]],
      ["image", ["Etapper::Server::CartImage", XSD::QName.new(nil, "image")], [0, 1]],
      ["immediateCategories", ["SOAP::SOAPInt", XSD::QName.new(nil, "immediateCategories")], [0, 1]],
      ["immediateItems", ["SOAP::SOAPInt", XSD::QName.new(nil, "immediateItems")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]],
      ["nestedCategories", ["SOAP::SOAPInt", XSD::QName.new(nil, "nestedCategories")], [0, 1]],
      ["nestedItems", ["SOAP::SOAPInt", XSD::QName.new(nil, "nestedItems")], [0, 1]],
      ["parents", ["Etapper::Server::ArrayOfCartParent", XSD::QName.new(nil, "parents")], [0, 1]],
      ["publishEndDate", ["SOAP::SOAPString", XSD::QName.new(nil, "publishEndDate")], [0, 1]],
      ["publishStartDate", ["SOAP::SOAPString", XSD::QName.new(nil, "publishStartDate")], [0, 1]],
      ["publishableNow", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "publishableNow")], [0, 1]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "ref")], [0, 1]],
      ["type", ["SOAP::SOAPInt", XSD::QName.new(nil, "type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Etapper::Server::CartImage,
    :schema_type => XSD::QName.new(NsService, "CartImage"),
    :schema_element => [
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")], [0, 1]],
      ["url", ["SOAP::SOAPString", XSD::QName.new(nil, "url")], [0, 1]]
    ]
  )

  EncodedRegistry.set(
    Etapper::Server::ArrayOfCartParent,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsService, "CartParent") }
  )

  EncodedRegistry.register(
    :class => Etapper::Server::CartParent,
    :schema_type => XSD::QName.new(NsService, "CartParent"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "ref")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Etapper::Server::PagedCartElementsRequest,
    :schema_type => XSD::QName.new(NsService, "PagedCartElementsRequest"),
    :schema_element => [
      ["clearCache", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "clearCache")], [0, 1]],
      ["count", ["SOAP::SOAPInt", XSD::QName.new(nil, "count")], [0, 1]],
      ["start", ["SOAP::SOAPInt", XSD::QName.new(nil, "start")], [0, 1]],
      ["cartRef", ["SOAP::SOAPString", XSD::QName.new(nil, "cartRef")], [0, 1]],
      ["categoryRef", ["SOAP::SOAPString", XSD::QName.new(nil, "categoryRef")], [0, 1]],
      ["elementTypeMask", ["SOAP::SOAPInt", XSD::QName.new(nil, "elementTypeMask")], [0, 1]],
      ["includeDisabledItems", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "includeDisabledItems")], [0, 1]],
      ["includeNoItemCategories", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "includeNoItemCategories")], [0, 1]],
      ["includeNonPublishableCategories", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "includeNonPublishableCategories")], [0, 1]],
      ["includeNonPublishableItems", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "includeNonPublishableItems")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Etapper::Server::CartItem,
    :schema_type => XSD::QName.new(NsService, "CartItem"),
    :schema_element => [
      ["deductibleAmount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "deductibleAmount")], [0, 1]],
      ["disabled", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "disabled")], [0, 1]],
      ["longDescription", ["SOAP::SOAPString", XSD::QName.new(nil, "longDescription")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]],
      ["nonTaxableAmount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "nonTaxableAmount")], [0, 1]],
      ["parents", ["Etapper::Server::ArrayOfCartParent", XSD::QName.new(nil, "parents")], [0, 1]],
      ["publishEndDate", ["SOAP::SOAPString", XSD::QName.new(nil, "publishEndDate")], [0, 1]],
      ["publishStartDate", ["SOAP::SOAPString", XSD::QName.new(nil, "publishStartDate")], [0, 1]],
      ["publishableNow", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "publishableNow")], [0, 1]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "ref")], [0, 1]],
      ["regularImages", ["Etapper::Server::ArrayOfCartImage", XSD::QName.new(nil, "regularImages")], [0, 1]],
      ["regularPrice", ["SOAP::SOAPDouble", XSD::QName.new(nil, "regularPrice")], [0, 1]],
      ["shippingPrice", ["SOAP::SOAPDouble", XSD::QName.new(nil, "shippingPrice")], [0, 1]],
      ["shortDescription", ["SOAP::SOAPString", XSD::QName.new(nil, "shortDescription")], [0, 1]],
      ["thumbImage", ["Etapper::Server::CartImage", XSD::QName.new(nil, "thumbImage")], [0, 1]],
      ["type", ["SOAP::SOAPInt", XSD::QName.new(nil, "type")], [0, 1]]
    ]
  )

  EncodedRegistry.set(
    Etapper::Server::ArrayOfCartImage,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsService, "CartImage") }
  )

  EncodedRegistry.register(
    :class => Etapper::Server::CartPreferences,
    :schema_type => XSD::QName.new(NsService, "CartPreferences"),
    :schema_element => [
      ["expressShippingPrice", ["SOAP::SOAPDouble", XSD::QName.new(nil, "expressShippingPrice")], [0, 1]],
      ["internationalShippingPrice", ["SOAP::SOAPDouble", XSD::QName.new(nil, "internationalShippingPrice")], [0, 1]],
      ["regularShippingPrice", ["SOAP::SOAPDouble", XSD::QName.new(nil, "regularShippingPrice")], [0, 1]],
      ["salesTaxKey", ["SOAP::SOAPInt", XSD::QName.new(nil, "salesTaxKey")], [0, 1]],
      ["siteName", ["SOAP::SOAPString", XSD::QName.new(nil, "siteName")], [0, 1]],
      ["siteTitle", ["SOAP::SOAPString", XSD::QName.new(nil, "siteTitle")], [0, 1]],
      ["stateTaxRates", ["Etapper::Server::ArrayOfStateTaxRate", XSD::QName.new(nil, "stateTaxRates")], [0, 1]],
      ["successMessage", ["SOAP::SOAPString", XSD::QName.new(nil, "successMessage")], [0, 1]],
      ["templateSetFolder", ["SOAP::SOAPString", XSD::QName.new(nil, "templateSetFolder")], [0, 1]],
      ["welcomeMessage", ["SOAP::SOAPString", XSD::QName.new(nil, "welcomeMessage")], [0, 1]]
    ]
  )

  EncodedRegistry.set(
    Etapper::Server::ArrayOfStateTaxRate,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsService, "StateTaxRate") }
  )

  EncodedRegistry.register(
    :class => Etapper::Server::StateTaxRate,
    :schema_type => XSD::QName.new(NsService, "StateTaxRate"),
    :schema_element => [
      ["rate", ["SOAP::SOAPDouble", XSD::QName.new(nil, "rate")], [0, 1]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(nil, "state")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Etapper::Server::Declaration,
    :schema_type => XSD::QName.new(NsService, "Declaration"),
    :schema_element => [
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(nil, "accountName")], [0, 1]],
      ["accountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "accountRef")], [0, 1]],
      ["address", ["SOAP::SOAPString", XSD::QName.new(nil, "address")], [0, 1]],
      ["attachments", ["Etapper::Server::ArrayOfAttachment", XSD::QName.new(nil, "attachments")], [0, 1]],
      ["city", ["SOAP::SOAPString", XSD::QName.new(nil, "city")], [0, 1]],
      ["confirmationDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "confirmationDate")], [0, 1]],
      ["country", ["SOAP::SOAPString", XSD::QName.new(nil, "country")], [0, 1]],
      ["date", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "date")], [0, 1]],
      ["endDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "endDate")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]],
      ["note", ["SOAP::SOAPString", XSD::QName.new(nil, "note")], [0, 1]],
      ["postalCode", ["SOAP::SOAPString", XSD::QName.new(nil, "postalCode")], [0, 1]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "ref")], [0, 1]],
      ["startDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "startDate")], [0, 1]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(nil, "state")], [0, 1]],
      ["type", ["SOAP::SOAPInt", XSD::QName.new(nil, "type")], [0, 1]],
      ["verbal", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "verbal")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Etapper::Server::DefinedField,
    :schema_type => XSD::QName.new(NsService, "DefinedField"),
    :schema_element => [
      ["applicationTypes", ["Etapper::Server::ArrayOfint", XSD::QName.new(nil, "applicationTypes")], [0, 1]],
      ["category", ["SOAP::SOAPString", XSD::QName.new(nil, "category")], [0, 1]],
      ["dataType", ["SOAP::SOAPInt", XSD::QName.new(nil, "dataType")], [0, 1]],
      ["desc", ["SOAP::SOAPString", XSD::QName.new(nil, "desc")], [0, 1]],
      ["disabled", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "disabled")], [0, 1]],
      ["displayType", ["SOAP::SOAPInt", XSD::QName.new(nil, "displayType")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "ref")], [0, 1]],
      ["required", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "required")], [0, 1]],
      ["securityRights", ["Etapper::Server::ArrayOfDefinedFieldValue", XSD::QName.new(nil, "securityRights")], [0, 1]],
      ["system", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "system")], [0, 1]],
      ["values", ["Etapper::Server::ArrayOfDefinedFieldValue", XSD::QName.new(nil, "values")], [0, 1]]
    ]
  )

  EncodedRegistry.set(
    Etapper::Server::ArrayOfint,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "int") }
  )

  EncodedRegistry.set(
    Etapper::Server::ArrayOfDefinedFieldValue,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsService, "DefinedFieldValue") }
  )

  EncodedRegistry.register(
    :class => Etapper::Server::DefinedFieldValue,
    :schema_type => XSD::QName.new(NsService, "DefinedFieldValue"),
    :schema_element => [
      ["desc", ["SOAP::SOAPString", XSD::QName.new(nil, "desc")], [0, 1]],
      ["disabled", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "disabled")], [0, 1]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "ref")], [0, 1]],
      ["value", ["SOAP::SOAPString", XSD::QName.new(nil, "value")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Etapper::Server::PagedDefinedFieldsRequest,
    :schema_type => XSD::QName.new(NsService, "PagedDefinedFieldsRequest"),
    :schema_element => [
      ["clearCache", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "clearCache")], [0, 1]],
      ["count", ["SOAP::SOAPInt", XSD::QName.new(nil, "count")], [0, 1]],
      ["start", ["SOAP::SOAPInt", XSD::QName.new(nil, "start")], [0, 1]],
      ["applicationTypes", ["Etapper::Server::ArrayOfint", XSD::QName.new(nil, "applicationTypes")], [0, 1]],
      ["categories", ["Etapper::Server::ArrayOfstring", XSD::QName.new(nil, "categories")], [0, 1]],
      ["includeDisabledFields", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "includeDisabledFields")], [0, 1]],
      ["includeDisabledValues", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "includeDisabledValues")], [0, 1]],
      ["names", ["Etapper::Server::ArrayOfstring", XSD::QName.new(nil, "names")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Etapper::Server::DonorLoginPreferences,
    :schema_type => XSD::QName.new(NsService, "DonorLoginPreferences"),
    :schema_element => [
      ["welcomePageHtml", ["SOAP::SOAPString", XSD::QName.new(nil, "welcomePageHtml")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Etapper::Server::DuplicateAccountSearch,
    :schema_type => XSD::QName.new(NsService, "DuplicateAccountSearch"),
    :schema_element => [
      ["accountRoleTypes", ["SOAP::SOAPInt", XSD::QName.new(nil, "accountRoleTypes")], [0, 1]],
      ["address", ["SOAP::SOAPString", XSD::QName.new(nil, "address")], [0, 1]],
      ["allowEmailOnlyMatch", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "allowEmailOnlyMatch")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(nil, "email")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]],
      ["phoneNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "phoneNumber")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Etapper::Server::PagedDynamicQueryResultsRequest,
    :schema_type => XSD::QName.new(NsService, "PagedDynamicQueryResultsRequest"),
    :schema_element => [
      ["clearCache", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "clearCache")], [0, 1]],
      ["count", ["SOAP::SOAPInt", XSD::QName.new(nil, "count")], [0, 1]],
      ["start", ["SOAP::SOAPInt", XSD::QName.new(nil, "start")], [0, 1]],
      ["accountType", ["SOAP::SOAPInt", XSD::QName.new(nil, "accountType")], [0, 1]],
      ["applicationGroup", ["SOAP::SOAPString", XSD::QName.new(nil, "applicationGroup")], [0, 1]],
      ["baseQuery", ["SOAP::SOAPString", XSD::QName.new(nil, "baseQuery")], [0, 1]],
      ["involvePrivacySettings", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "involvePrivacySettings")], [0, 1]],
      ["matchAny", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "matchAny")], [0, 1]],
      ["personaOption", ["SOAP::SOAPString", XSD::QName.new(nil, "personaOption")], [0, 1]],
      ["returnType", ["SOAP::SOAPInt", XSD::QName.new(nil, "returnType")], [0, 1]],
      ["searchCriteria", ["Etapper::Server::ArrayOfSearchCriteria", XSD::QName.new(nil, "searchCriteria")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Etapper::Server::EntityRole,
    :schema_type => XSD::QName.new(NsService, "EntityRole"),
    :schema_element => [
      ["accountRoleType", ["SOAP::SOAPInt", XSD::QName.new(nil, "accountRoleType")], [0, 1]],
      ["definedValues", ["Etapper::Server::ArrayOfDefinedValue", XSD::QName.new(nil, "definedValues")], [0, 1]],
      ["donorRecognitionName", ["SOAP::SOAPString", XSD::QName.new(nil, "donorRecognitionName")], [0, 1]],
      ["donorRecognitionType", ["SOAP::SOAPInt", XSD::QName.new(nil, "donorRecognitionType")], [0, 1]],
      ["donorRoleRef", ["SOAP::SOAPString", XSD::QName.new(nil, "donorRoleRef")], [0, 1]],
      ["emailStatus", ["SOAP::SOAPInt", XSD::QName.new(nil, "emailStatus")], [0, 1]],
      ["householdStatus", ["SOAP::SOAPInt", XSD::QName.new(nil, "householdStatus")], [0, 1]],
      ["id", ["SOAP::SOAPInt", XSD::QName.new(nil, "id")], [0, 1]],
      ["loginId", ["SOAP::SOAPString", XSD::QName.new(nil, "loginId")], [0, 1]],
      ["loyaltyRating", ["SOAP::SOAPInt", XSD::QName.new(nil, "loyaltyRating")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]],
      ["personas", ["Etapper::Server::ArrayOfPersona", XSD::QName.new(nil, "personas")], [0, 1]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "ref")], [0, 1]],
      ["sortName", ["SOAP::SOAPString", XSD::QName.new(nil, "sortName")], [0, 1]],
      ["tributeRoleRef", ["SOAP::SOAPString", XSD::QName.new(nil, "tributeRoleRef")], [0, 1]],
      ["userRoleRef", ["SOAP::SOAPString", XSD::QName.new(nil, "userRoleRef")], [0, 1]]
    ]
  )

  EncodedRegistry.set(
    Etapper::Server::ArrayOfPersona,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsService, "Persona") }
  )

  EncodedRegistry.register(
    :class => Etapper::Server::Persona,
    :schema_type => XSD::QName.new(NsService, "Persona"),
    :schema_element => [
      ["address", ["SOAP::SOAPString", XSD::QName.new(nil, "address")], [0, 1]],
      ["city", ["SOAP::SOAPString", XSD::QName.new(nil, "city")], [0, 1]],
      ["country", ["SOAP::SOAPString", XSD::QName.new(nil, "country")], [0, 1]],
      ["county", ["SOAP::SOAPString", XSD::QName.new(nil, "county")], [0, 1]],
      ["definedValues", ["Etapper::Server::ArrayOfDefinedValue", XSD::QName.new(nil, "definedValues")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(nil, "email")], [0, 1]],
      ["longSalutation", ["SOAP::SOAPString", XSD::QName.new(nil, "longSalutation")], [0, 1]],
      ["note", ["SOAP::SOAPString", XSD::QName.new(nil, "note")], [0, 1]],
      ["phones", ["Etapper::Server::ArrayOfPhone", XSD::QName.new(nil, "phones")], [0, 1]],
      ["postalCode", ["SOAP::SOAPString", XSD::QName.new(nil, "postalCode")], [0, 1]],
      ["primary", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "primary")], [0, 1]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "ref")], [0, 1]],
      ["shortSalutation", ["SOAP::SOAPString", XSD::QName.new(nil, "shortSalutation")], [0, 1]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(nil, "state")], [0, 1]],
      ["stickyNoteType", ["SOAP::SOAPString", XSD::QName.new(nil, "stickyNoteType")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")], [0, 1]],
      ["webAddress", ["SOAP::SOAPString", XSD::QName.new(nil, "webAddress")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Etapper::Server::PagedExistingQueryResultsRequest,
    :schema_type => XSD::QName.new(NsService, "PagedExistingQueryResultsRequest"),
    :schema_element => [
      ["clearCache", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "clearCache")], [0, 1]],
      ["count", ["SOAP::SOAPInt", XSD::QName.new(nil, "count")], [0, 1]],
      ["start", ["SOAP::SOAPInt", XSD::QName.new(nil, "start")], [0, 1]],
      ["accountType", ["SOAP::SOAPInt", XSD::QName.new(nil, "accountType")], [0, 1]],
      ["query", ["SOAP::SOAPString", XSD::QName.new(nil, "query")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Etapper::Server::PagedJournalEntriesRequest,
    :schema_type => XSD::QName.new(NsService, "PagedJournalEntriesRequest"),
    :schema_element => [
      ["clearCache", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "clearCache")], [0, 1]],
      ["count", ["SOAP::SOAPInt", XSD::QName.new(nil, "count")], [0, 1]],
      ["start", ["SOAP::SOAPInt", XSD::QName.new(nil, "start")], [0, 1]],
      ["accountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "accountRef")], [0, 1]],
      ["baseQuery", ["SOAP::SOAPString", XSD::QName.new(nil, "baseQuery")], [0, 1]],
      ["endDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "endDate")], [0, 1]],
      ["startDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "startDate")], [0, 1]],
      ["types", ["Etapper::Server::ArrayOfint", XSD::QName.new(nil, "types")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Etapper::Server::JournalSummary,
    :schema_type => XSD::QName.new(NsService, "JournalSummary"),
    :schema_element => [
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(nil, "accountName")], [0, 1]],
      ["accountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "accountRef")], [0, 1]],
      ["lifetimeGivingTotal", ["SOAP::SOAPDouble", XSD::QName.new(nil, "lifetimeGivingTotal")], [0, 1]],
      ["lifetimePledgedTotal", ["SOAP::SOAPDouble", XSD::QName.new(nil, "lifetimePledgedTotal")], [0, 1]],
      ["lifetimeTransactionCount", ["SOAP::SOAPInt", XSD::QName.new(nil, "lifetimeTransactionCount")], [0, 1]],
      ["oneYearAgoGivingAmount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "oneYearAgoGivingAmount")], [0, 1]],
      ["oneYearAgoPledgedAmount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "oneYearAgoPledgedAmount")], [0, 1]],
      ["oneYearAgoTransactionCount", ["SOAP::SOAPInt", XSD::QName.new(nil, "oneYearAgoTransactionCount")], [0, 1]],
      ["yearToDateGivingTotal", ["SOAP::SOAPDouble", XSD::QName.new(nil, "yearToDateGivingTotal")], [0, 1]],
      ["yearToDatePledgedTotal", ["SOAP::SOAPDouble", XSD::QName.new(nil, "yearToDatePledgedTotal")], [0, 1]],
      ["yearToDateTransactionCount", ["SOAP::SOAPInt", XSD::QName.new(nil, "yearToDateTransactionCount")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Etapper::Server::PrivacyPreferences,
    :schema_type => XSD::QName.new(NsService, "PrivacyPreferences"),
    :schema_element => [
      ["accountPrivacyPreference", ["Etapper::Server::PrivacyPreference", XSD::QName.new(nil, "accountPrivacyPreference")], [0, 1]],
      ["accountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "accountRef")], [0, 1]],
      ["personaPrivacyPreferences", ["Etapper::Server::ArrayOfPrivacyPreference", XSD::QName.new(nil, "personaPrivacyPreferences")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Etapper::Server::PrivacyPreference,
    :schema_type => XSD::QName.new(NsService, "PrivacyPreference"),
    :schema_element => [
      ["accountDefined", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "accountDefined")], [0, 1]],
      ["applicationGroup", ["SOAP::SOAPString", XSD::QName.new(nil, "applicationGroup")], [0, 1]],
      ["hiddenFields", ["Etapper::Server::ArrayOfstring", XSD::QName.new(nil, "hiddenFields")], [0, 1]],
      ["personaType", ["SOAP::SOAPString", XSD::QName.new(nil, "personaType")], [0, 1]],
      ["status", ["SOAP::SOAPInt", XSD::QName.new(nil, "status")], [0, 1]]
    ]
  )

  EncodedRegistry.set(
    Etapper::Server::ArrayOfPrivacyPreference,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsService, "PrivacyPreference") }
  )

  EncodedRegistry.register(
    :class => Etapper::Server::OrderItem,
    :schema_type => XSD::QName.new(NsService, "OrderItem"),
    :schema_element => [
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(nil, "accountName")], [0, 1]],
      ["accountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "accountRef")], [0, 1]],
      ["amount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "amount")], [0, 1]],
      ["approach", ["SOAP::SOAPString", XSD::QName.new(nil, "approach")], [0, 1]],
      ["attachments", ["Etapper::Server::ArrayOfAttachment", XSD::QName.new(nil, "attachments")], [0, 1]],
      ["campaign", ["SOAP::SOAPString", XSD::QName.new(nil, "campaign")], [0, 1]],
      ["date", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "date")], [0, 1]],
      ["definedValues", ["Etapper::Server::ArrayOfDefinedValue", XSD::QName.new(nil, "definedValues")], [0, 1]],
      ["final", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "final")], [0, 1]],
      ["fund", ["SOAP::SOAPString", XSD::QName.new(nil, "fund")], [0, 1]],
      ["itemName", ["SOAP::SOAPString", XSD::QName.new(nil, "itemName")], [0, 1]],
      ["itemQuantity", ["SOAP::SOAPInt", XSD::QName.new(nil, "itemQuantity")], [0, 1]],
      ["itemRef", ["SOAP::SOAPString", XSD::QName.new(nil, "itemRef")], [0, 1]],
      ["letter", ["SOAP::SOAPString", XSD::QName.new(nil, "letter")], [0, 1]],
      ["note", ["SOAP::SOAPString", XSD::QName.new(nil, "note")], [0, 1]],
      ["offsettingRef", ["SOAP::SOAPString", XSD::QName.new(nil, "offsettingRef")], [0, 1]],
      ["orderInfo", ["Etapper::Server::OrderInfo", XSD::QName.new(nil, "orderInfo")], [0, 1]],
      ["receipt", ["SOAP::SOAPString", XSD::QName.new(nil, "receipt")], [0, 1]],
      ["recognitionName", ["SOAP::SOAPString", XSD::QName.new(nil, "recognitionName")], [0, 1]],
      ["recognitionType", ["SOAP::SOAPInt", XSD::QName.new(nil, "recognitionType")], [0, 1]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "ref")], [0, 1]],
      ["segmentedTransactionRef", ["SOAP::SOAPString", XSD::QName.new(nil, "segmentedTransactionRef")], [0, 1]],
      ["softCredit", ["Etapper::Server::SoftCredit", XSD::QName.new(nil, "softCredit")], [0, 1]],
      ["type", ["SOAP::SOAPInt", XSD::QName.new(nil, "type")], [0, 1]],
      ["valuable", ["Etapper::Server::Valuable", XSD::QName.new(nil, "valuable")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Etapper::Server::OrderInfo,
    :schema_type => XSD::QName.new(NsService, "OrderInfo"),
    :schema_element => [
      ["billingAddress", ["SOAP::SOAPString", XSD::QName.new(nil, "billingAddress")], [0, 1]],
      ["billingCity", ["SOAP::SOAPString", XSD::QName.new(nil, "billingCity")], [0, 1]],
      ["billingCountry", ["SOAP::SOAPString", XSD::QName.new(nil, "billingCountry")], [0, 1]],
      ["billingEmail", ["SOAP::SOAPString", XSD::QName.new(nil, "billingEmail")], [0, 1]],
      ["billingName", ["SOAP::SOAPString", XSD::QName.new(nil, "billingName")], [0, 1]],
      ["billingPhone", ["SOAP::SOAPString", XSD::QName.new(nil, "billingPhone")], [0, 1]],
      ["billingPostalCode", ["SOAP::SOAPString", XSD::QName.new(nil, "billingPostalCode")], [0, 1]],
      ["billingState", ["SOAP::SOAPString", XSD::QName.new(nil, "billingState")], [0, 1]],
      ["shippingAddress", ["SOAP::SOAPString", XSD::QName.new(nil, "shippingAddress")], [0, 1]],
      ["shippingCity", ["SOAP::SOAPString", XSD::QName.new(nil, "shippingCity")], [0, 1]],
      ["shippingCountry", ["SOAP::SOAPString", XSD::QName.new(nil, "shippingCountry")], [0, 1]],
      ["shippingName", ["SOAP::SOAPString", XSD::QName.new(nil, "shippingName")], [0, 1]],
      ["shippingPostalCode", ["SOAP::SOAPString", XSD::QName.new(nil, "shippingPostalCode")], [0, 1]],
      ["shippingState", ["SOAP::SOAPString", XSD::QName.new(nil, "shippingState")], [0, 1]],
      ["shippingType", ["SOAP::SOAPInt", XSD::QName.new(nil, "shippingType")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Etapper::Server::OrderShipping,
    :schema_type => XSD::QName.new(NsService, "OrderShipping"),
    :schema_element => [
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(nil, "accountName")], [0, 1]],
      ["accountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "accountRef")], [0, 1]],
      ["amount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "amount")], [0, 1]],
      ["approach", ["SOAP::SOAPString", XSD::QName.new(nil, "approach")], [0, 1]],
      ["attachments", ["Etapper::Server::ArrayOfAttachment", XSD::QName.new(nil, "attachments")], [0, 1]],
      ["campaign", ["SOAP::SOAPString", XSD::QName.new(nil, "campaign")], [0, 1]],
      ["date", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "date")], [0, 1]],
      ["definedValues", ["Etapper::Server::ArrayOfDefinedValue", XSD::QName.new(nil, "definedValues")], [0, 1]],
      ["final", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "final")], [0, 1]],
      ["fund", ["SOAP::SOAPString", XSD::QName.new(nil, "fund")], [0, 1]],
      ["letter", ["SOAP::SOAPString", XSD::QName.new(nil, "letter")], [0, 1]],
      ["note", ["SOAP::SOAPString", XSD::QName.new(nil, "note")], [0, 1]],
      ["offsettingRef", ["SOAP::SOAPString", XSD::QName.new(nil, "offsettingRef")], [0, 1]],
      ["receipt", ["SOAP::SOAPString", XSD::QName.new(nil, "receipt")], [0, 1]],
      ["recognitionName", ["SOAP::SOAPString", XSD::QName.new(nil, "recognitionName")], [0, 1]],
      ["recognitionType", ["SOAP::SOAPInt", XSD::QName.new(nil, "recognitionType")], [0, 1]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "ref")], [0, 1]],
      ["segmentedTransactionRef", ["SOAP::SOAPString", XSD::QName.new(nil, "segmentedTransactionRef")], [0, 1]],
      ["softCredit", ["Etapper::Server::SoftCredit", XSD::QName.new(nil, "softCredit")], [0, 1]],
      ["type", ["SOAP::SOAPInt", XSD::QName.new(nil, "type")], [0, 1]],
      ["valuable", ["Etapper::Server::Valuable", XSD::QName.new(nil, "valuable")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Etapper::Server::OrderTax,
    :schema_type => XSD::QName.new(NsService, "OrderTax"),
    :schema_element => [
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(nil, "accountName")], [0, 1]],
      ["accountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "accountRef")], [0, 1]],
      ["amount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "amount")], [0, 1]],
      ["approach", ["SOAP::SOAPString", XSD::QName.new(nil, "approach")], [0, 1]],
      ["attachments", ["Etapper::Server::ArrayOfAttachment", XSD::QName.new(nil, "attachments")], [0, 1]],
      ["campaign", ["SOAP::SOAPString", XSD::QName.new(nil, "campaign")], [0, 1]],
      ["date", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "date")], [0, 1]],
      ["definedValues", ["Etapper::Server::ArrayOfDefinedValue", XSD::QName.new(nil, "definedValues")], [0, 1]],
      ["final", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "final")], [0, 1]],
      ["fund", ["SOAP::SOAPString", XSD::QName.new(nil, "fund")], [0, 1]],
      ["letter", ["SOAP::SOAPString", XSD::QName.new(nil, "letter")], [0, 1]],
      ["note", ["SOAP::SOAPString", XSD::QName.new(nil, "note")], [0, 1]],
      ["offsettingRef", ["SOAP::SOAPString", XSD::QName.new(nil, "offsettingRef")], [0, 1]],
      ["receipt", ["SOAP::SOAPString", XSD::QName.new(nil, "receipt")], [0, 1]],
      ["recognitionName", ["SOAP::SOAPString", XSD::QName.new(nil, "recognitionName")], [0, 1]],
      ["recognitionType", ["SOAP::SOAPInt", XSD::QName.new(nil, "recognitionType")], [0, 1]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "ref")], [0, 1]],
      ["segmentedTransactionRef", ["SOAP::SOAPString", XSD::QName.new(nil, "segmentedTransactionRef")], [0, 1]],
      ["softCredit", ["Etapper::Server::SoftCredit", XSD::QName.new(nil, "softCredit")], [0, 1]],
      ["taxRate", ["SOAP::SOAPDouble", XSD::QName.new(nil, "taxRate")], [0, 1]],
      ["taxRegion", ["SOAP::SOAPString", XSD::QName.new(nil, "taxRegion")], [0, 1]],
      ["type", ["SOAP::SOAPInt", XSD::QName.new(nil, "type")], [0, 1]],
      ["valuable", ["Etapper::Server::Valuable", XSD::QName.new(nil, "valuable")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Etapper::Server::OrganizationPreferences,
    :schema_type => XSD::QName.new(NsService, "OrganizationPreferences"),
    :schema_element => [
      ["passwordMinimumLength", ["SOAP::SOAPInt", XSD::QName.new(nil, "passwordMinimumLength")], [0, 1]],
      ["passwordRequireComplexity", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "passwordRequireComplexity")], [0, 1]]
    ]
  )

  EncodedRegistry.set(
    Etapper::Server::ArrayOfPhoneAThonList,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsService, "PhoneAThonList") }
  )

  EncodedRegistry.register(
    :class => Etapper::Server::PhoneAThonList,
    :schema_type => XSD::QName.new(NsService, "PhoneAThonList"),
    :schema_element => [
      ["currentCount", ["SOAP::SOAPInt", XSD::QName.new(nil, "currentCount")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")], [0, 1]],
      ["enabled", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "enabled")], [0, 1]],
      ["initialCount", ["SOAP::SOAPInt", XSD::QName.new(nil, "initialCount")], [0, 1]],
      ["lastGenerated", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "lastGenerated")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "ref")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Etapper::Server::QueryResultStats,
    :schema_type => XSD::QName.new(NsService, "QueryResultStats"),
    :schema_element => [
      ["gifted", ["SOAP::SOAPDouble", XSD::QName.new(nil, "gifted")], [0, 1]],
      ["journalEntryCount", ["SOAP::SOAPInt", XSD::QName.new(nil, "journalEntryCount")], [0, 1]],
      ["pledged", ["SOAP::SOAPDouble", XSD::QName.new(nil, "pledged")], [0, 1]],
      ["raised", ["SOAP::SOAPDouble", XSD::QName.new(nil, "raised")], [0, 1]],
      ["received", ["SOAP::SOAPDouble", XSD::QName.new(nil, "received")], [0, 1]],
      ["transactionCount", ["SOAP::SOAPInt", XSD::QName.new(nil, "transactionCount")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Etapper::Server::RecurringGiftSchedule,
    :schema_type => XSD::QName.new(NsService, "RecurringGiftSchedule"),
    :schema_element => [
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(nil, "accountName")], [0, 1]],
      ["accountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "accountRef")], [0, 1]],
      ["amount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "amount")], [0, 1]],
      ["approach", ["SOAP::SOAPString", XSD::QName.new(nil, "approach")], [0, 1]],
      ["attachments", ["Etapper::Server::ArrayOfAttachment", XSD::QName.new(nil, "attachments")], [0, 1]],
      ["campaign", ["SOAP::SOAPString", XSD::QName.new(nil, "campaign")], [0, 1]],
      ["date", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "date")], [0, 1]],
      ["definedValues", ["Etapper::Server::ArrayOfDefinedValue", XSD::QName.new(nil, "definedValues")], [0, 1]],
      ["final", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "final")], [0, 1]],
      ["fund", ["SOAP::SOAPString", XSD::QName.new(nil, "fund")], [0, 1]],
      ["letter", ["SOAP::SOAPString", XSD::QName.new(nil, "letter")], [0, 1]],
      ["linkedGiftsAmount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "linkedGiftsAmount")], [0, 1]],
      ["nextGiftAmount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "nextGiftAmount")], [0, 1]],
      ["nextGiftDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "nextGiftDate")], [0, 1]],
      ["nonDeductibleAmount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "nonDeductibleAmount")], [0, 1]],
      ["note", ["SOAP::SOAPString", XSD::QName.new(nil, "note")], [0, 1]],
      ["originalAccountName", ["SOAP::SOAPString", XSD::QName.new(nil, "originalAccountName")], [0, 1]],
      ["originalAccountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "originalAccountRef")], [0, 1]],
      ["originalTransactionRef", ["SOAP::SOAPString", XSD::QName.new(nil, "originalTransactionRef")], [0, 1]],
      ["receipt", ["SOAP::SOAPString", XSD::QName.new(nil, "receipt")], [0, 1]],
      ["recognitionName", ["SOAP::SOAPString", XSD::QName.new(nil, "recognitionName")], [0, 1]],
      ["recognitionType", ["SOAP::SOAPInt", XSD::QName.new(nil, "recognitionType")], [0, 1]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "ref")], [0, 1]],
      ["schedule", ["Etapper::Server::StandardPaymentSchedule", XSD::QName.new(nil, "schedule")], [0, 1]],
      ["scheduledValuable", ["Etapper::Server::Valuable", XSD::QName.new(nil, "scheduledValuable")], [0, 1]],
      ["softCredit", ["Etapper::Server::SoftCredit", XSD::QName.new(nil, "softCredit")], [0, 1]],
      ["tributeAccountName", ["SOAP::SOAPString", XSD::QName.new(nil, "tributeAccountName")], [0, 1]],
      ["tributeAccountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "tributeAccountRef")], [0, 1]],
      ["type", ["SOAP::SOAPInt", XSD::QName.new(nil, "type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Etapper::Server::SegmentedDonation,
    :schema_type => XSD::QName.new(NsService, "SegmentedDonation"),
    :schema_element => [
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(nil, "accountName")], [0, 1]],
      ["accountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "accountRef")], [0, 1]],
      ["date", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "date")], [0, 1]],
      ["final", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "final")], [0, 1]],
      ["offsettingRef", ["SOAP::SOAPString", XSD::QName.new(nil, "offsettingRef")], [0, 1]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "ref")], [0, 1]],
      ["segments", ["Etapper::Server::ArrayOfanyType", XSD::QName.new(nil, "segments")], [0, 1]],
      ["totalAmount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "totalAmount")], [0, 1]],
      ["totalNonDeductibleAmount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "totalNonDeductibleAmount")], [0, 1]],
      ["type", ["SOAP::SOAPInt", XSD::QName.new(nil, "type")], [0, 1]]
    ]
  )

  EncodedRegistry.set(
    Etapper::Server::ArrayOfanyType,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "anyType") }
  )

  EncodedRegistry.register(
    :class => Etapper::Server::SegmentedOrder,
    :schema_type => XSD::QName.new(NsService, "SegmentedOrder"),
    :schema_element => [
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(nil, "accountName")], [0, 1]],
      ["accountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "accountRef")], [0, 1]],
      ["date", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "date")], [0, 1]],
      ["final", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "final")], [0, 1]],
      ["offsettingRef", ["SOAP::SOAPString", XSD::QName.new(nil, "offsettingRef")], [0, 1]],
      ["orderInfo", ["Etapper::Server::OrderInfo", XSD::QName.new(nil, "orderInfo")], [0, 1]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "ref")], [0, 1]],
      ["segments", ["Etapper::Server::ArrayOfanyType", XSD::QName.new(nil, "segments")], [0, 1]],
      ["totalAmount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "totalAmount")], [0, 1]],
      ["type", ["SOAP::SOAPInt", XSD::QName.new(nil, "type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Etapper::Server::SegmentedPledge,
    :schema_type => XSD::QName.new(NsService, "SegmentedPledge"),
    :schema_element => [
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(nil, "accountName")], [0, 1]],
      ["accountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "accountRef")], [0, 1]],
      ["consolidatedCustomSchedule", ["Etapper::Server::CustomPaymentSchedule", XSD::QName.new(nil, "consolidatedCustomSchedule")], [0, 1]],
      ["date", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "date")], [0, 1]],
      ["final", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "final")], [0, 1]],
      ["offsettingRef", ["SOAP::SOAPString", XSD::QName.new(nil, "offsettingRef")], [0, 1]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "ref")], [0, 1]],
      ["segments", ["Etapper::Server::ArrayOfanyType", XSD::QName.new(nil, "segments")], [0, 1]],
      ["totalAmount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "totalAmount")], [0, 1]],
      ["totalNonDeductibleAmount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "totalNonDeductibleAmount")], [0, 1]],
      ["type", ["SOAP::SOAPInt", XSD::QName.new(nil, "type")], [0, 1]],
      ["upgraded", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "upgraded")], [0, 1]]
    ]
  )

  EncodedRegistry.set(
    Etapper::Server::ArrayOfTransactionProcessor,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsService, "TransactionProcessor") }
  )

  EncodedRegistry.register(
    :class => Etapper::Server::TransactionProcessor,
    :schema_type => XSD::QName.new(NsService, "TransactionProcessor"),
    :schema_element => [
      ["default", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "default")], [0, 1]],
      ["disabled", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "disabled")], [0, 1]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "ref")], [0, 1]],
      ["refName", ["SOAP::SOAPString", XSD::QName.new(nil, "refName")], [0, 1]],
      ["type", ["SOAP::SOAPInt", XSD::QName.new(nil, "type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Etapper::Server::LinkedTransaction,
    :schema_type => XSD::QName.new(NsService, "LinkedTransaction"),
    :schema_element => [
      ["softCreditAccount", ["Etapper::Server::Account", XSD::QName.new(nil, "softCreditAccount")], [0, 1]],
      ["transaction", [nil, XSD::QName.new(nil, "transaction")], [0, 1]],
      ["tributeAccount", ["Etapper::Server::Account", XSD::QName.new(nil, "tributeAccount")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Etapper::Server::AccountChangeRequest,
    :schema_type => XSD::QName.new(NsService, "AccountChangeRequest"),
    :schema_element => [
      ["account", ["Etapper::Server::Account", XSD::QName.new(nil, "account")], [0, 1]],
      ["createChangeNote", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "createChangeNote")], [0, 1]],
      ["createFieldAndValues", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "createFieldAndValues")], [0, 1]],
      ["notificationEmail", ["SOAP::SOAPString", XSD::QName.new(nil, "notificationEmail")], [0, 1]],
      ["update", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "update")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Etapper::Server::CartOrderRequest,
    :schema_type => XSD::QName.new(NsService, "CartOrderRequest"),
    :schema_element => [
      ["account", ["Etapper::Server::Account", XSD::QName.new(nil, "account")], [0, 1]],
      ["createFieldAndValues", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "createFieldAndValues")], [0, 1]],
      ["journalEntries", ["Etapper::Server::ArrayOfanyType", XSD::QName.new(nil, "journalEntries")], [0, 1]],
      ["populateDataSource", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "populateDataSource")], [0, 1]],
      ["processor", ["SOAP::SOAPString", XSD::QName.new(nil, "processor")], [0, 1]],
      ["skipSoftErrors", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "skipSoftErrors")], [0, 1]],
      ["softErrorEmail", ["SOAP::SOAPString", XSD::QName.new(nil, "softErrorEmail")], [0, 1]],
      ["validateLicense", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "validateLicense")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Etapper::Server::CartOrderResponse,
    :schema_type => XSD::QName.new(NsService, "CartOrderResponse"),
    :schema_element => [
      ["accountNumber", ["SOAP::SOAPInt", XSD::QName.new(nil, "accountNumber")], [0, 1]],
      ["accountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "accountRef")], [0, 1]],
      ["createdNewAccount", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "createdNewAccount")], [0, 1]],
      ["journalEntryRefs", ["Etapper::Server::ArrayOfstring", XSD::QName.new(nil, "journalEntryRefs")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Etapper::Server::EcommerceRequest,
    :schema_type => XSD::QName.new(NsService, "EcommerceRequest"),
    :schema_element => [
      ["account", ["Etapper::Server::Account", XSD::QName.new(nil, "account")], [0, 1]],
      ["confirmationMessageFooter", ["SOAP::SOAPString", XSD::QName.new(nil, "confirmationMessageFooter")], [0, 1]],
      ["confirmationMessageHeader", ["SOAP::SOAPString", XSD::QName.new(nil, "confirmationMessageHeader")], [0, 1]],
      ["confirmationSender", ["SOAP::SOAPString", XSD::QName.new(nil, "confirmationSender")], [0, 1]],
      ["confirmationSignature", ["SOAP::SOAPString", XSD::QName.new(nil, "confirmationSignature")], [0, 1]],
      ["confirmationSubject", ["SOAP::SOAPString", XSD::QName.new(nil, "confirmationSubject")], [0, 1]],
      ["createFieldAndValues", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "createFieldAndValues")], [0, 1]],
      ["failureEmail", ["SOAP::SOAPString", XSD::QName.new(nil, "failureEmail")], [0, 1]],
      ["journalEntries", ["Etapper::Server::ArrayOfanyType", XSD::QName.new(nil, "journalEntries")], [0, 1]],
      ["notificationEmail", ["SOAP::SOAPString", XSD::QName.new(nil, "notificationEmail")], [0, 1]],
      ["notificationSubject", ["SOAP::SOAPString", XSD::QName.new(nil, "notificationSubject")], [0, 1]],
      ["populateDataSource", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "populateDataSource")], [0, 1]],
      ["processor", ["SOAP::SOAPString", XSD::QName.new(nil, "processor")], [0, 1]],
      ["skipSoftErrors", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "skipSoftErrors")], [0, 1]],
      ["softErrorEmail", ["SOAP::SOAPString", XSD::QName.new(nil, "softErrorEmail")], [0, 1]],
      ["validateLicense", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "validateLicense")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Etapper::Server::EcommerceResponse,
    :schema_type => XSD::QName.new(NsService, "EcommerceResponse"),
    :schema_element => [
      ["accountNumber", ["SOAP::SOAPInt", XSD::QName.new(nil, "accountNumber")], [0, 1]],
      ["accountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "accountRef")], [0, 1]],
      ["createdNewAccount", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "createdNewAccount")], [0, 1]],
      ["journalEntryRefs", ["Etapper::Server::ArrayOfstring", XSD::QName.new(nil, "journalEntryRefs")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Etapper::Server::ForgottenPasswordEmailHelpRequest,
    :schema_type => XSD::QName.new(NsService, "ForgottenPasswordEmailHelpRequest"),
    :schema_element => [
      ["baseQuery", ["SOAP::SOAPString", XSD::QName.new(nil, "baseQuery")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(nil, "email")], [0, 1]],
      ["expirationHours", ["SOAP::SOAPInt", XSD::QName.new(nil, "expirationHours")], [0, 1]],
      ["fromEmail", ["SOAP::SOAPString", XSD::QName.new(nil, "fromEmail")], [0, 1]],
      ["loginId", ["SOAP::SOAPString", XSD::QName.new(nil, "loginId")], [0, 1]],
      ["personaOption", ["SOAP::SOAPString", XSD::QName.new(nil, "personaOption")], [0, 1]],
      ["url", ["SOAP::SOAPString", XSD::QName.new(nil, "url")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Etapper::Server::ForgottenPasswordResetHelpRequest,
    :schema_type => XSD::QName.new(NsService, "ForgottenPasswordResetHelpRequest"),
    :schema_element => [
      ["code", ["SOAP::SOAPString", XSD::QName.new(nil, "code")], [0, 1]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "ref")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Etapper::Server::ProcessTransactionRequest,
    :schema_type => XSD::QName.new(NsService, "ProcessTransactionRequest"),
    :schema_element => [
      ["confirmationMessageFooter", ["SOAP::SOAPString", XSD::QName.new(nil, "confirmationMessageFooter")], [0, 1]],
      ["confirmationMessageHeader", ["SOAP::SOAPString", XSD::QName.new(nil, "confirmationMessageHeader")], [0, 1]],
      ["confirmationSender", ["SOAP::SOAPString", XSD::QName.new(nil, "confirmationSender")], [0, 1]],
      ["confirmationSignature", ["SOAP::SOAPString", XSD::QName.new(nil, "confirmationSignature")], [0, 1]],
      ["confirmationSubject", ["SOAP::SOAPString", XSD::QName.new(nil, "confirmationSubject")], [0, 1]],
      ["createFieldAndValues", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "createFieldAndValues")], [0, 1]],
      ["donorEmail", ["SOAP::SOAPString", XSD::QName.new(nil, "donorEmail")], [0, 1]],
      ["failureEmail", ["SOAP::SOAPString", XSD::QName.new(nil, "failureEmail")], [0, 1]],
      ["notificationEmail", ["SOAP::SOAPString", XSD::QName.new(nil, "notificationEmail")], [0, 1]],
      ["processor", ["SOAP::SOAPString", XSD::QName.new(nil, "processor")], [0, 1]],
      ["transaction", [nil, XSD::QName.new(nil, "transaction")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Etapper::Server::SendEmailRequest,
    :schema_type => XSD::QName.new(NsService, "SendEmailRequest"),
    :schema_element => [
      ["accountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "accountRef")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(nil, "email")], [0, 1]],
      ["htmlMessage", ["SOAP::SOAPString", XSD::QName.new(nil, "htmlMessage")], [0, 1]],
      ["personaOption", ["SOAP::SOAPString", XSD::QName.new(nil, "personaOption")], [0, 1]],
      ["plainMessage", ["SOAP::SOAPString", XSD::QName.new(nil, "plainMessage")], [0, 1]],
      ["sender", ["SOAP::SOAPString", XSD::QName.new(nil, "sender")], [0, 1]],
      ["subject", ["SOAP::SOAPString", XSD::QName.new(nil, "subject")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::Account,
    :schema_type => XSD::QName.new(NsService, "Account"),
    :schema_element => [
      ["accountDefinedValues", ["Etapper::Server::ArrayOfDefinedValue", XSD::QName.new(nil, "accountDefinedValues")], [0, 1]],
      ["accountRoleType", ["SOAP::SOAPInt", XSD::QName.new(nil, "accountRoleType")], [0, 1]],
      ["address", ["SOAP::SOAPString", XSD::QName.new(nil, "address")], [0, 1]],
      ["city", ["SOAP::SOAPString", XSD::QName.new(nil, "city")], [0, 1]],
      ["country", ["SOAP::SOAPString", XSD::QName.new(nil, "country")], [0, 1]],
      ["county", ["SOAP::SOAPString", XSD::QName.new(nil, "county")], [0, 1]],
      ["donorRecognitionName", ["SOAP::SOAPString", XSD::QName.new(nil, "donorRecognitionName")], [0, 1]],
      ["donorRecognitionType", ["SOAP::SOAPInt", XSD::QName.new(nil, "donorRecognitionType")], [0, 1]],
      ["donorRoleRef", ["SOAP::SOAPString", XSD::QName.new(nil, "donorRoleRef")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(nil, "email")], [0, 1]],
      ["firstName", ["SOAP::SOAPString", XSD::QName.new(nil, "firstName")], [0, 1]],
      ["id", ["SOAP::SOAPInt", XSD::QName.new(nil, "id")], [0, 1]],
      ["lastName", ["SOAP::SOAPString", XSD::QName.new(nil, "lastName")], [0, 1]],
      ["longSalutation", ["SOAP::SOAPString", XSD::QName.new(nil, "longSalutation")], [0, 1]],
      ["middleName", ["SOAP::SOAPString", XSD::QName.new(nil, "middleName")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]],
      ["note", ["SOAP::SOAPString", XSD::QName.new(nil, "note")], [0, 1]],
      ["passwordExpired", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "passwordExpired")], [0, 1]],
      ["personaDefinedValues", ["Etapper::Server::ArrayOfDefinedValue", XSD::QName.new(nil, "personaDefinedValues")], [0, 1]],
      ["personaType", ["SOAP::SOAPString", XSD::QName.new(nil, "personaType")], [0, 1]],
      ["personaTypes", ["Etapper::Server::ArrayOfstring", XSD::QName.new(nil, "personaTypes")], [0, 1]],
      ["phones", ["Etapper::Server::ArrayOfPhone", XSD::QName.new(nil, "phones")], [0, 1]],
      ["postalCode", ["SOAP::SOAPString", XSD::QName.new(nil, "postalCode")], [0, 1]],
      ["primaryPersona", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "primaryPersona")], [0, 1]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "ref")], [0, 1]],
      ["shortSalutation", ["SOAP::SOAPString", XSD::QName.new(nil, "shortSalutation")], [0, 1]],
      ["sortName", ["SOAP::SOAPString", XSD::QName.new(nil, "sortName")], [0, 1]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(nil, "state")], [0, 1]],
      ["teamRoleRef", ["SOAP::SOAPString", XSD::QName.new(nil, "teamRoleRef")], [0, 1]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")], [0, 1]],
      ["tributeRoleRef", ["SOAP::SOAPString", XSD::QName.new(nil, "tributeRoleRef")], [0, 1]],
      ["userRoleRef", ["SOAP::SOAPString", XSD::QName.new(nil, "userRoleRef")], [0, 1]],
      ["webAddress", ["SOAP::SOAPString", XSD::QName.new(nil, "webAddress")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::DefinedValue,
    :schema_type => XSD::QName.new(NsService, "DefinedValue"),
    :schema_element => [
      ["dataType", ["SOAP::SOAPInt", XSD::QName.new(nil, "dataType")], [0, 1]],
      ["displayType", ["SOAP::SOAPInt", XSD::QName.new(nil, "displayType")], [0, 1]],
      ["fieldName", ["SOAP::SOAPString", XSD::QName.new(nil, "fieldName")], [0, 1]],
      ["fieldRef", ["SOAP::SOAPString", XSD::QName.new(nil, "fieldRef")], [0, 1]],
      ["value", ["SOAP::SOAPString", XSD::QName.new(nil, "value")], [0, 1]],
      ["valueRef", ["SOAP::SOAPString", XSD::QName.new(nil, "valueRef")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::Phone,
    :schema_type => XSD::QName.new(NsService, "Phone"),
    :schema_element => [
      ["number", ["SOAP::SOAPString", XSD::QName.new(nil, "number")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::Gift,
    :schema_type => XSD::QName.new(NsService, "Gift"),
    :schema_element => [
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(nil, "accountName")], [0, 1]],
      ["accountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "accountRef")], [0, 1]],
      ["amount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "amount")], [0, 1]],
      ["approach", ["SOAP::SOAPString", XSD::QName.new(nil, "approach")], [0, 1]],
      ["attachments", ["Etapper::Server::ArrayOfAttachment", XSD::QName.new(nil, "attachments")], [0, 1]],
      ["campaign", ["SOAP::SOAPString", XSD::QName.new(nil, "campaign")], [0, 1]],
      ["date", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "date")], [0, 1]],
      ["definedValues", ["Etapper::Server::ArrayOfDefinedValue", XSD::QName.new(nil, "definedValues")], [0, 1]],
      ["final", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "final")], [0, 1]],
      ["fund", ["SOAP::SOAPString", XSD::QName.new(nil, "fund")], [0, 1]],
      ["letter", ["SOAP::SOAPString", XSD::QName.new(nil, "letter")], [0, 1]],
      ["nonDeductibleAmount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "nonDeductibleAmount")], [0, 1]],
      ["note", ["SOAP::SOAPString", XSD::QName.new(nil, "note")], [0, 1]],
      ["offsettingRef", ["SOAP::SOAPString", XSD::QName.new(nil, "offsettingRef")], [0, 1]],
      ["originalAccountName", ["SOAP::SOAPString", XSD::QName.new(nil, "originalAccountName")], [0, 1]],
      ["originalAccountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "originalAccountRef")], [0, 1]],
      ["originalTransactionRef", ["SOAP::SOAPString", XSD::QName.new(nil, "originalTransactionRef")], [0, 1]],
      ["receipt", ["SOAP::SOAPString", XSD::QName.new(nil, "receipt")], [0, 1]],
      ["recognitionName", ["SOAP::SOAPString", XSD::QName.new(nil, "recognitionName")], [0, 1]],
      ["recognitionType", ["SOAP::SOAPInt", XSD::QName.new(nil, "recognitionType")], [0, 1]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "ref")], [0, 1]],
      ["segmentedTransactionRef", ["SOAP::SOAPString", XSD::QName.new(nil, "segmentedTransactionRef")], [0, 1]],
      ["softCredit", ["Etapper::Server::SoftCredit", XSD::QName.new(nil, "softCredit")], [0, 1]],
      ["tributeAccountName", ["SOAP::SOAPString", XSD::QName.new(nil, "tributeAccountName")], [0, 1]],
      ["tributeAccountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "tributeAccountRef")], [0, 1]],
      ["type", ["SOAP::SOAPInt", XSD::QName.new(nil, "type")], [0, 1]],
      ["valuable", ["Etapper::Server::Valuable", XSD::QName.new(nil, "valuable")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::Attachment,
    :schema_type => XSD::QName.new(NsService, "Attachment"),
    :schema_element => [
      ["date", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "date")], [0, 1]],
      ["fileContent", ["SOAP::SOAPBase64", XSD::QName.new(nil, "fileContent")], [0, 1]],
      ["filename", ["SOAP::SOAPString", XSD::QName.new(nil, "filename")], [0, 1]],
      ["mimeType", ["SOAP::SOAPString", XSD::QName.new(nil, "mimeType")], [0, 1]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "ref")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::SoftCredit,
    :schema_type => XSD::QName.new(NsService, "SoftCredit"),
    :schema_element => [
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(nil, "accountName")], [0, 1]],
      ["accountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "accountRef")], [0, 1]],
      ["amount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "amount")], [0, 1]],
      ["approach", ["SOAP::SOAPString", XSD::QName.new(nil, "approach")], [0, 1]],
      ["campaign", ["SOAP::SOAPString", XSD::QName.new(nil, "campaign")], [0, 1]],
      ["date", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "date")], [0, 1]],
      ["final", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "final")], [0, 1]],
      ["fund", ["SOAP::SOAPString", XSD::QName.new(nil, "fund")], [0, 1]],
      ["hardCreditAccountName", ["SOAP::SOAPString", XSD::QName.new(nil, "hardCreditAccountName")], [0, 1]],
      ["hardCreditAccountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "hardCreditAccountRef")], [0, 1]],
      ["hardCreditRef", ["SOAP::SOAPString", XSD::QName.new(nil, "hardCreditRef")], [0, 1]],
      ["letter", ["SOAP::SOAPString", XSD::QName.new(nil, "letter")], [0, 1]],
      ["note", ["SOAP::SOAPString", XSD::QName.new(nil, "note")], [0, 1]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "ref")], [0, 1]],
      ["type", ["SOAP::SOAPInt", XSD::QName.new(nil, "type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::Valuable,
    :schema_type => XSD::QName.new(NsService, "Valuable"),
    :schema_element => [
      ["bond", ["Etapper::Server::Bond", XSD::QName.new(nil, "bond")], [0, 1]],
      ["cash", ["Etapper::Server::Cash", XSD::QName.new(nil, "cash")], [0, 1]],
      ["check", ["Etapper::Server::Check", XSD::QName.new(nil, "check")], [0, 1]],
      ["creditCard", ["Etapper::Server::CreditCard", XSD::QName.new(nil, "creditCard")], [0, 1]],
      ["electronicFundsTransfer", ["Etapper::Server::ElectronicFundsTransfer", XSD::QName.new(nil, "electronicFundsTransfer")], [0, 1]],
      ["inKind", ["Etapper::Server::InKind", XSD::QName.new(nil, "inKind")], [0, 1]],
      ["insurance", ["Etapper::Server::Insurance", XSD::QName.new(nil, "insurance")], [0, 1]],
      ["realEstate", ["Etapper::Server::RealEstate", XSD::QName.new(nil, "realEstate")], [0, 1]],
      ["stock", ["Etapper::Server::Stock", XSD::QName.new(nil, "stock")], [0, 1]],
      ["type", ["SOAP::SOAPInt", XSD::QName.new(nil, "type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::Bond,
    :schema_type => XSD::QName.new(NsService, "Bond"),
    :schema_element => [
      ["actualValue", ["SOAP::SOAPDouble", XSD::QName.new(nil, "actualValue")], [0, 1]],
      ["dateCashed", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "dateCashed")], [0, 1]],
      ["issuingEntity", ["SOAP::SOAPString", XSD::QName.new(nil, "issuingEntity")], [0, 1]],
      ["maturityDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "maturityDate")], [0, 1]],
      ["note", ["SOAP::SOAPString", XSD::QName.new(nil, "note")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::Cash,
    :schema_type => XSD::QName.new(NsService, "Cash"),
    :schema_element => [
      ["note", ["SOAP::SOAPString", XSD::QName.new(nil, "note")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::Check,
    :schema_type => XSD::QName.new(NsService, "Check"),
    :schema_element => [
      ["account", ["SOAP::SOAPString", XSD::QName.new(nil, "account")], [0, 1]],
      ["bank", ["SOAP::SOAPString", XSD::QName.new(nil, "bank")], [0, 1]],
      ["date", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "date")], [0, 1]],
      ["note", ["SOAP::SOAPString", XSD::QName.new(nil, "note")], [0, 1]],
      ["number", ["SOAP::SOAPString", XSD::QName.new(nil, "number")], [0, 1]],
      ["payee", ["SOAP::SOAPString", XSD::QName.new(nil, "payee")], [0, 1]],
      ["signator", ["SOAP::SOAPString", XSD::QName.new(nil, "signator")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::CreditCard,
    :schema_type => XSD::QName.new(NsService, "CreditCard"),
    :schema_element => [
      ["authorizationCode", ["SOAP::SOAPString", XSD::QName.new(nil, "authorizationCode")], [0, 1]],
      ["cardType", ["SOAP::SOAPString", XSD::QName.new(nil, "cardType")], [0, 1]],
      ["cvv2", ["SOAP::SOAPString", XSD::QName.new(nil, "cvv2")], [0, 1]],
      ["expirationMonth", ["SOAP::SOAPInt", XSD::QName.new(nil, "expirationMonth")], [0, 1]],
      ["expirationYear", ["SOAP::SOAPInt", XSD::QName.new(nil, "expirationYear")], [0, 1]],
      ["firstName", ["SOAP::SOAPString", XSD::QName.new(nil, "firstName")], [0, 1]],
      ["lastName", ["SOAP::SOAPString", XSD::QName.new(nil, "lastName")], [0, 1]],
      ["middleName", ["SOAP::SOAPString", XSD::QName.new(nil, "middleName")], [0, 1]],
      ["nameOnCard", ["SOAP::SOAPString", XSD::QName.new(nil, "nameOnCard")], [0, 1]],
      ["note", ["SOAP::SOAPString", XSD::QName.new(nil, "note")], [0, 1]],
      ["number", ["SOAP::SOAPString", XSD::QName.new(nil, "number")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::ElectronicFundsTransfer,
    :schema_type => XSD::QName.new(NsService, "ElectronicFundsTransfer"),
    :schema_element => [
      ["accountNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "accountNumber")], [0, 1]],
      ["accountType", ["SOAP::SOAPInt", XSD::QName.new(nil, "accountType")], [0, 1]],
      ["authorizationCode", ["SOAP::SOAPString", XSD::QName.new(nil, "authorizationCode")], [0, 1]],
      ["bank", ["SOAP::SOAPString", XSD::QName.new(nil, "bank")], [0, 1]],
      ["dateOfBirth", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "dateOfBirth")], [0, 1]],
      ["driversLicenseNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "driversLicenseNumber")], [0, 1]],
      ["driversLicenseState", ["SOAP::SOAPString", XSD::QName.new(nil, "driversLicenseState")], [0, 1]],
      ["firstName", ["SOAP::SOAPString", XSD::QName.new(nil, "firstName")], [0, 1]],
      ["lastName", ["SOAP::SOAPString", XSD::QName.new(nil, "lastName")], [0, 1]],
      ["middleName", ["SOAP::SOAPString", XSD::QName.new(nil, "middleName")], [0, 1]],
      ["note", ["SOAP::SOAPString", XSD::QName.new(nil, "note")], [0, 1]],
      ["processDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "processDate")], [0, 1]],
      ["routingNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "routingNumber")], [0, 1]],
      ["ssn", ["SOAP::SOAPString", XSD::QName.new(nil, "ssn")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::InKind,
    :schema_type => XSD::QName.new(NsService, "InKind"),
    :schema_element => [
      ["note", ["SOAP::SOAPString", XSD::QName.new(nil, "note")], [0, 1]],
      ["saleDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "saleDate")], [0, 1]],
      ["saleValue", ["SOAP::SOAPDouble", XSD::QName.new(nil, "saleValue")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::Insurance,
    :schema_type => XSD::QName.new(NsService, "Insurance"),
    :schema_element => [
      ["beneficiary", ["SOAP::SOAPString", XSD::QName.new(nil, "beneficiary")], [0, 1]],
      ["insurer", ["SOAP::SOAPString", XSD::QName.new(nil, "insurer")], [0, 1]],
      ["lengthOfPolicyAgreement", ["SOAP::SOAPString", XSD::QName.new(nil, "lengthOfPolicyAgreement")], [0, 1]],
      ["note", ["SOAP::SOAPString", XSD::QName.new(nil, "note")], [0, 1]],
      ["organizationPayingPremiums", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "organizationPayingPremiums")], [0, 1]],
      ["policyNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "policyNumber")], [0, 1]],
      ["premiumAmount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "premiumAmount")], [0, 1]],
      ["premiumFrequency", ["SOAP::SOAPInt", XSD::QName.new(nil, "premiumFrequency")], [0, 1]],
      ["surrenderDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "surrenderDate")], [0, 1]],
      ["surrenderValue", ["SOAP::SOAPDouble", XSD::QName.new(nil, "surrenderValue")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::RealEstate,
    :schema_type => XSD::QName.new(NsService, "RealEstate"),
    :schema_element => [
      ["location", ["SOAP::SOAPString", XSD::QName.new(nil, "location")], [0, 1]],
      ["note", ["SOAP::SOAPString", XSD::QName.new(nil, "note")], [0, 1]],
      ["realEstateType", ["SOAP::SOAPString", XSD::QName.new(nil, "realEstateType")], [0, 1]],
      ["saleDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "saleDate")], [0, 1]],
      ["saleValue", ["SOAP::SOAPDouble", XSD::QName.new(nil, "saleValue")], [0, 1]],
      ["size", ["SOAP::SOAPString", XSD::QName.new(nil, "size")], [0, 1]],
      ["taxParcelNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "taxParcelNumber")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::Stock,
    :schema_type => XSD::QName.new(NsService, "Stock"),
    :schema_element => [
      ["brokerName", ["SOAP::SOAPString", XSD::QName.new(nil, "brokerName")], [0, 1]],
      ["brokerageFee", ["SOAP::SOAPDouble", XSD::QName.new(nil, "brokerageFee")], [0, 1]],
      ["company", ["SOAP::SOAPString", XSD::QName.new(nil, "company")], [0, 1]],
      ["note", ["SOAP::SOAPString", XSD::QName.new(nil, "note")], [0, 1]],
      ["numberOfShares", ["SOAP::SOAPDouble", XSD::QName.new(nil, "numberOfShares")], [0, 1]],
      ["pricePerShare", ["SOAP::SOAPDouble", XSD::QName.new(nil, "pricePerShare")], [0, 1]],
      ["saleDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "saleDate")], [0, 1]],
      ["salePricePerShare", ["SOAP::SOAPDouble", XSD::QName.new(nil, "salePricePerShare")], [0, 1]],
      ["ticker", ["SOAP::SOAPString", XSD::QName.new(nil, "ticker")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::Payment,
    :schema_type => XSD::QName.new(NsService, "Payment"),
    :schema_element => [
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(nil, "accountName")], [0, 1]],
      ["accountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "accountRef")], [0, 1]],
      ["amount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "amount")], [0, 1]],
      ["approach", ["SOAP::SOAPString", XSD::QName.new(nil, "approach")], [0, 1]],
      ["attachments", ["Etapper::Server::ArrayOfAttachment", XSD::QName.new(nil, "attachments")], [0, 1]],
      ["campaign", ["SOAP::SOAPString", XSD::QName.new(nil, "campaign")], [0, 1]],
      ["date", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "date")], [0, 1]],
      ["definedValues", ["Etapper::Server::ArrayOfDefinedValue", XSD::QName.new(nil, "definedValues")], [0, 1]],
      ["final", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "final")], [0, 1]],
      ["fund", ["SOAP::SOAPString", XSD::QName.new(nil, "fund")], [0, 1]],
      ["letter", ["SOAP::SOAPString", XSD::QName.new(nil, "letter")], [0, 1]],
      ["note", ["SOAP::SOAPString", XSD::QName.new(nil, "note")], [0, 1]],
      ["offsettingRef", ["SOAP::SOAPString", XSD::QName.new(nil, "offsettingRef")], [0, 1]],
      ["originalAccountName", ["SOAP::SOAPString", XSD::QName.new(nil, "originalAccountName")], [0, 1]],
      ["originalAccountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "originalAccountRef")], [0, 1]],
      ["originalTransactionRef", ["SOAP::SOAPString", XSD::QName.new(nil, "originalTransactionRef")], [0, 1]],
      ["pledgeRef", ["SOAP::SOAPString", XSD::QName.new(nil, "pledgeRef")], [0, 1]],
      ["receipt", ["SOAP::SOAPString", XSD::QName.new(nil, "receipt")], [0, 1]],
      ["recognitionName", ["SOAP::SOAPString", XSD::QName.new(nil, "recognitionName")], [0, 1]],
      ["recognitionType", ["SOAP::SOAPInt", XSD::QName.new(nil, "recognitionType")], [0, 1]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "ref")], [0, 1]],
      ["segmentedTransactionRef", ["SOAP::SOAPString", XSD::QName.new(nil, "segmentedTransactionRef")], [0, 1]],
      ["softCredit", ["Etapper::Server::SoftCredit", XSD::QName.new(nil, "softCredit")], [0, 1]],
      ["tributeAccountName", ["SOAP::SOAPString", XSD::QName.new(nil, "tributeAccountName")], [0, 1]],
      ["tributeAccountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "tributeAccountRef")], [0, 1]],
      ["type", ["SOAP::SOAPInt", XSD::QName.new(nil, "type")], [0, 1]],
      ["valuable", ["Etapper::Server::Valuable", XSD::QName.new(nil, "valuable")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::Contact,
    :schema_type => XSD::QName.new(NsService, "Contact"),
    :schema_element => [
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(nil, "accountName")], [0, 1]],
      ["accountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "accountRef")], [0, 1]],
      ["attachments", ["Etapper::Server::ArrayOfAttachment", XSD::QName.new(nil, "attachments")], [0, 1]],
      ["date", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "date")], [0, 1]],
      ["definedValues", ["Etapper::Server::ArrayOfDefinedValue", XSD::QName.new(nil, "definedValues")], [0, 1]],
      ["final", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "final")], [0, 1]],
      ["method", ["SOAP::SOAPString", XSD::QName.new(nil, "method")], [0, 1]],
      ["note", ["SOAP::SOAPString", XSD::QName.new(nil, "note")], [0, 1]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "ref")], [0, 1]],
      ["subject", ["SOAP::SOAPString", XSD::QName.new(nil, "subject")], [0, 1]],
      ["type", ["SOAP::SOAPInt", XSD::QName.new(nil, "type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::Disbursement,
    :schema_type => XSD::QName.new(NsService, "Disbursement"),
    :schema_element => [
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(nil, "accountName")], [0, 1]],
      ["accountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "accountRef")], [0, 1]],
      ["amount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "amount")], [0, 1]],
      ["approach", ["SOAP::SOAPString", XSD::QName.new(nil, "approach")], [0, 1]],
      ["attachments", ["Etapper::Server::ArrayOfAttachment", XSD::QName.new(nil, "attachments")], [0, 1]],
      ["campaign", ["SOAP::SOAPString", XSD::QName.new(nil, "campaign")], [0, 1]],
      ["date", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "date")], [0, 1]],
      ["definedValues", ["Etapper::Server::ArrayOfDefinedValue", XSD::QName.new(nil, "definedValues")], [0, 1]],
      ["final", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "final")], [0, 1]],
      ["fund", ["SOAP::SOAPString", XSD::QName.new(nil, "fund")], [0, 1]],
      ["letter", ["SOAP::SOAPString", XSD::QName.new(nil, "letter")], [0, 1]],
      ["note", ["SOAP::SOAPString", XSD::QName.new(nil, "note")], [0, 1]],
      ["offsettingRef", ["SOAP::SOAPString", XSD::QName.new(nil, "offsettingRef")], [0, 1]],
      ["receipt", ["SOAP::SOAPString", XSD::QName.new(nil, "receipt")], [0, 1]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "ref")], [0, 1]],
      ["type", ["SOAP::SOAPInt", XSD::QName.new(nil, "type")], [0, 1]],
      ["valuable", ["Etapper::Server::Valuable", XSD::QName.new(nil, "valuable")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::LoginCredentialsRequest,
    :schema_type => XSD::QName.new(NsService, "LoginCredentialsRequest"),
    :schema_element => [
      ["account", ["Etapper::Server::Account", XSD::QName.new(nil, "account")], [0, 1]],
      ["confirmationLoginURL", ["SOAP::SOAPString", XSD::QName.new(nil, "confirmationLoginURL")], [0, 1]],
      ["confirmationMessageFooter", ["SOAP::SOAPString", XSD::QName.new(nil, "confirmationMessageFooter")], [0, 1]],
      ["confirmationMessageHeader", ["SOAP::SOAPString", XSD::QName.new(nil, "confirmationMessageHeader")], [0, 1]],
      ["confirmationSender", ["SOAP::SOAPString", XSD::QName.new(nil, "confirmationSender")], [0, 1]],
      ["confirmationSignature", ["SOAP::SOAPString", XSD::QName.new(nil, "confirmationSignature")], [0, 1]],
      ["confirmationSubject", ["SOAP::SOAPString", XSD::QName.new(nil, "confirmationSubject")], [0, 1]],
      ["duplicateSearchCriteria", ["Etapper::Server::ArrayOfSearchCriteria", XSD::QName.new(nil, "duplicateSearchCriteria")], [0, 1]],
      ["duplicateSearchQuery", ["SOAP::SOAPString", XSD::QName.new(nil, "duplicateSearchQuery")], [0, 1]],
      ["failureEmail", ["SOAP::SOAPString", XSD::QName.new(nil, "failureEmail")], [0, 1]],
      ["loginId", ["SOAP::SOAPString", XSD::QName.new(nil, "loginId")], [0, 1]],
      ["matchHasLoginIdActionType", ["SOAP::SOAPInt", XSD::QName.new(nil, "matchHasLoginIdActionType")], [0, 1]],
      ["matchMultipleActionType", ["SOAP::SOAPInt", XSD::QName.new(nil, "matchMultipleActionType")], [0, 1]],
      ["matchNotFoundActionType", ["SOAP::SOAPInt", XSD::QName.new(nil, "matchNotFoundActionType")], [0, 1]],
      ["notificationEmail", ["SOAP::SOAPString", XSD::QName.new(nil, "notificationEmail")], [0, 1]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(nil, "password")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::SearchCriteria,
    :schema_type => XSD::QName.new(NsService, "SearchCriteria"),
    :schema_element => [
      ["action", ["SOAP::SOAPString", XSD::QName.new(nil, "action")], [0, 1]],
      ["field", ["SOAP::SOAPString", XSD::QName.new(nil, "field")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")], [0, 1]],
      ["values", ["Etapper::Server::ArrayOfstring", XSD::QName.new(nil, "values")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::LoginCredentialsResponse,
    :schema_type => XSD::QName.new(NsService, "LoginCredentialsResponse"),
    :schema_element => [
      ["accountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "accountRef")], [0, 1]],
      ["createdNewAccount", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "createdNewAccount")], [0, 1]],
      ["matchedMultiples", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "matchedMultiples")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::Note,
    :schema_type => XSD::QName.new(NsService, "Note"),
    :schema_element => [
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(nil, "accountName")], [0, 1]],
      ["accountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "accountRef")], [0, 1]],
      ["attachments", ["Etapper::Server::ArrayOfAttachment", XSD::QName.new(nil, "attachments")], [0, 1]],
      ["date", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "date")], [0, 1]],
      ["definedValues", ["Etapper::Server::ArrayOfDefinedValue", XSD::QName.new(nil, "definedValues")], [0, 1]],
      ["final", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "final")], [0, 1]],
      ["immutable", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "immutable")], [0, 1]],
      ["note", ["SOAP::SOAPString", XSD::QName.new(nil, "note")], [0, 1]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "ref")], [0, 1]],
      ["type", ["SOAP::SOAPInt", XSD::QName.new(nil, "type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::OutlookIntegrationEmail,
    :schema_type => XSD::QName.new(NsService, "OutlookIntegrationEmail"),
    :schema_element => [
      ["bCC", ["SOAP::SOAPString", XSD::QName.new(nil, "BCC")], [0, 1]],
      ["cC", ["SOAP::SOAPString", XSD::QName.new(nil, "CC")], [0, 1]],
      ["attachments", ["Etapper::Server::ArrayOfAttachment", XSD::QName.new(nil, "attachments")], [0, 1]],
      ["contactMethodRef", ["SOAP::SOAPString", XSD::QName.new(nil, "contactMethodRef")], [0, 1]],
      ["date", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "date")], [0, 1]],
      ["from", ["SOAP::SOAPString", XSD::QName.new(nil, "from")], [0, 1]],
      ["message", ["SOAP::SOAPBase64", XSD::QName.new(nil, "message")], [0, 1]],
      ["subject", ["SOAP::SOAPBase64", XSD::QName.new(nil, "subject")], [0, 1]],
      ["to", ["SOAP::SOAPString", XSD::QName.new(nil, "to")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::Pledge,
    :schema_type => XSD::QName.new(NsService, "Pledge"),
    :schema_element => [
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(nil, "accountName")], [0, 1]],
      ["accountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "accountRef")], [0, 1]],
      ["amount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "amount")], [0, 1]],
      ["approach", ["SOAP::SOAPString", XSD::QName.new(nil, "approach")], [0, 1]],
      ["attachments", ["Etapper::Server::ArrayOfAttachment", XSD::QName.new(nil, "attachments")], [0, 1]],
      ["campaign", ["SOAP::SOAPString", XSD::QName.new(nil, "campaign")], [0, 1]],
      ["customSchedule", ["Etapper::Server::CustomPaymentSchedule", XSD::QName.new(nil, "customSchedule")], [0, 1]],
      ["date", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "date")], [0, 1]],
      ["definedValues", ["Etapper::Server::ArrayOfDefinedValue", XSD::QName.new(nil, "definedValues")], [0, 1]],
      ["final", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "final")], [0, 1]],
      ["fund", ["SOAP::SOAPString", XSD::QName.new(nil, "fund")], [0, 1]],
      ["initialPaymentAmount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "initialPaymentAmount")], [0, 1]],
      ["letter", ["SOAP::SOAPString", XSD::QName.new(nil, "letter")], [0, 1]],
      ["linkedPaymentsAmount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "linkedPaymentsAmount")], [0, 1]],
      ["nextPaymentAmount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "nextPaymentAmount")], [0, 1]],
      ["nextPaymentDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "nextPaymentDate")], [0, 1]],
      ["nonDeductibleAmount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "nonDeductibleAmount")], [0, 1]],
      ["note", ["SOAP::SOAPString", XSD::QName.new(nil, "note")], [0, 1]],
      ["offsettingRef", ["SOAP::SOAPString", XSD::QName.new(nil, "offsettingRef")], [0, 1]],
      ["originalAccountName", ["SOAP::SOAPString", XSD::QName.new(nil, "originalAccountName")], [0, 1]],
      ["originalAccountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "originalAccountRef")], [0, 1]],
      ["originalTransactionRef", ["SOAP::SOAPString", XSD::QName.new(nil, "originalTransactionRef")], [0, 1]],
      ["outstandingBalance", ["SOAP::SOAPDouble", XSD::QName.new(nil, "outstandingBalance")], [0, 1]],
      ["paymentValuable", ["Etapper::Server::Valuable", XSD::QName.new(nil, "paymentValuable")], [0, 1]],
      ["receipt", ["SOAP::SOAPString", XSD::QName.new(nil, "receipt")], [0, 1]],
      ["recognitionName", ["SOAP::SOAPString", XSD::QName.new(nil, "recognitionName")], [0, 1]],
      ["recognitionType", ["SOAP::SOAPInt", XSD::QName.new(nil, "recognitionType")], [0, 1]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "ref")], [0, 1]],
      ["scheduledValuable", ["Etapper::Server::Valuable", XSD::QName.new(nil, "scheduledValuable")], [0, 1]],
      ["segmentedTransactionRef", ["SOAP::SOAPString", XSD::QName.new(nil, "segmentedTransactionRef")], [0, 1]],
      ["softCredit", ["Etapper::Server::SoftCredit", XSD::QName.new(nil, "softCredit")], [0, 1]],
      ["standardSchedule", ["Etapper::Server::StandardPaymentSchedule", XSD::QName.new(nil, "standardSchedule")], [0, 1]],
      ["tributeAccountName", ["SOAP::SOAPString", XSD::QName.new(nil, "tributeAccountName")], [0, 1]],
      ["tributeAccountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "tributeAccountRef")], [0, 1]],
      ["type", ["SOAP::SOAPInt", XSD::QName.new(nil, "type")], [0, 1]],
      ["writeOff", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "writeOff")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::CustomPaymentSchedule,
    :schema_type => XSD::QName.new(NsService, "CustomPaymentSchedule"),
    :schema_element => [
      ["installmentAmounts", ["Etapper::Server::ArrayOfdouble", XSD::QName.new(nil, "installmentAmounts")], [0, 1]],
      ["installmentDates", ["Etapper::Server::ArrayOfdateTime", XSD::QName.new(nil, "installmentDates")], [0, 1]],
      ["note", ["SOAP::SOAPString", XSD::QName.new(nil, "note")], [0, 1]],
      ["processType", ["SOAP::SOAPInt", XSD::QName.new(nil, "processType")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::StandardPaymentSchedule,
    :schema_type => XSD::QName.new(NsService, "StandardPaymentSchedule"),
    :schema_element => [
      ["firstInstallmentDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "firstInstallmentDate")], [0, 1]],
      ["frequency", ["SOAP::SOAPInt", XSD::QName.new(nil, "frequency")], [0, 1]],
      ["installmentAmount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "installmentAmount")], [0, 1]],
      ["note", ["SOAP::SOAPString", XSD::QName.new(nil, "note")], [0, 1]],
      ["processType", ["SOAP::SOAPInt", XSD::QName.new(nil, "processType")], [0, 1]],
      ["stopDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "stopDate")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::RecurringGift,
    :schema_type => XSD::QName.new(NsService, "RecurringGift"),
    :schema_element => [
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(nil, "accountName")], [0, 1]],
      ["accountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "accountRef")], [0, 1]],
      ["amount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "amount")], [0, 1]],
      ["approach", ["SOAP::SOAPString", XSD::QName.new(nil, "approach")], [0, 1]],
      ["attachments", ["Etapper::Server::ArrayOfAttachment", XSD::QName.new(nil, "attachments")], [0, 1]],
      ["campaign", ["SOAP::SOAPString", XSD::QName.new(nil, "campaign")], [0, 1]],
      ["copyRgsElements", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "copyRgsElements")], [0, 1]],
      ["date", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "date")], [0, 1]],
      ["definedValues", ["Etapper::Server::ArrayOfDefinedValue", XSD::QName.new(nil, "definedValues")], [0, 1]],
      ["final", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "final")], [0, 1]],
      ["fund", ["SOAP::SOAPString", XSD::QName.new(nil, "fund")], [0, 1]],
      ["letter", ["SOAP::SOAPString", XSD::QName.new(nil, "letter")], [0, 1]],
      ["nonDeductibleAmount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "nonDeductibleAmount")], [0, 1]],
      ["note", ["SOAP::SOAPString", XSD::QName.new(nil, "note")], [0, 1]],
      ["offsettingRef", ["SOAP::SOAPString", XSD::QName.new(nil, "offsettingRef")], [0, 1]],
      ["originalAccountName", ["SOAP::SOAPString", XSD::QName.new(nil, "originalAccountName")], [0, 1]],
      ["originalAccountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "originalAccountRef")], [0, 1]],
      ["originalTransactionRef", ["SOAP::SOAPString", XSD::QName.new(nil, "originalTransactionRef")], [0, 1]],
      ["receipt", ["SOAP::SOAPString", XSD::QName.new(nil, "receipt")], [0, 1]],
      ["recognitionName", ["SOAP::SOAPString", XSD::QName.new(nil, "recognitionName")], [0, 1]],
      ["recognitionType", ["SOAP::SOAPInt", XSD::QName.new(nil, "recognitionType")], [0, 1]],
      ["recurringGiftScheduleRef", ["SOAP::SOAPString", XSD::QName.new(nil, "recurringGiftScheduleRef")], [0, 1]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "ref")], [0, 1]],
      ["softCredit", ["Etapper::Server::SoftCredit", XSD::QName.new(nil, "softCredit")], [0, 1]],
      ["tributeAccountName", ["SOAP::SOAPString", XSD::QName.new(nil, "tributeAccountName")], [0, 1]],
      ["tributeAccountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "tributeAccountRef")], [0, 1]],
      ["type", ["SOAP::SOAPInt", XSD::QName.new(nil, "type")], [0, 1]],
      ["valuable", ["Etapper::Server::Valuable", XSD::QName.new(nil, "valuable")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::ConnectRequest,
    :schema_type => XSD::QName.new(NsService, "ConnectRequest"),
    :schema_element => [
      ["applicationContext", ["SOAP::SOAPString", XSD::QName.new(nil, "applicationContext")], [0, 1]],
      ["databaseId", ["SOAP::SOAPString", XSD::QName.new(nil, "databaseId")], [0, 1]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(nil, "password")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::ExternalLoginRequest,
    :schema_type => XSD::QName.new(NsService, "ExternalLoginRequest"),
    :schema_element => [
      ["applicationContext", ["SOAP::SOAPString", XSD::QName.new(nil, "applicationContext")], [0, 1]],
      ["applicationName", ["SOAP::SOAPString", XSD::QName.new(nil, "applicationName")], [0, 1]],
      ["databaseId", ["SOAP::SOAPString", XSD::QName.new(nil, "databaseId")], [0, 1]],
      ["loginId", ["SOAP::SOAPString", XSD::QName.new(nil, "loginId")], [0, 1]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(nil, "password")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::PagedCartElementsResponse,
    :schema_type => XSD::QName.new(NsService, "PagedCartElementsResponse"),
    :schema_element => [
      ["count", ["SOAP::SOAPInt", XSD::QName.new(nil, "count")], [0, 1]],
      ["data", ["Etapper::Server::Collection", XSD::QName.new(nil, "data")], [0, 1]],
      ["pages", ["SOAP::SOAPInt", XSD::QName.new(nil, "pages")], [0, 1]],
      ["start", ["SOAP::SOAPInt", XSD::QName.new(nil, "start")], [0, 1]],
      ["total", ["SOAP::SOAPInt", XSD::QName.new(nil, "total")], [0, 1]],
      ["usedCache", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "usedCache")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::PagedDefinedFieldsResponse,
    :schema_type => XSD::QName.new(NsService, "PagedDefinedFieldsResponse"),
    :schema_element => [
      ["count", ["SOAP::SOAPInt", XSD::QName.new(nil, "count")], [0, 1]],
      ["data", ["Etapper::Server::Collection", XSD::QName.new(nil, "data")], [0, 1]],
      ["pages", ["SOAP::SOAPInt", XSD::QName.new(nil, "pages")], [0, 1]],
      ["start", ["SOAP::SOAPInt", XSD::QName.new(nil, "start")], [0, 1]],
      ["total", ["SOAP::SOAPInt", XSD::QName.new(nil, "total")], [0, 1]],
      ["usedCache", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "usedCache")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::PagedJournalEntriesResponse,
    :schema_type => XSD::QName.new(NsService, "PagedJournalEntriesResponse"),
    :schema_element => [
      ["count", ["SOAP::SOAPInt", XSD::QName.new(nil, "count")], [0, 1]],
      ["data", ["Etapper::Server::Collection", XSD::QName.new(nil, "data")], [0, 1]],
      ["pages", ["SOAP::SOAPInt", XSD::QName.new(nil, "pages")], [0, 1]],
      ["start", ["SOAP::SOAPInt", XSD::QName.new(nil, "start")], [0, 1]],
      ["total", ["SOAP::SOAPInt", XSD::QName.new(nil, "total")], [0, 1]],
      ["usedCache", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "usedCache")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::PagedQueryResultsResponse,
    :schema_type => XSD::QName.new(NsService, "PagedQueryResultsResponse"),
    :schema_element => [
      ["count", ["SOAP::SOAPInt", XSD::QName.new(nil, "count")], [0, 1]],
      ["data", ["Etapper::Server::Collection", XSD::QName.new(nil, "data")], [0, 1]],
      ["pages", ["SOAP::SOAPInt", XSD::QName.new(nil, "pages")], [0, 1]],
      ["start", ["SOAP::SOAPInt", XSD::QName.new(nil, "start")], [0, 1]],
      ["total", ["SOAP::SOAPInt", XSD::QName.new(nil, "total")], [0, 1]],
      ["usedCache", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "usedCache")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::CalendarItem,
    :schema_type => XSD::QName.new(NsService, "CalendarItem"),
    :schema_element => [
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(nil, "accountName")], [0, 1]],
      ["accountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "accountRef")], [0, 1]],
      ["attachments", ["Etapper::Server::ArrayOfAttachment", XSD::QName.new(nil, "attachments")], [0, 1]],
      ["definedValues", ["Etapper::Server::ArrayOfDefinedValue", XSD::QName.new(nil, "definedValues")], [0, 1]],
      ["endTime", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "endTime")], [0, 1]],
      ["invitations", ["Etapper::Server::ArrayOfInvitation", XSD::QName.new(nil, "invitations")], [0, 1]],
      ["note", ["SOAP::SOAPString", XSD::QName.new(nil, "note")], [0, 1]],
      ["priority", ["SOAP::SOAPInt", XSD::QName.new(nil, "priority")], [0, 1]],
      ["private", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "private")], [0, 1]],
      ["recurringSchedule", ["Etapper::Server::RecurringSchedule", XSD::QName.new(nil, "recurringSchedule")], [0, 1]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "ref")], [0, 1]],
      ["remind", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "remind")], [0, 1]],
      ["startTime", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "startTime")], [0, 1]],
      ["status", ["SOAP::SOAPInt", XSD::QName.new(nil, "status")], [0, 1]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")], [0, 1]],
      ["type", ["SOAP::SOAPInt", XSD::QName.new(nil, "type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::Invitation,
    :schema_type => XSD::QName.new(NsService, "Invitation"),
    :schema_element => [
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(nil, "accountName")], [0, 1]],
      ["accountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "accountRef")], [0, 1]],
      ["calendarItem", ["Etapper::Server::CalendarItem", XSD::QName.new(nil, "calendarItem")], [0, 1]],
      ["date", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "date")], [0, 1]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "ref")], [0, 1]],
      ["remind", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "remind")], [0, 1]],
      ["status", ["SOAP::SOAPInt", XSD::QName.new(nil, "status")], [0, 1]],
      ["type", ["SOAP::SOAPInt", XSD::QName.new(nil, "type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::RecurringSchedule,
    :schema_type => XSD::QName.new(NsService, "RecurringSchedule"),
    :schema_element => [
      ["frequency", ["SOAP::SOAPInt", XSD::QName.new(nil, "frequency")], [0, 1]],
      ["measure", ["SOAP::SOAPInt", XSD::QName.new(nil, "measure")], [0, 1]],
      ["startDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "startDate")], [0, 1]],
      ["stopDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "stopDate")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::CartCategory,
    :schema_type => XSD::QName.new(NsService, "CartCategory"),
    :schema_element => [
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")], [0, 1]],
      ["disabled", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "disabled")], [0, 1]],
      ["image", ["Etapper::Server::CartImage", XSD::QName.new(nil, "image")], [0, 1]],
      ["immediateCategories", ["SOAP::SOAPInt", XSD::QName.new(nil, "immediateCategories")], [0, 1]],
      ["immediateItems", ["SOAP::SOAPInt", XSD::QName.new(nil, "immediateItems")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]],
      ["nestedCategories", ["SOAP::SOAPInt", XSD::QName.new(nil, "nestedCategories")], [0, 1]],
      ["nestedItems", ["SOAP::SOAPInt", XSD::QName.new(nil, "nestedItems")], [0, 1]],
      ["parents", ["Etapper::Server::ArrayOfCartParent", XSD::QName.new(nil, "parents")], [0, 1]],
      ["publishEndDate", ["SOAP::SOAPString", XSD::QName.new(nil, "publishEndDate")], [0, 1]],
      ["publishStartDate", ["SOAP::SOAPString", XSD::QName.new(nil, "publishStartDate")], [0, 1]],
      ["publishableNow", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "publishableNow")], [0, 1]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "ref")], [0, 1]],
      ["type", ["SOAP::SOAPInt", XSD::QName.new(nil, "type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::CartImage,
    :schema_type => XSD::QName.new(NsService, "CartImage"),
    :schema_element => [
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")], [0, 1]],
      ["url", ["SOAP::SOAPString", XSD::QName.new(nil, "url")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::CartParent,
    :schema_type => XSD::QName.new(NsService, "CartParent"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "ref")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::PagedCartElementsRequest,
    :schema_type => XSD::QName.new(NsService, "PagedCartElementsRequest"),
    :schema_element => [
      ["clearCache", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "clearCache")], [0, 1]],
      ["count", ["SOAP::SOAPInt", XSD::QName.new(nil, "count")], [0, 1]],
      ["start", ["SOAP::SOAPInt", XSD::QName.new(nil, "start")], [0, 1]],
      ["cartRef", ["SOAP::SOAPString", XSD::QName.new(nil, "cartRef")], [0, 1]],
      ["categoryRef", ["SOAP::SOAPString", XSD::QName.new(nil, "categoryRef")], [0, 1]],
      ["elementTypeMask", ["SOAP::SOAPInt", XSD::QName.new(nil, "elementTypeMask")], [0, 1]],
      ["includeDisabledItems", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "includeDisabledItems")], [0, 1]],
      ["includeNoItemCategories", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "includeNoItemCategories")], [0, 1]],
      ["includeNonPublishableCategories", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "includeNonPublishableCategories")], [0, 1]],
      ["includeNonPublishableItems", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "includeNonPublishableItems")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::CartItem,
    :schema_type => XSD::QName.new(NsService, "CartItem"),
    :schema_element => [
      ["deductibleAmount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "deductibleAmount")], [0, 1]],
      ["disabled", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "disabled")], [0, 1]],
      ["longDescription", ["SOAP::SOAPString", XSD::QName.new(nil, "longDescription")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]],
      ["nonTaxableAmount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "nonTaxableAmount")], [0, 1]],
      ["parents", ["Etapper::Server::ArrayOfCartParent", XSD::QName.new(nil, "parents")], [0, 1]],
      ["publishEndDate", ["SOAP::SOAPString", XSD::QName.new(nil, "publishEndDate")], [0, 1]],
      ["publishStartDate", ["SOAP::SOAPString", XSD::QName.new(nil, "publishStartDate")], [0, 1]],
      ["publishableNow", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "publishableNow")], [0, 1]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "ref")], [0, 1]],
      ["regularImages", ["Etapper::Server::ArrayOfCartImage", XSD::QName.new(nil, "regularImages")], [0, 1]],
      ["regularPrice", ["SOAP::SOAPDouble", XSD::QName.new(nil, "regularPrice")], [0, 1]],
      ["shippingPrice", ["SOAP::SOAPDouble", XSD::QName.new(nil, "shippingPrice")], [0, 1]],
      ["shortDescription", ["SOAP::SOAPString", XSD::QName.new(nil, "shortDescription")], [0, 1]],
      ["thumbImage", ["Etapper::Server::CartImage", XSD::QName.new(nil, "thumbImage")], [0, 1]],
      ["type", ["SOAP::SOAPInt", XSD::QName.new(nil, "type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::CartPreferences,
    :schema_type => XSD::QName.new(NsService, "CartPreferences"),
    :schema_element => [
      ["expressShippingPrice", ["SOAP::SOAPDouble", XSD::QName.new(nil, "expressShippingPrice")], [0, 1]],
      ["internationalShippingPrice", ["SOAP::SOAPDouble", XSD::QName.new(nil, "internationalShippingPrice")], [0, 1]],
      ["regularShippingPrice", ["SOAP::SOAPDouble", XSD::QName.new(nil, "regularShippingPrice")], [0, 1]],
      ["salesTaxKey", ["SOAP::SOAPInt", XSD::QName.new(nil, "salesTaxKey")], [0, 1]],
      ["siteName", ["SOAP::SOAPString", XSD::QName.new(nil, "siteName")], [0, 1]],
      ["siteTitle", ["SOAP::SOAPString", XSD::QName.new(nil, "siteTitle")], [0, 1]],
      ["stateTaxRates", ["Etapper::Server::ArrayOfStateTaxRate", XSD::QName.new(nil, "stateTaxRates")], [0, 1]],
      ["successMessage", ["SOAP::SOAPString", XSD::QName.new(nil, "successMessage")], [0, 1]],
      ["templateSetFolder", ["SOAP::SOAPString", XSD::QName.new(nil, "templateSetFolder")], [0, 1]],
      ["welcomeMessage", ["SOAP::SOAPString", XSD::QName.new(nil, "welcomeMessage")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::StateTaxRate,
    :schema_type => XSD::QName.new(NsService, "StateTaxRate"),
    :schema_element => [
      ["rate", ["SOAP::SOAPDouble", XSD::QName.new(nil, "rate")], [0, 1]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(nil, "state")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::Declaration,
    :schema_type => XSD::QName.new(NsService, "Declaration"),
    :schema_element => [
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(nil, "accountName")], [0, 1]],
      ["accountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "accountRef")], [0, 1]],
      ["address", ["SOAP::SOAPString", XSD::QName.new(nil, "address")], [0, 1]],
      ["attachments", ["Etapper::Server::ArrayOfAttachment", XSD::QName.new(nil, "attachments")], [0, 1]],
      ["city", ["SOAP::SOAPString", XSD::QName.new(nil, "city")], [0, 1]],
      ["confirmationDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "confirmationDate")], [0, 1]],
      ["country", ["SOAP::SOAPString", XSD::QName.new(nil, "country")], [0, 1]],
      ["date", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "date")], [0, 1]],
      ["endDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "endDate")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]],
      ["note", ["SOAP::SOAPString", XSD::QName.new(nil, "note")], [0, 1]],
      ["postalCode", ["SOAP::SOAPString", XSD::QName.new(nil, "postalCode")], [0, 1]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "ref")], [0, 1]],
      ["startDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "startDate")], [0, 1]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(nil, "state")], [0, 1]],
      ["type", ["SOAP::SOAPInt", XSD::QName.new(nil, "type")], [0, 1]],
      ["verbal", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "verbal")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::DefinedField,
    :schema_type => XSD::QName.new(NsService, "DefinedField"),
    :schema_element => [
      ["applicationTypes", ["Etapper::Server::ArrayOfint", XSD::QName.new(nil, "applicationTypes")], [0, 1]],
      ["category", ["SOAP::SOAPString", XSD::QName.new(nil, "category")], [0, 1]],
      ["dataType", ["SOAP::SOAPInt", XSD::QName.new(nil, "dataType")], [0, 1]],
      ["desc", ["SOAP::SOAPString", XSD::QName.new(nil, "desc")], [0, 1]],
      ["disabled", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "disabled")], [0, 1]],
      ["displayType", ["SOAP::SOAPInt", XSD::QName.new(nil, "displayType")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "ref")], [0, 1]],
      ["required", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "required")], [0, 1]],
      ["securityRights", ["Etapper::Server::ArrayOfDefinedFieldValue", XSD::QName.new(nil, "securityRights")], [0, 1]],
      ["system", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "system")], [0, 1]],
      ["values", ["Etapper::Server::ArrayOfDefinedFieldValue", XSD::QName.new(nil, "values")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::DefinedFieldValue,
    :schema_type => XSD::QName.new(NsService, "DefinedFieldValue"),
    :schema_element => [
      ["desc", ["SOAP::SOAPString", XSD::QName.new(nil, "desc")], [0, 1]],
      ["disabled", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "disabled")], [0, 1]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "ref")], [0, 1]],
      ["value", ["SOAP::SOAPString", XSD::QName.new(nil, "value")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::PagedDefinedFieldsRequest,
    :schema_type => XSD::QName.new(NsService, "PagedDefinedFieldsRequest"),
    :schema_element => [
      ["clearCache", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "clearCache")], [0, 1]],
      ["count", ["SOAP::SOAPInt", XSD::QName.new(nil, "count")], [0, 1]],
      ["start", ["SOAP::SOAPInt", XSD::QName.new(nil, "start")], [0, 1]],
      ["applicationTypes", ["Etapper::Server::ArrayOfint", XSD::QName.new(nil, "applicationTypes")], [0, 1]],
      ["categories", ["Etapper::Server::ArrayOfstring", XSD::QName.new(nil, "categories")], [0, 1]],
      ["includeDisabledFields", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "includeDisabledFields")], [0, 1]],
      ["includeDisabledValues", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "includeDisabledValues")], [0, 1]],
      ["names", ["Etapper::Server::ArrayOfstring", XSD::QName.new(nil, "names")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::DonorLoginPreferences,
    :schema_type => XSD::QName.new(NsService, "DonorLoginPreferences"),
    :schema_element => [
      ["welcomePageHtml", ["SOAP::SOAPString", XSD::QName.new(nil, "welcomePageHtml")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::DuplicateAccountSearch,
    :schema_type => XSD::QName.new(NsService, "DuplicateAccountSearch"),
    :schema_element => [
      ["accountRoleTypes", ["SOAP::SOAPInt", XSD::QName.new(nil, "accountRoleTypes")], [0, 1]],
      ["address", ["SOAP::SOAPString", XSD::QName.new(nil, "address")], [0, 1]],
      ["allowEmailOnlyMatch", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "allowEmailOnlyMatch")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(nil, "email")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]],
      ["phoneNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "phoneNumber")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::PagedDynamicQueryResultsRequest,
    :schema_type => XSD::QName.new(NsService, "PagedDynamicQueryResultsRequest"),
    :schema_element => [
      ["clearCache", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "clearCache")], [0, 1]],
      ["count", ["SOAP::SOAPInt", XSD::QName.new(nil, "count")], [0, 1]],
      ["start", ["SOAP::SOAPInt", XSD::QName.new(nil, "start")], [0, 1]],
      ["accountType", ["SOAP::SOAPInt", XSD::QName.new(nil, "accountType")], [0, 1]],
      ["applicationGroup", ["SOAP::SOAPString", XSD::QName.new(nil, "applicationGroup")], [0, 1]],
      ["baseQuery", ["SOAP::SOAPString", XSD::QName.new(nil, "baseQuery")], [0, 1]],
      ["involvePrivacySettings", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "involvePrivacySettings")], [0, 1]],
      ["matchAny", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "matchAny")], [0, 1]],
      ["personaOption", ["SOAP::SOAPString", XSD::QName.new(nil, "personaOption")], [0, 1]],
      ["returnType", ["SOAP::SOAPInt", XSD::QName.new(nil, "returnType")], [0, 1]],
      ["searchCriteria", ["Etapper::Server::ArrayOfSearchCriteria", XSD::QName.new(nil, "searchCriteria")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::EntityRole,
    :schema_type => XSD::QName.new(NsService, "EntityRole"),
    :schema_element => [
      ["accountRoleType", ["SOAP::SOAPInt", XSD::QName.new(nil, "accountRoleType")], [0, 1]],
      ["definedValues", ["Etapper::Server::ArrayOfDefinedValue", XSD::QName.new(nil, "definedValues")], [0, 1]],
      ["donorRecognitionName", ["SOAP::SOAPString", XSD::QName.new(nil, "donorRecognitionName")], [0, 1]],
      ["donorRecognitionType", ["SOAP::SOAPInt", XSD::QName.new(nil, "donorRecognitionType")], [0, 1]],
      ["donorRoleRef", ["SOAP::SOAPString", XSD::QName.new(nil, "donorRoleRef")], [0, 1]],
      ["emailStatus", ["SOAP::SOAPInt", XSD::QName.new(nil, "emailStatus")], [0, 1]],
      ["householdStatus", ["SOAP::SOAPInt", XSD::QName.new(nil, "householdStatus")], [0, 1]],
      ["id", ["SOAP::SOAPInt", XSD::QName.new(nil, "id")], [0, 1]],
      ["loginId", ["SOAP::SOAPString", XSD::QName.new(nil, "loginId")], [0, 1]],
      ["loyaltyRating", ["SOAP::SOAPInt", XSD::QName.new(nil, "loyaltyRating")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]],
      ["personas", ["Etapper::Server::ArrayOfPersona", XSD::QName.new(nil, "personas")], [0, 1]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "ref")], [0, 1]],
      ["sortName", ["SOAP::SOAPString", XSD::QName.new(nil, "sortName")], [0, 1]],
      ["tributeRoleRef", ["SOAP::SOAPString", XSD::QName.new(nil, "tributeRoleRef")], [0, 1]],
      ["userRoleRef", ["SOAP::SOAPString", XSD::QName.new(nil, "userRoleRef")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::Persona,
    :schema_type => XSD::QName.new(NsService, "Persona"),
    :schema_element => [
      ["address", ["SOAP::SOAPString", XSD::QName.new(nil, "address")], [0, 1]],
      ["city", ["SOAP::SOAPString", XSD::QName.new(nil, "city")], [0, 1]],
      ["country", ["SOAP::SOAPString", XSD::QName.new(nil, "country")], [0, 1]],
      ["county", ["SOAP::SOAPString", XSD::QName.new(nil, "county")], [0, 1]],
      ["definedValues", ["Etapper::Server::ArrayOfDefinedValue", XSD::QName.new(nil, "definedValues")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(nil, "email")], [0, 1]],
      ["longSalutation", ["SOAP::SOAPString", XSD::QName.new(nil, "longSalutation")], [0, 1]],
      ["note", ["SOAP::SOAPString", XSD::QName.new(nil, "note")], [0, 1]],
      ["phones", ["Etapper::Server::ArrayOfPhone", XSD::QName.new(nil, "phones")], [0, 1]],
      ["postalCode", ["SOAP::SOAPString", XSD::QName.new(nil, "postalCode")], [0, 1]],
      ["primary", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "primary")], [0, 1]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "ref")], [0, 1]],
      ["shortSalutation", ["SOAP::SOAPString", XSD::QName.new(nil, "shortSalutation")], [0, 1]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(nil, "state")], [0, 1]],
      ["stickyNoteType", ["SOAP::SOAPString", XSD::QName.new(nil, "stickyNoteType")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")], [0, 1]],
      ["webAddress", ["SOAP::SOAPString", XSD::QName.new(nil, "webAddress")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::PagedExistingQueryResultsRequest,
    :schema_type => XSD::QName.new(NsService, "PagedExistingQueryResultsRequest"),
    :schema_element => [
      ["clearCache", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "clearCache")], [0, 1]],
      ["count", ["SOAP::SOAPInt", XSD::QName.new(nil, "count")], [0, 1]],
      ["start", ["SOAP::SOAPInt", XSD::QName.new(nil, "start")], [0, 1]],
      ["accountType", ["SOAP::SOAPInt", XSD::QName.new(nil, "accountType")], [0, 1]],
      ["query", ["SOAP::SOAPString", XSD::QName.new(nil, "query")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::PagedJournalEntriesRequest,
    :schema_type => XSD::QName.new(NsService, "PagedJournalEntriesRequest"),
    :schema_element => [
      ["clearCache", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "clearCache")], [0, 1]],
      ["count", ["SOAP::SOAPInt", XSD::QName.new(nil, "count")], [0, 1]],
      ["start", ["SOAP::SOAPInt", XSD::QName.new(nil, "start")], [0, 1]],
      ["accountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "accountRef")], [0, 1]],
      ["baseQuery", ["SOAP::SOAPString", XSD::QName.new(nil, "baseQuery")], [0, 1]],
      ["endDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "endDate")], [0, 1]],
      ["startDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "startDate")], [0, 1]],
      ["types", ["Etapper::Server::ArrayOfint", XSD::QName.new(nil, "types")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::JournalSummary,
    :schema_type => XSD::QName.new(NsService, "JournalSummary"),
    :schema_element => [
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(nil, "accountName")], [0, 1]],
      ["accountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "accountRef")], [0, 1]],
      ["lifetimeGivingTotal", ["SOAP::SOAPDouble", XSD::QName.new(nil, "lifetimeGivingTotal")], [0, 1]],
      ["lifetimePledgedTotal", ["SOAP::SOAPDouble", XSD::QName.new(nil, "lifetimePledgedTotal")], [0, 1]],
      ["lifetimeTransactionCount", ["SOAP::SOAPInt", XSD::QName.new(nil, "lifetimeTransactionCount")], [0, 1]],
      ["oneYearAgoGivingAmount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "oneYearAgoGivingAmount")], [0, 1]],
      ["oneYearAgoPledgedAmount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "oneYearAgoPledgedAmount")], [0, 1]],
      ["oneYearAgoTransactionCount", ["SOAP::SOAPInt", XSD::QName.new(nil, "oneYearAgoTransactionCount")], [0, 1]],
      ["yearToDateGivingTotal", ["SOAP::SOAPDouble", XSD::QName.new(nil, "yearToDateGivingTotal")], [0, 1]],
      ["yearToDatePledgedTotal", ["SOAP::SOAPDouble", XSD::QName.new(nil, "yearToDatePledgedTotal")], [0, 1]],
      ["yearToDateTransactionCount", ["SOAP::SOAPInt", XSD::QName.new(nil, "yearToDateTransactionCount")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::PrivacyPreferences,
    :schema_type => XSD::QName.new(NsService, "PrivacyPreferences"),
    :schema_element => [
      ["accountPrivacyPreference", ["Etapper::Server::PrivacyPreference", XSD::QName.new(nil, "accountPrivacyPreference")], [0, 1]],
      ["accountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "accountRef")], [0, 1]],
      ["personaPrivacyPreferences", ["Etapper::Server::ArrayOfPrivacyPreference", XSD::QName.new(nil, "personaPrivacyPreferences")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::PrivacyPreference,
    :schema_type => XSD::QName.new(NsService, "PrivacyPreference"),
    :schema_element => [
      ["accountDefined", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "accountDefined")], [0, 1]],
      ["applicationGroup", ["SOAP::SOAPString", XSD::QName.new(nil, "applicationGroup")], [0, 1]],
      ["hiddenFields", ["Etapper::Server::ArrayOfstring", XSD::QName.new(nil, "hiddenFields")], [0, 1]],
      ["personaType", ["SOAP::SOAPString", XSD::QName.new(nil, "personaType")], [0, 1]],
      ["status", ["SOAP::SOAPInt", XSD::QName.new(nil, "status")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::OrderItem,
    :schema_type => XSD::QName.new(NsService, "OrderItem"),
    :schema_element => [
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(nil, "accountName")], [0, 1]],
      ["accountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "accountRef")], [0, 1]],
      ["amount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "amount")], [0, 1]],
      ["approach", ["SOAP::SOAPString", XSD::QName.new(nil, "approach")], [0, 1]],
      ["attachments", ["Etapper::Server::ArrayOfAttachment", XSD::QName.new(nil, "attachments")], [0, 1]],
      ["campaign", ["SOAP::SOAPString", XSD::QName.new(nil, "campaign")], [0, 1]],
      ["date", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "date")], [0, 1]],
      ["definedValues", ["Etapper::Server::ArrayOfDefinedValue", XSD::QName.new(nil, "definedValues")], [0, 1]],
      ["final", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "final")], [0, 1]],
      ["fund", ["SOAP::SOAPString", XSD::QName.new(nil, "fund")], [0, 1]],
      ["itemName", ["SOAP::SOAPString", XSD::QName.new(nil, "itemName")], [0, 1]],
      ["itemQuantity", ["SOAP::SOAPInt", XSD::QName.new(nil, "itemQuantity")], [0, 1]],
      ["itemRef", ["SOAP::SOAPString", XSD::QName.new(nil, "itemRef")], [0, 1]],
      ["letter", ["SOAP::SOAPString", XSD::QName.new(nil, "letter")], [0, 1]],
      ["note", ["SOAP::SOAPString", XSD::QName.new(nil, "note")], [0, 1]],
      ["offsettingRef", ["SOAP::SOAPString", XSD::QName.new(nil, "offsettingRef")], [0, 1]],
      ["orderInfo", ["Etapper::Server::OrderInfo", XSD::QName.new(nil, "orderInfo")], [0, 1]],
      ["receipt", ["SOAP::SOAPString", XSD::QName.new(nil, "receipt")], [0, 1]],
      ["recognitionName", ["SOAP::SOAPString", XSD::QName.new(nil, "recognitionName")], [0, 1]],
      ["recognitionType", ["SOAP::SOAPInt", XSD::QName.new(nil, "recognitionType")], [0, 1]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "ref")], [0, 1]],
      ["segmentedTransactionRef", ["SOAP::SOAPString", XSD::QName.new(nil, "segmentedTransactionRef")], [0, 1]],
      ["softCredit", ["Etapper::Server::SoftCredit", XSD::QName.new(nil, "softCredit")], [0, 1]],
      ["type", ["SOAP::SOAPInt", XSD::QName.new(nil, "type")], [0, 1]],
      ["valuable", ["Etapper::Server::Valuable", XSD::QName.new(nil, "valuable")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::OrderInfo,
    :schema_type => XSD::QName.new(NsService, "OrderInfo"),
    :schema_element => [
      ["billingAddress", ["SOAP::SOAPString", XSD::QName.new(nil, "billingAddress")], [0, 1]],
      ["billingCity", ["SOAP::SOAPString", XSD::QName.new(nil, "billingCity")], [0, 1]],
      ["billingCountry", ["SOAP::SOAPString", XSD::QName.new(nil, "billingCountry")], [0, 1]],
      ["billingEmail", ["SOAP::SOAPString", XSD::QName.new(nil, "billingEmail")], [0, 1]],
      ["billingName", ["SOAP::SOAPString", XSD::QName.new(nil, "billingName")], [0, 1]],
      ["billingPhone", ["SOAP::SOAPString", XSD::QName.new(nil, "billingPhone")], [0, 1]],
      ["billingPostalCode", ["SOAP::SOAPString", XSD::QName.new(nil, "billingPostalCode")], [0, 1]],
      ["billingState", ["SOAP::SOAPString", XSD::QName.new(nil, "billingState")], [0, 1]],
      ["shippingAddress", ["SOAP::SOAPString", XSD::QName.new(nil, "shippingAddress")], [0, 1]],
      ["shippingCity", ["SOAP::SOAPString", XSD::QName.new(nil, "shippingCity")], [0, 1]],
      ["shippingCountry", ["SOAP::SOAPString", XSD::QName.new(nil, "shippingCountry")], [0, 1]],
      ["shippingName", ["SOAP::SOAPString", XSD::QName.new(nil, "shippingName")], [0, 1]],
      ["shippingPostalCode", ["SOAP::SOAPString", XSD::QName.new(nil, "shippingPostalCode")], [0, 1]],
      ["shippingState", ["SOAP::SOAPString", XSD::QName.new(nil, "shippingState")], [0, 1]],
      ["shippingType", ["SOAP::SOAPInt", XSD::QName.new(nil, "shippingType")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::OrderShipping,
    :schema_type => XSD::QName.new(NsService, "OrderShipping"),
    :schema_element => [
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(nil, "accountName")], [0, 1]],
      ["accountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "accountRef")], [0, 1]],
      ["amount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "amount")], [0, 1]],
      ["approach", ["SOAP::SOAPString", XSD::QName.new(nil, "approach")], [0, 1]],
      ["attachments", ["Etapper::Server::ArrayOfAttachment", XSD::QName.new(nil, "attachments")], [0, 1]],
      ["campaign", ["SOAP::SOAPString", XSD::QName.new(nil, "campaign")], [0, 1]],
      ["date", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "date")], [0, 1]],
      ["definedValues", ["Etapper::Server::ArrayOfDefinedValue", XSD::QName.new(nil, "definedValues")], [0, 1]],
      ["final", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "final")], [0, 1]],
      ["fund", ["SOAP::SOAPString", XSD::QName.new(nil, "fund")], [0, 1]],
      ["letter", ["SOAP::SOAPString", XSD::QName.new(nil, "letter")], [0, 1]],
      ["note", ["SOAP::SOAPString", XSD::QName.new(nil, "note")], [0, 1]],
      ["offsettingRef", ["SOAP::SOAPString", XSD::QName.new(nil, "offsettingRef")], [0, 1]],
      ["receipt", ["SOAP::SOAPString", XSD::QName.new(nil, "receipt")], [0, 1]],
      ["recognitionName", ["SOAP::SOAPString", XSD::QName.new(nil, "recognitionName")], [0, 1]],
      ["recognitionType", ["SOAP::SOAPInt", XSD::QName.new(nil, "recognitionType")], [0, 1]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "ref")], [0, 1]],
      ["segmentedTransactionRef", ["SOAP::SOAPString", XSD::QName.new(nil, "segmentedTransactionRef")], [0, 1]],
      ["softCredit", ["Etapper::Server::SoftCredit", XSD::QName.new(nil, "softCredit")], [0, 1]],
      ["type", ["SOAP::SOAPInt", XSD::QName.new(nil, "type")], [0, 1]],
      ["valuable", ["Etapper::Server::Valuable", XSD::QName.new(nil, "valuable")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::OrderTax,
    :schema_type => XSD::QName.new(NsService, "OrderTax"),
    :schema_element => [
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(nil, "accountName")], [0, 1]],
      ["accountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "accountRef")], [0, 1]],
      ["amount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "amount")], [0, 1]],
      ["approach", ["SOAP::SOAPString", XSD::QName.new(nil, "approach")], [0, 1]],
      ["attachments", ["Etapper::Server::ArrayOfAttachment", XSD::QName.new(nil, "attachments")], [0, 1]],
      ["campaign", ["SOAP::SOAPString", XSD::QName.new(nil, "campaign")], [0, 1]],
      ["date", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "date")], [0, 1]],
      ["definedValues", ["Etapper::Server::ArrayOfDefinedValue", XSD::QName.new(nil, "definedValues")], [0, 1]],
      ["final", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "final")], [0, 1]],
      ["fund", ["SOAP::SOAPString", XSD::QName.new(nil, "fund")], [0, 1]],
      ["letter", ["SOAP::SOAPString", XSD::QName.new(nil, "letter")], [0, 1]],
      ["note", ["SOAP::SOAPString", XSD::QName.new(nil, "note")], [0, 1]],
      ["offsettingRef", ["SOAP::SOAPString", XSD::QName.new(nil, "offsettingRef")], [0, 1]],
      ["receipt", ["SOAP::SOAPString", XSD::QName.new(nil, "receipt")], [0, 1]],
      ["recognitionName", ["SOAP::SOAPString", XSD::QName.new(nil, "recognitionName")], [0, 1]],
      ["recognitionType", ["SOAP::SOAPInt", XSD::QName.new(nil, "recognitionType")], [0, 1]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "ref")], [0, 1]],
      ["segmentedTransactionRef", ["SOAP::SOAPString", XSD::QName.new(nil, "segmentedTransactionRef")], [0, 1]],
      ["softCredit", ["Etapper::Server::SoftCredit", XSD::QName.new(nil, "softCredit")], [0, 1]],
      ["taxRate", ["SOAP::SOAPDouble", XSD::QName.new(nil, "taxRate")], [0, 1]],
      ["taxRegion", ["SOAP::SOAPString", XSD::QName.new(nil, "taxRegion")], [0, 1]],
      ["type", ["SOAP::SOAPInt", XSD::QName.new(nil, "type")], [0, 1]],
      ["valuable", ["Etapper::Server::Valuable", XSD::QName.new(nil, "valuable")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::OrganizationPreferences,
    :schema_type => XSD::QName.new(NsService, "OrganizationPreferences"),
    :schema_element => [
      ["passwordMinimumLength", ["SOAP::SOAPInt", XSD::QName.new(nil, "passwordMinimumLength")], [0, 1]],
      ["passwordRequireComplexity", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "passwordRequireComplexity")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::PhoneAThonList,
    :schema_type => XSD::QName.new(NsService, "PhoneAThonList"),
    :schema_element => [
      ["currentCount", ["SOAP::SOAPInt", XSD::QName.new(nil, "currentCount")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")], [0, 1]],
      ["enabled", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "enabled")], [0, 1]],
      ["initialCount", ["SOAP::SOAPInt", XSD::QName.new(nil, "initialCount")], [0, 1]],
      ["lastGenerated", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "lastGenerated")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "ref")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::QueryResultStats,
    :schema_type => XSD::QName.new(NsService, "QueryResultStats"),
    :schema_element => [
      ["gifted", ["SOAP::SOAPDouble", XSD::QName.new(nil, "gifted")], [0, 1]],
      ["journalEntryCount", ["SOAP::SOAPInt", XSD::QName.new(nil, "journalEntryCount")], [0, 1]],
      ["pledged", ["SOAP::SOAPDouble", XSD::QName.new(nil, "pledged")], [0, 1]],
      ["raised", ["SOAP::SOAPDouble", XSD::QName.new(nil, "raised")], [0, 1]],
      ["received", ["SOAP::SOAPDouble", XSD::QName.new(nil, "received")], [0, 1]],
      ["transactionCount", ["SOAP::SOAPInt", XSD::QName.new(nil, "transactionCount")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::RecurringGiftSchedule,
    :schema_type => XSD::QName.new(NsService, "RecurringGiftSchedule"),
    :schema_element => [
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(nil, "accountName")], [0, 1]],
      ["accountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "accountRef")], [0, 1]],
      ["amount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "amount")], [0, 1]],
      ["approach", ["SOAP::SOAPString", XSD::QName.new(nil, "approach")], [0, 1]],
      ["attachments", ["Etapper::Server::ArrayOfAttachment", XSD::QName.new(nil, "attachments")], [0, 1]],
      ["campaign", ["SOAP::SOAPString", XSD::QName.new(nil, "campaign")], [0, 1]],
      ["date", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "date")], [0, 1]],
      ["definedValues", ["Etapper::Server::ArrayOfDefinedValue", XSD::QName.new(nil, "definedValues")], [0, 1]],
      ["final", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "final")], [0, 1]],
      ["fund", ["SOAP::SOAPString", XSD::QName.new(nil, "fund")], [0, 1]],
      ["letter", ["SOAP::SOAPString", XSD::QName.new(nil, "letter")], [0, 1]],
      ["linkedGiftsAmount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "linkedGiftsAmount")], [0, 1]],
      ["nextGiftAmount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "nextGiftAmount")], [0, 1]],
      ["nextGiftDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "nextGiftDate")], [0, 1]],
      ["nonDeductibleAmount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "nonDeductibleAmount")], [0, 1]],
      ["note", ["SOAP::SOAPString", XSD::QName.new(nil, "note")], [0, 1]],
      ["originalAccountName", ["SOAP::SOAPString", XSD::QName.new(nil, "originalAccountName")], [0, 1]],
      ["originalAccountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "originalAccountRef")], [0, 1]],
      ["originalTransactionRef", ["SOAP::SOAPString", XSD::QName.new(nil, "originalTransactionRef")], [0, 1]],
      ["receipt", ["SOAP::SOAPString", XSD::QName.new(nil, "receipt")], [0, 1]],
      ["recognitionName", ["SOAP::SOAPString", XSD::QName.new(nil, "recognitionName")], [0, 1]],
      ["recognitionType", ["SOAP::SOAPInt", XSD::QName.new(nil, "recognitionType")], [0, 1]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "ref")], [0, 1]],
      ["schedule", ["Etapper::Server::StandardPaymentSchedule", XSD::QName.new(nil, "schedule")], [0, 1]],
      ["scheduledValuable", ["Etapper::Server::Valuable", XSD::QName.new(nil, "scheduledValuable")], [0, 1]],
      ["softCredit", ["Etapper::Server::SoftCredit", XSD::QName.new(nil, "softCredit")], [0, 1]],
      ["tributeAccountName", ["SOAP::SOAPString", XSD::QName.new(nil, "tributeAccountName")], [0, 1]],
      ["tributeAccountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "tributeAccountRef")], [0, 1]],
      ["type", ["SOAP::SOAPInt", XSD::QName.new(nil, "type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::SegmentedDonation,
    :schema_type => XSD::QName.new(NsService, "SegmentedDonation"),
    :schema_element => [
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(nil, "accountName")], [0, 1]],
      ["accountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "accountRef")], [0, 1]],
      ["date", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "date")], [0, 1]],
      ["final", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "final")], [0, 1]],
      ["offsettingRef", ["SOAP::SOAPString", XSD::QName.new(nil, "offsettingRef")], [0, 1]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "ref")], [0, 1]],
      ["segments", ["Etapper::Server::ArrayOfanyType", XSD::QName.new(nil, "segments")], [0, 1]],
      ["totalAmount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "totalAmount")], [0, 1]],
      ["totalNonDeductibleAmount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "totalNonDeductibleAmount")], [0, 1]],
      ["type", ["SOAP::SOAPInt", XSD::QName.new(nil, "type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::SegmentedOrder,
    :schema_type => XSD::QName.new(NsService, "SegmentedOrder"),
    :schema_element => [
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(nil, "accountName")], [0, 1]],
      ["accountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "accountRef")], [0, 1]],
      ["date", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "date")], [0, 1]],
      ["final", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "final")], [0, 1]],
      ["offsettingRef", ["SOAP::SOAPString", XSD::QName.new(nil, "offsettingRef")], [0, 1]],
      ["orderInfo", ["Etapper::Server::OrderInfo", XSD::QName.new(nil, "orderInfo")], [0, 1]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "ref")], [0, 1]],
      ["segments", ["Etapper::Server::ArrayOfanyType", XSD::QName.new(nil, "segments")], [0, 1]],
      ["totalAmount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "totalAmount")], [0, 1]],
      ["type", ["SOAP::SOAPInt", XSD::QName.new(nil, "type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::SegmentedPledge,
    :schema_type => XSD::QName.new(NsService, "SegmentedPledge"),
    :schema_element => [
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(nil, "accountName")], [0, 1]],
      ["accountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "accountRef")], [0, 1]],
      ["consolidatedCustomSchedule", ["Etapper::Server::CustomPaymentSchedule", XSD::QName.new(nil, "consolidatedCustomSchedule")], [0, 1]],
      ["date", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "date")], [0, 1]],
      ["final", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "final")], [0, 1]],
      ["offsettingRef", ["SOAP::SOAPString", XSD::QName.new(nil, "offsettingRef")], [0, 1]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "ref")], [0, 1]],
      ["segments", ["Etapper::Server::ArrayOfanyType", XSD::QName.new(nil, "segments")], [0, 1]],
      ["totalAmount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "totalAmount")], [0, 1]],
      ["totalNonDeductibleAmount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "totalNonDeductibleAmount")], [0, 1]],
      ["type", ["SOAP::SOAPInt", XSD::QName.new(nil, "type")], [0, 1]],
      ["upgraded", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "upgraded")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::TransactionProcessor,
    :schema_type => XSD::QName.new(NsService, "TransactionProcessor"),
    :schema_element => [
      ["default", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "default")], [0, 1]],
      ["disabled", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "disabled")], [0, 1]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "ref")], [0, 1]],
      ["refName", ["SOAP::SOAPString", XSD::QName.new(nil, "refName")], [0, 1]],
      ["type", ["SOAP::SOAPInt", XSD::QName.new(nil, "type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::LinkedTransaction,
    :schema_type => XSD::QName.new(NsService, "LinkedTransaction"),
    :schema_element => [
      ["softCreditAccount", ["Etapper::Server::Account", XSD::QName.new(nil, "softCreditAccount")], [0, 1]],
      ["transaction", [nil, XSD::QName.new(nil, "transaction")], [0, 1]],
      ["tributeAccount", ["Etapper::Server::Account", XSD::QName.new(nil, "tributeAccount")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::AccountChangeRequest,
    :schema_type => XSD::QName.new(NsService, "AccountChangeRequest"),
    :schema_element => [
      ["account", ["Etapper::Server::Account", XSD::QName.new(nil, "account")], [0, 1]],
      ["createChangeNote", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "createChangeNote")], [0, 1]],
      ["createFieldAndValues", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "createFieldAndValues")], [0, 1]],
      ["notificationEmail", ["SOAP::SOAPString", XSD::QName.new(nil, "notificationEmail")], [0, 1]],
      ["update", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "update")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::CartOrderRequest,
    :schema_type => XSD::QName.new(NsService, "CartOrderRequest"),
    :schema_element => [
      ["account", ["Etapper::Server::Account", XSD::QName.new(nil, "account")], [0, 1]],
      ["createFieldAndValues", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "createFieldAndValues")], [0, 1]],
      ["journalEntries", ["Etapper::Server::ArrayOfanyType", XSD::QName.new(nil, "journalEntries")], [0, 1]],
      ["populateDataSource", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "populateDataSource")], [0, 1]],
      ["processor", ["SOAP::SOAPString", XSD::QName.new(nil, "processor")], [0, 1]],
      ["skipSoftErrors", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "skipSoftErrors")], [0, 1]],
      ["softErrorEmail", ["SOAP::SOAPString", XSD::QName.new(nil, "softErrorEmail")], [0, 1]],
      ["validateLicense", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "validateLicense")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::CartOrderResponse,
    :schema_type => XSD::QName.new(NsService, "CartOrderResponse"),
    :schema_element => [
      ["accountNumber", ["SOAP::SOAPInt", XSD::QName.new(nil, "accountNumber")], [0, 1]],
      ["accountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "accountRef")], [0, 1]],
      ["createdNewAccount", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "createdNewAccount")], [0, 1]],
      ["journalEntryRefs", ["Etapper::Server::ArrayOfstring", XSD::QName.new(nil, "journalEntryRefs")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::EcommerceRequest,
    :schema_type => XSD::QName.new(NsService, "EcommerceRequest"),
    :schema_element => [
      ["account", ["Etapper::Server::Account", XSD::QName.new(nil, "account")], [0, 1]],
      ["confirmationMessageFooter", ["SOAP::SOAPString", XSD::QName.new(nil, "confirmationMessageFooter")], [0, 1]],
      ["confirmationMessageHeader", ["SOAP::SOAPString", XSD::QName.new(nil, "confirmationMessageHeader")], [0, 1]],
      ["confirmationSender", ["SOAP::SOAPString", XSD::QName.new(nil, "confirmationSender")], [0, 1]],
      ["confirmationSignature", ["SOAP::SOAPString", XSD::QName.new(nil, "confirmationSignature")], [0, 1]],
      ["confirmationSubject", ["SOAP::SOAPString", XSD::QName.new(nil, "confirmationSubject")], [0, 1]],
      ["createFieldAndValues", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "createFieldAndValues")], [0, 1]],
      ["failureEmail", ["SOAP::SOAPString", XSD::QName.new(nil, "failureEmail")], [0, 1]],
      ["journalEntries", ["Etapper::Server::ArrayOfanyType", XSD::QName.new(nil, "journalEntries")], [0, 1]],
      ["notificationEmail", ["SOAP::SOAPString", XSD::QName.new(nil, "notificationEmail")], [0, 1]],
      ["notificationSubject", ["SOAP::SOAPString", XSD::QName.new(nil, "notificationSubject")], [0, 1]],
      ["populateDataSource", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "populateDataSource")], [0, 1]],
      ["processor", ["SOAP::SOAPString", XSD::QName.new(nil, "processor")], [0, 1]],
      ["skipSoftErrors", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "skipSoftErrors")], [0, 1]],
      ["softErrorEmail", ["SOAP::SOAPString", XSD::QName.new(nil, "softErrorEmail")], [0, 1]],
      ["validateLicense", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "validateLicense")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::EcommerceResponse,
    :schema_type => XSD::QName.new(NsService, "EcommerceResponse"),
    :schema_element => [
      ["accountNumber", ["SOAP::SOAPInt", XSD::QName.new(nil, "accountNumber")], [0, 1]],
      ["accountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "accountRef")], [0, 1]],
      ["createdNewAccount", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "createdNewAccount")], [0, 1]],
      ["journalEntryRefs", ["Etapper::Server::ArrayOfstring", XSD::QName.new(nil, "journalEntryRefs")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::ForgottenPasswordEmailHelpRequest,
    :schema_type => XSD::QName.new(NsService, "ForgottenPasswordEmailHelpRequest"),
    :schema_element => [
      ["baseQuery", ["SOAP::SOAPString", XSD::QName.new(nil, "baseQuery")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(nil, "email")], [0, 1]],
      ["expirationHours", ["SOAP::SOAPInt", XSD::QName.new(nil, "expirationHours")], [0, 1]],
      ["fromEmail", ["SOAP::SOAPString", XSD::QName.new(nil, "fromEmail")], [0, 1]],
      ["loginId", ["SOAP::SOAPString", XSD::QName.new(nil, "loginId")], [0, 1]],
      ["personaOption", ["SOAP::SOAPString", XSD::QName.new(nil, "personaOption")], [0, 1]],
      ["url", ["SOAP::SOAPString", XSD::QName.new(nil, "url")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::ForgottenPasswordResetHelpRequest,
    :schema_type => XSD::QName.new(NsService, "ForgottenPasswordResetHelpRequest"),
    :schema_element => [
      ["code", ["SOAP::SOAPString", XSD::QName.new(nil, "code")], [0, 1]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "ref")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::ProcessTransactionRequest,
    :schema_type => XSD::QName.new(NsService, "ProcessTransactionRequest"),
    :schema_element => [
      ["confirmationMessageFooter", ["SOAP::SOAPString", XSD::QName.new(nil, "confirmationMessageFooter")], [0, 1]],
      ["confirmationMessageHeader", ["SOAP::SOAPString", XSD::QName.new(nil, "confirmationMessageHeader")], [0, 1]],
      ["confirmationSender", ["SOAP::SOAPString", XSD::QName.new(nil, "confirmationSender")], [0, 1]],
      ["confirmationSignature", ["SOAP::SOAPString", XSD::QName.new(nil, "confirmationSignature")], [0, 1]],
      ["confirmationSubject", ["SOAP::SOAPString", XSD::QName.new(nil, "confirmationSubject")], [0, 1]],
      ["createFieldAndValues", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "createFieldAndValues")], [0, 1]],
      ["donorEmail", ["SOAP::SOAPString", XSD::QName.new(nil, "donorEmail")], [0, 1]],
      ["failureEmail", ["SOAP::SOAPString", XSD::QName.new(nil, "failureEmail")], [0, 1]],
      ["notificationEmail", ["SOAP::SOAPString", XSD::QName.new(nil, "notificationEmail")], [0, 1]],
      ["processor", ["SOAP::SOAPString", XSD::QName.new(nil, "processor")], [0, 1]],
      ["transaction", [nil, XSD::QName.new(nil, "transaction")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Etapper::Server::SendEmailRequest,
    :schema_type => XSD::QName.new(NsService, "SendEmailRequest"),
    :schema_element => [
      ["accountRef", ["SOAP::SOAPString", XSD::QName.new(nil, "accountRef")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(nil, "email")], [0, 1]],
      ["htmlMessage", ["SOAP::SOAPString", XSD::QName.new(nil, "htmlMessage")], [0, 1]],
      ["personaOption", ["SOAP::SOAPString", XSD::QName.new(nil, "personaOption")], [0, 1]],
      ["plainMessage", ["SOAP::SOAPString", XSD::QName.new(nil, "plainMessage")], [0, 1]],
      ["sender", ["SOAP::SOAPString", XSD::QName.new(nil, "sender")], [0, 1]],
      ["subject", ["SOAP::SOAPString", XSD::QName.new(nil, "subject")], [0, 1]]
    ]
  )
end

end; end
