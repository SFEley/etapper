require 'xsd/qname'

module Etapper::API


# {etapestryAPI/service}Account
#   accountCreatedDate - SOAP::SOAPDateTime
#   accountDefinedValues - Etapper::API::ArrayOfDefinedValue
#   accountLastModifiedDate - SOAP::SOAPDateTime
#   accountRoleType - SOAP::SOAPInt
#   address - SOAP::SOAPString
#   city - SOAP::SOAPString
#   country - SOAP::SOAPString
#   county - SOAP::SOAPString
#   donorRecognitionName - SOAP::SOAPString
#   donorRecognitionType - SOAP::SOAPInt
#   donorRoleRef - SOAP::SOAPString
#   email - SOAP::SOAPString
#   firstName - SOAP::SOAPString
#   id - SOAP::SOAPInt
#   lastName - SOAP::SOAPString
#   longSalutation - SOAP::SOAPString
#   middleName - SOAP::SOAPString
#   name - SOAP::SOAPString
#   note - SOAP::SOAPString
#   personaCreatedDate - SOAP::SOAPDateTime
#   personaDefinedValues - Etapper::API::ArrayOfDefinedValue
#   personaLastModifiedDate - SOAP::SOAPDateTime
#   personaType - SOAP::SOAPString
#   personaTypes - Etapper::API::ArrayOfstring
#   phones - Etapper::API::ArrayOfPhone
#   postalCode - SOAP::SOAPString
#   primaryPersona - SOAP::SOAPBoolean
#   ref - SOAP::SOAPString
#   shortSalutation - SOAP::SOAPString
#   sortName - SOAP::SOAPString
#   state - SOAP::SOAPString
#   teamRoleRef - SOAP::SOAPString
#   title - SOAP::SOAPString
#   tributeRoleRef - SOAP::SOAPString
#   userRoleRef - SOAP::SOAPString
#   webAddress - SOAP::SOAPString
class Account
  attr_accessor :accountCreatedDate
  attr_accessor :accountDefinedValues
  attr_accessor :accountLastModifiedDate
  attr_accessor :accountRoleType
  attr_accessor :address
  attr_accessor :city
  attr_accessor :country
  attr_accessor :county
  attr_accessor :donorRecognitionName
  attr_accessor :donorRecognitionType
  attr_accessor :donorRoleRef
  attr_accessor :email
  attr_accessor :firstName
  attr_accessor :id
  attr_accessor :lastName
  attr_accessor :longSalutation
  attr_accessor :middleName
  attr_accessor :name
  attr_accessor :note
  attr_accessor :personaCreatedDate
  attr_accessor :personaDefinedValues
  attr_accessor :personaLastModifiedDate
  attr_accessor :personaType
  attr_accessor :personaTypes
  attr_accessor :phones
  attr_accessor :postalCode
  attr_accessor :primaryPersona
  attr_accessor :ref
  attr_accessor :shortSalutation
  attr_accessor :sortName
  attr_accessor :state
  attr_accessor :teamRoleRef
  attr_accessor :title
  attr_accessor :tributeRoleRef
  attr_accessor :userRoleRef
  attr_accessor :webAddress

  def initialize(accountCreatedDate = nil, accountDefinedValues = nil, accountLastModifiedDate = nil, accountRoleType = nil, address = nil, city = nil, country = nil, county = nil, donorRecognitionName = nil, donorRecognitionType = nil, donorRoleRef = nil, email = nil, firstName = nil, id = nil, lastName = nil, longSalutation = nil, middleName = nil, name = nil, note = nil, personaCreatedDate = nil, personaDefinedValues = nil, personaLastModifiedDate = nil, personaType = nil, personaTypes = nil, phones = nil, postalCode = nil, primaryPersona = nil, ref = nil, shortSalutation = nil, sortName = nil, state = nil, teamRoleRef = nil, title = nil, tributeRoleRef = nil, userRoleRef = nil, webAddress = nil)
    @accountCreatedDate = accountCreatedDate
    @accountDefinedValues = accountDefinedValues
    @accountLastModifiedDate = accountLastModifiedDate
    @accountRoleType = accountRoleType
    @address = address
    @city = city
    @country = country
    @county = county
    @donorRecognitionName = donorRecognitionName
    @donorRecognitionType = donorRecognitionType
    @donorRoleRef = donorRoleRef
    @email = email
    @firstName = firstName
    @id = id
    @lastName = lastName
    @longSalutation = longSalutation
    @middleName = middleName
    @name = name
    @note = note
    @personaCreatedDate = personaCreatedDate
    @personaDefinedValues = personaDefinedValues
    @personaLastModifiedDate = personaLastModifiedDate
    @personaType = personaType
    @personaTypes = personaTypes
    @phones = phones
    @postalCode = postalCode
    @primaryPersona = primaryPersona
    @ref = ref
    @shortSalutation = shortSalutation
    @sortName = sortName
    @state = state
    @teamRoleRef = teamRoleRef
    @title = title
    @tributeRoleRef = tributeRoleRef
    @userRoleRef = userRoleRef
    @webAddress = webAddress
  end
end

# {etapestryAPI/service}DefinedValue
#   dataType - SOAP::SOAPInt
#   displayType - SOAP::SOAPInt
#   fieldName - SOAP::SOAPString
#   fieldRef - SOAP::SOAPString
#   value - SOAP::SOAPString
#   valueRef - SOAP::SOAPString
class DefinedValue
  attr_accessor :dataType
  attr_accessor :displayType
  attr_accessor :fieldName
  attr_accessor :fieldRef
  attr_accessor :value
  attr_accessor :valueRef

  def initialize(dataType = nil, displayType = nil, fieldName = nil, fieldRef = nil, value = nil, valueRef = nil)
    @dataType = dataType
    @displayType = displayType
    @fieldName = fieldName
    @fieldRef = fieldRef
    @value = value
    @valueRef = valueRef
  end
end

# {etapestryAPI/service}Phone
#   number - SOAP::SOAPString
#   type - SOAP::SOAPString
class Phone
  attr_accessor :number
  attr_accessor :type

  def initialize(number = nil, type = nil)
    @number = number
    @type = type
  end
end

# {etapestryAPI/service}Gift
#   accountName - SOAP::SOAPString
#   accountRef - SOAP::SOAPString
#   amount - SOAP::SOAPDouble
#   approach - SOAP::SOAPString
#   attachments - Etapper::API::ArrayOfAttachment
#   campaign - SOAP::SOAPString
#   createdDate - SOAP::SOAPDateTime
#   date - SOAP::SOAPDateTime
#   definedValues - Etapper::API::ArrayOfDefinedValue
#   final - SOAP::SOAPBoolean
#   fund - SOAP::SOAPString
#   fundraiser - SOAP::SOAPString
#   lastModifiedDate - SOAP::SOAPDateTime
#   letter - SOAP::SOAPString
#   nonDeductibleAmount - SOAP::SOAPDouble
#   note - SOAP::SOAPString
#   offsettingRef - SOAP::SOAPString
#   orderDetail - Etapper::API::OrderDetail
#   orderInfo - Etapper::API::OrderInfo
#   originalAccountName - SOAP::SOAPString
#   originalAccountRef - SOAP::SOAPString
#   originalTransactionRef - SOAP::SOAPString
#   receipt - SOAP::SOAPString
#   recognitionName - SOAP::SOAPString
#   recognitionType - SOAP::SOAPInt
#   ref - SOAP::SOAPString
#   segmentedTransactionRef - SOAP::SOAPString
#   softCredit - Etapper::API::SoftCredit
#   tributeAccountName - SOAP::SOAPString
#   tributeAccountRef - SOAP::SOAPString
#   type - SOAP::SOAPInt
#   valuable - Etapper::API::Valuable
class Gift
  attr_accessor :accountName
  attr_accessor :accountRef
  attr_accessor :amount
  attr_accessor :approach
  attr_accessor :attachments
  attr_accessor :campaign
  attr_accessor :createdDate
  attr_accessor :date
  attr_accessor :definedValues
  attr_accessor :final
  attr_accessor :fund
  attr_accessor :fundraiser
  attr_accessor :lastModifiedDate
  attr_accessor :letter
  attr_accessor :nonDeductibleAmount
  attr_accessor :note
  attr_accessor :offsettingRef
  attr_accessor :orderDetail
  attr_accessor :orderInfo
  attr_accessor :originalAccountName
  attr_accessor :originalAccountRef
  attr_accessor :originalTransactionRef
  attr_accessor :receipt
  attr_accessor :recognitionName
  attr_accessor :recognitionType
  attr_accessor :ref
  attr_accessor :segmentedTransactionRef
  attr_accessor :softCredit
  attr_accessor :tributeAccountName
  attr_accessor :tributeAccountRef
  attr_accessor :type
  attr_accessor :valuable

  def initialize(accountName = nil, accountRef = nil, amount = nil, approach = nil, attachments = nil, campaign = nil, createdDate = nil, date = nil, definedValues = nil, final = nil, fund = nil, fundraiser = nil, lastModifiedDate = nil, letter = nil, nonDeductibleAmount = nil, note = nil, offsettingRef = nil, orderDetail = nil, orderInfo = nil, originalAccountName = nil, originalAccountRef = nil, originalTransactionRef = nil, receipt = nil, recognitionName = nil, recognitionType = nil, ref = nil, segmentedTransactionRef = nil, softCredit = nil, tributeAccountName = nil, tributeAccountRef = nil, type = nil, valuable = nil)
    @accountName = accountName
    @accountRef = accountRef
    @amount = amount
    @approach = approach
    @attachments = attachments
    @campaign = campaign
    @createdDate = createdDate
    @date = date
    @definedValues = definedValues
    @final = final
    @fund = fund
    @fundraiser = fundraiser
    @lastModifiedDate = lastModifiedDate
    @letter = letter
    @nonDeductibleAmount = nonDeductibleAmount
    @note = note
    @offsettingRef = offsettingRef
    @orderDetail = orderDetail
    @orderInfo = orderInfo
    @originalAccountName = originalAccountName
    @originalAccountRef = originalAccountRef
    @originalTransactionRef = originalTransactionRef
    @receipt = receipt
    @recognitionName = recognitionName
    @recognitionType = recognitionType
    @ref = ref
    @segmentedTransactionRef = segmentedTransactionRef
    @softCredit = softCredit
    @tributeAccountName = tributeAccountName
    @tributeAccountRef = tributeAccountRef
    @type = type
    @valuable = valuable
  end
end

# {etapestryAPI/service}Attachment
#   date - SOAP::SOAPDateTime
#   fileContent - SOAP::SOAPBase64
#   filename - SOAP::SOAPString
#   mimeType - SOAP::SOAPString
#   ref - SOAP::SOAPString
class Attachment
  attr_accessor :date
  attr_accessor :fileContent
  attr_accessor :filename
  attr_accessor :mimeType
  attr_accessor :ref

  def initialize(date = nil, fileContent = nil, filename = nil, mimeType = nil, ref = nil)
    @date = date
    @fileContent = fileContent
    @filename = filename
    @mimeType = mimeType
    @ref = ref
  end
end

# {etapestryAPI/service}OrderDetail
#   itemName - SOAP::SOAPString
#   itemRef - SOAP::SOAPString
#   quantity - SOAP::SOAPInt
class OrderDetail
  attr_accessor :itemName
  attr_accessor :itemRef
  attr_accessor :quantity

  def initialize(itemName = nil, itemRef = nil, quantity = nil)
    @itemName = itemName
    @itemRef = itemRef
    @quantity = quantity
  end
end

# {etapestryAPI/service}OrderInfo
#   billingAddress - SOAP::SOAPString
#   billingCity - SOAP::SOAPString
#   billingCountry - SOAP::SOAPString
#   billingEmail - SOAP::SOAPString
#   billingName - SOAP::SOAPString
#   billingPhone - SOAP::SOAPString
#   billingPostalCode - SOAP::SOAPString
#   billingState - SOAP::SOAPString
#   shippingAddress - SOAP::SOAPString
#   shippingCity - SOAP::SOAPString
#   shippingCountry - SOAP::SOAPString
#   shippingName - SOAP::SOAPString
#   shippingPostalCode - SOAP::SOAPString
#   shippingState - SOAP::SOAPString
#   shippingType - SOAP::SOAPInt
class OrderInfo
  attr_accessor :billingAddress
  attr_accessor :billingCity
  attr_accessor :billingCountry
  attr_accessor :billingEmail
  attr_accessor :billingName
  attr_accessor :billingPhone
  attr_accessor :billingPostalCode
  attr_accessor :billingState
  attr_accessor :shippingAddress
  attr_accessor :shippingCity
  attr_accessor :shippingCountry
  attr_accessor :shippingName
  attr_accessor :shippingPostalCode
  attr_accessor :shippingState
  attr_accessor :shippingType

  def initialize(billingAddress = nil, billingCity = nil, billingCountry = nil, billingEmail = nil, billingName = nil, billingPhone = nil, billingPostalCode = nil, billingState = nil, shippingAddress = nil, shippingCity = nil, shippingCountry = nil, shippingName = nil, shippingPostalCode = nil, shippingState = nil, shippingType = nil)
    @billingAddress = billingAddress
    @billingCity = billingCity
    @billingCountry = billingCountry
    @billingEmail = billingEmail
    @billingName = billingName
    @billingPhone = billingPhone
    @billingPostalCode = billingPostalCode
    @billingState = billingState
    @shippingAddress = shippingAddress
    @shippingCity = shippingCity
    @shippingCountry = shippingCountry
    @shippingName = shippingName
    @shippingPostalCode = shippingPostalCode
    @shippingState = shippingState
    @shippingType = shippingType
  end
end

# {etapestryAPI/service}SoftCredit
#   accountName - SOAP::SOAPString
#   accountRef - SOAP::SOAPString
#   amount - SOAP::SOAPDouble
#   approach - SOAP::SOAPString
#   campaign - SOAP::SOAPString
#   createdDate - SOAP::SOAPDateTime
#   date - SOAP::SOAPDateTime
#   final - SOAP::SOAPBoolean
#   fund - SOAP::SOAPString
#   hardCreditAccountName - SOAP::SOAPString
#   hardCreditAccountRef - SOAP::SOAPString
#   hardCreditRef - SOAP::SOAPString
#   lastModifiedDate - SOAP::SOAPDateTime
#   letter - SOAP::SOAPString
#   note - SOAP::SOAPString
#   ref - SOAP::SOAPString
#   type - SOAP::SOAPInt
class SoftCredit
  attr_accessor :accountName
  attr_accessor :accountRef
  attr_accessor :amount
  attr_accessor :approach
  attr_accessor :campaign
  attr_accessor :createdDate
  attr_accessor :date
  attr_accessor :final
  attr_accessor :fund
  attr_accessor :hardCreditAccountName
  attr_accessor :hardCreditAccountRef
  attr_accessor :hardCreditRef
  attr_accessor :lastModifiedDate
  attr_accessor :letter
  attr_accessor :note
  attr_accessor :ref
  attr_accessor :type

  def initialize(accountName = nil, accountRef = nil, amount = nil, approach = nil, campaign = nil, createdDate = nil, date = nil, final = nil, fund = nil, hardCreditAccountName = nil, hardCreditAccountRef = nil, hardCreditRef = nil, lastModifiedDate = nil, letter = nil, note = nil, ref = nil, type = nil)
    @accountName = accountName
    @accountRef = accountRef
    @amount = amount
    @approach = approach
    @campaign = campaign
    @createdDate = createdDate
    @date = date
    @final = final
    @fund = fund
    @hardCreditAccountName = hardCreditAccountName
    @hardCreditAccountRef = hardCreditAccountRef
    @hardCreditRef = hardCreditRef
    @lastModifiedDate = lastModifiedDate
    @letter = letter
    @note = note
    @ref = ref
    @type = type
  end
end

# {etapestryAPI/service}Valuable
#   bond - Etapper::API::Bond
#   cash - Etapper::API::Cash
#   check - Etapper::API::Check
#   creditCard - Etapper::API::CreditCard
#   electronicFundsTransfer - Etapper::API::ElectronicFundsTransfer
#   inKind - Etapper::API::InKind
#   insurance - Etapper::API::Insurance
#   realEstate - Etapper::API::RealEstate
#   stock - Etapper::API::Stock
#   type - SOAP::SOAPInt
class Valuable
  attr_accessor :bond
  attr_accessor :cash
  attr_accessor :check
  attr_accessor :creditCard
  attr_accessor :electronicFundsTransfer
  attr_accessor :inKind
  attr_accessor :insurance
  attr_accessor :realEstate
  attr_accessor :stock
  attr_accessor :type

  def initialize(bond = nil, cash = nil, check = nil, creditCard = nil, electronicFundsTransfer = nil, inKind = nil, insurance = nil, realEstate = nil, stock = nil, type = nil)
    @bond = bond
    @cash = cash
    @check = check
    @creditCard = creditCard
    @electronicFundsTransfer = electronicFundsTransfer
    @inKind = inKind
    @insurance = insurance
    @realEstate = realEstate
    @stock = stock
    @type = type
  end
end

# {etapestryAPI/service}Bond
#   actualValue - SOAP::SOAPDouble
#   dateCashed - SOAP::SOAPDateTime
#   issuingEntity - SOAP::SOAPString
#   maturityDate - SOAP::SOAPDateTime
#   note - SOAP::SOAPString
class Bond
  attr_accessor :actualValue
  attr_accessor :dateCashed
  attr_accessor :issuingEntity
  attr_accessor :maturityDate
  attr_accessor :note

  def initialize(actualValue = nil, dateCashed = nil, issuingEntity = nil, maturityDate = nil, note = nil)
    @actualValue = actualValue
    @dateCashed = dateCashed
    @issuingEntity = issuingEntity
    @maturityDate = maturityDate
    @note = note
  end
end

# {etapestryAPI/service}Cash
#   note - SOAP::SOAPString
class Cash
  attr_accessor :note

  def initialize(note = nil)
    @note = note
  end
end

# {etapestryAPI/service}Check
#   account - SOAP::SOAPString
#   bank - SOAP::SOAPString
#   date - SOAP::SOAPDateTime
#   note - SOAP::SOAPString
#   number - SOAP::SOAPString
#   payee - SOAP::SOAPString
#   signator - SOAP::SOAPString
class Check
  attr_accessor :account
  attr_accessor :bank
  attr_accessor :date
  attr_accessor :note
  attr_accessor :number
  attr_accessor :payee
  attr_accessor :signator

  def initialize(account = nil, bank = nil, date = nil, note = nil, number = nil, payee = nil, signator = nil)
    @account = account
    @bank = bank
    @date = date
    @note = note
    @number = number
    @payee = payee
    @signator = signator
  end
end

# {etapestryAPI/service}CreditCard
#   authorizationCode - SOAP::SOAPString
#   cardType - SOAP::SOAPString
#   cvv2 - SOAP::SOAPString
#   expirationMonth - SOAP::SOAPInt
#   expirationYear - SOAP::SOAPInt
#   firstName - SOAP::SOAPString
#   lastName - SOAP::SOAPString
#   middleName - SOAP::SOAPString
#   nameOnCard - SOAP::SOAPString
#   note - SOAP::SOAPString
#   number - SOAP::SOAPString
class CreditCard
  attr_accessor :authorizationCode
  attr_accessor :cardType
  attr_accessor :cvv2
  attr_accessor :expirationMonth
  attr_accessor :expirationYear
  attr_accessor :firstName
  attr_accessor :lastName
  attr_accessor :middleName
  attr_accessor :nameOnCard
  attr_accessor :note
  attr_accessor :number

  def initialize(authorizationCode = nil, cardType = nil, cvv2 = nil, expirationMonth = nil, expirationYear = nil, firstName = nil, lastName = nil, middleName = nil, nameOnCard = nil, note = nil, number = nil)
    @authorizationCode = authorizationCode
    @cardType = cardType
    @cvv2 = cvv2
    @expirationMonth = expirationMonth
    @expirationYear = expirationYear
    @firstName = firstName
    @lastName = lastName
    @middleName = middleName
    @nameOnCard = nameOnCard
    @note = note
    @number = number
  end
end

# {etapestryAPI/service}ElectronicFundsTransfer
#   accountNumber - SOAP::SOAPString
#   accountType - SOAP::SOAPInt
#   authorizationCode - SOAP::SOAPString
#   bank - SOAP::SOAPString
#   dateOfBirth - SOAP::SOAPDateTime
#   driversLicenseNumber - SOAP::SOAPString
#   driversLicenseState - SOAP::SOAPString
#   firstName - SOAP::SOAPString
#   lastName - SOAP::SOAPString
#   middleName - SOAP::SOAPString
#   note - SOAP::SOAPString
#   processDate - SOAP::SOAPDateTime
#   routingNumber - SOAP::SOAPString
#   ssn - SOAP::SOAPString
class ElectronicFundsTransfer
  attr_accessor :accountNumber
  attr_accessor :accountType
  attr_accessor :authorizationCode
  attr_accessor :bank
  attr_accessor :dateOfBirth
  attr_accessor :driversLicenseNumber
  attr_accessor :driversLicenseState
  attr_accessor :firstName
  attr_accessor :lastName
  attr_accessor :middleName
  attr_accessor :note
  attr_accessor :processDate
  attr_accessor :routingNumber
  attr_accessor :ssn

  def initialize(accountNumber = nil, accountType = nil, authorizationCode = nil, bank = nil, dateOfBirth = nil, driversLicenseNumber = nil, driversLicenseState = nil, firstName = nil, lastName = nil, middleName = nil, note = nil, processDate = nil, routingNumber = nil, ssn = nil)
    @accountNumber = accountNumber
    @accountType = accountType
    @authorizationCode = authorizationCode
    @bank = bank
    @dateOfBirth = dateOfBirth
    @driversLicenseNumber = driversLicenseNumber
    @driversLicenseState = driversLicenseState
    @firstName = firstName
    @lastName = lastName
    @middleName = middleName
    @note = note
    @processDate = processDate
    @routingNumber = routingNumber
    @ssn = ssn
  end
end

# {etapestryAPI/service}InKind
#   note - SOAP::SOAPString
#   saleDate - SOAP::SOAPDateTime
#   saleValue - SOAP::SOAPDouble
class InKind
  attr_accessor :note
  attr_accessor :saleDate
  attr_accessor :saleValue

  def initialize(note = nil, saleDate = nil, saleValue = nil)
    @note = note
    @saleDate = saleDate
    @saleValue = saleValue
  end
end

# {etapestryAPI/service}Insurance
#   beneficiary - SOAP::SOAPString
#   insurer - SOAP::SOAPString
#   lengthOfPolicyAgreement - SOAP::SOAPString
#   note - SOAP::SOAPString
#   organizationPayingPremiums - SOAP::SOAPBoolean
#   policyNumber - SOAP::SOAPString
#   premiumAmount - SOAP::SOAPDouble
#   premiumFrequency - SOAP::SOAPInt
#   surrenderDate - SOAP::SOAPDateTime
#   surrenderValue - SOAP::SOAPDouble
class Insurance
  attr_accessor :beneficiary
  attr_accessor :insurer
  attr_accessor :lengthOfPolicyAgreement
  attr_accessor :note
  attr_accessor :organizationPayingPremiums
  attr_accessor :policyNumber
  attr_accessor :premiumAmount
  attr_accessor :premiumFrequency
  attr_accessor :surrenderDate
  attr_accessor :surrenderValue

  def initialize(beneficiary = nil, insurer = nil, lengthOfPolicyAgreement = nil, note = nil, organizationPayingPremiums = nil, policyNumber = nil, premiumAmount = nil, premiumFrequency = nil, surrenderDate = nil, surrenderValue = nil)
    @beneficiary = beneficiary
    @insurer = insurer
    @lengthOfPolicyAgreement = lengthOfPolicyAgreement
    @note = note
    @organizationPayingPremiums = organizationPayingPremiums
    @policyNumber = policyNumber
    @premiumAmount = premiumAmount
    @premiumFrequency = premiumFrequency
    @surrenderDate = surrenderDate
    @surrenderValue = surrenderValue
  end
end

# {etapestryAPI/service}RealEstate
#   location - SOAP::SOAPString
#   note - SOAP::SOAPString
#   realEstateType - SOAP::SOAPString
#   saleDate - SOAP::SOAPDateTime
#   saleValue - SOAP::SOAPDouble
#   size - SOAP::SOAPString
#   taxParcelNumber - SOAP::SOAPString
class RealEstate
  attr_accessor :location
  attr_accessor :note
  attr_accessor :realEstateType
  attr_accessor :saleDate
  attr_accessor :saleValue
  attr_accessor :size
  attr_accessor :taxParcelNumber

  def initialize(location = nil, note = nil, realEstateType = nil, saleDate = nil, saleValue = nil, size = nil, taxParcelNumber = nil)
    @location = location
    @note = note
    @realEstateType = realEstateType
    @saleDate = saleDate
    @saleValue = saleValue
    @size = size
    @taxParcelNumber = taxParcelNumber
  end
end

# {etapestryAPI/service}Stock
#   brokerName - SOAP::SOAPString
#   brokerageFee - SOAP::SOAPDouble
#   company - SOAP::SOAPString
#   note - SOAP::SOAPString
#   numberOfShares - SOAP::SOAPDouble
#   pricePerShare - SOAP::SOAPDouble
#   saleDate - SOAP::SOAPDateTime
#   salePricePerShare - SOAP::SOAPDouble
#   ticker - SOAP::SOAPString
class Stock
  attr_accessor :brokerName
  attr_accessor :brokerageFee
  attr_accessor :company
  attr_accessor :note
  attr_accessor :numberOfShares
  attr_accessor :pricePerShare
  attr_accessor :saleDate
  attr_accessor :salePricePerShare
  attr_accessor :ticker

  def initialize(brokerName = nil, brokerageFee = nil, company = nil, note = nil, numberOfShares = nil, pricePerShare = nil, saleDate = nil, salePricePerShare = nil, ticker = nil)
    @brokerName = brokerName
    @brokerageFee = brokerageFee
    @company = company
    @note = note
    @numberOfShares = numberOfShares
    @pricePerShare = pricePerShare
    @saleDate = saleDate
    @salePricePerShare = salePricePerShare
    @ticker = ticker
  end
end

# {etapestryAPI/service}Payment
#   accountName - SOAP::SOAPString
#   accountRef - SOAP::SOAPString
#   amount - SOAP::SOAPDouble
#   approach - SOAP::SOAPString
#   attachments - Etapper::API::ArrayOfAttachment
#   campaign - SOAP::SOAPString
#   createdDate - SOAP::SOAPDateTime
#   date - SOAP::SOAPDateTime
#   definedValues - Etapper::API::ArrayOfDefinedValue
#   final - SOAP::SOAPBoolean
#   fund - SOAP::SOAPString
#   fundraiser - SOAP::SOAPString
#   lastModifiedDate - SOAP::SOAPDateTime
#   letter - SOAP::SOAPString
#   note - SOAP::SOAPString
#   offsettingRef - SOAP::SOAPString
#   originalAccountName - SOAP::SOAPString
#   originalAccountRef - SOAP::SOAPString
#   originalTransactionRef - SOAP::SOAPString
#   pledgeRef - SOAP::SOAPString
#   receipt - SOAP::SOAPString
#   recognitionName - SOAP::SOAPString
#   recognitionType - SOAP::SOAPInt
#   ref - SOAP::SOAPString
#   segmentedTransactionRef - SOAP::SOAPString
#   softCredit - Etapper::API::SoftCredit
#   tributeAccountName - SOAP::SOAPString
#   tributeAccountRef - SOAP::SOAPString
#   type - SOAP::SOAPInt
#   valuable - Etapper::API::Valuable
class Payment
  attr_accessor :accountName
  attr_accessor :accountRef
  attr_accessor :amount
  attr_accessor :approach
  attr_accessor :attachments
  attr_accessor :campaign
  attr_accessor :createdDate
  attr_accessor :date
  attr_accessor :definedValues
  attr_accessor :final
  attr_accessor :fund
  attr_accessor :fundraiser
  attr_accessor :lastModifiedDate
  attr_accessor :letter
  attr_accessor :note
  attr_accessor :offsettingRef
  attr_accessor :originalAccountName
  attr_accessor :originalAccountRef
  attr_accessor :originalTransactionRef
  attr_accessor :pledgeRef
  attr_accessor :receipt
  attr_accessor :recognitionName
  attr_accessor :recognitionType
  attr_accessor :ref
  attr_accessor :segmentedTransactionRef
  attr_accessor :softCredit
  attr_accessor :tributeAccountName
  attr_accessor :tributeAccountRef
  attr_accessor :type
  attr_accessor :valuable

  def initialize(accountName = nil, accountRef = nil, amount = nil, approach = nil, attachments = nil, campaign = nil, createdDate = nil, date = nil, definedValues = nil, final = nil, fund = nil, fundraiser = nil, lastModifiedDate = nil, letter = nil, note = nil, offsettingRef = nil, originalAccountName = nil, originalAccountRef = nil, originalTransactionRef = nil, pledgeRef = nil, receipt = nil, recognitionName = nil, recognitionType = nil, ref = nil, segmentedTransactionRef = nil, softCredit = nil, tributeAccountName = nil, tributeAccountRef = nil, type = nil, valuable = nil)
    @accountName = accountName
    @accountRef = accountRef
    @amount = amount
    @approach = approach
    @attachments = attachments
    @campaign = campaign
    @createdDate = createdDate
    @date = date
    @definedValues = definedValues
    @final = final
    @fund = fund
    @fundraiser = fundraiser
    @lastModifiedDate = lastModifiedDate
    @letter = letter
    @note = note
    @offsettingRef = offsettingRef
    @originalAccountName = originalAccountName
    @originalAccountRef = originalAccountRef
    @originalTransactionRef = originalTransactionRef
    @pledgeRef = pledgeRef
    @receipt = receipt
    @recognitionName = recognitionName
    @recognitionType = recognitionType
    @ref = ref
    @segmentedTransactionRef = segmentedTransactionRef
    @softCredit = softCredit
    @tributeAccountName = tributeAccountName
    @tributeAccountRef = tributeAccountRef
    @type = type
    @valuable = valuable
  end
end

# {etapestryAPI/service}Contact
#   accountName - SOAP::SOAPString
#   accountRef - SOAP::SOAPString
#   attachments - Etapper::API::ArrayOfAttachment
#   createdDate - SOAP::SOAPDateTime
#   date - SOAP::SOAPDateTime
#   definedValues - Etapper::API::ArrayOfDefinedValue
#   final - SOAP::SOAPBoolean
#   lastModifiedDate - SOAP::SOAPDateTime
#   method - SOAP::SOAPString
#   note - SOAP::SOAPString
#   ref - SOAP::SOAPString
#   subject - SOAP::SOAPString
#   type - SOAP::SOAPInt
class Contact
  attr_accessor :accountName
  attr_accessor :accountRef
  attr_accessor :attachments
  attr_accessor :createdDate
  attr_accessor :date
  attr_accessor :definedValues
  attr_accessor :final
  attr_accessor :lastModifiedDate
  attr_accessor :method
  attr_accessor :note
  attr_accessor :ref
  attr_accessor :subject
  attr_accessor :type

  def initialize(accountName = nil, accountRef = nil, attachments = nil, createdDate = nil, date = nil, definedValues = nil, final = nil, lastModifiedDate = nil, method = nil, note = nil, ref = nil, subject = nil, type = nil)
    @accountName = accountName
    @accountRef = accountRef
    @attachments = attachments
    @createdDate = createdDate
    @date = date
    @definedValues = definedValues
    @final = final
    @lastModifiedDate = lastModifiedDate
    @method = method
    @note = note
    @ref = ref
    @subject = subject
    @type = type
  end
end

# {etapestryAPI/service}Disbursement
#   accountName - SOAP::SOAPString
#   accountRef - SOAP::SOAPString
#   amount - SOAP::SOAPDouble
#   approach - SOAP::SOAPString
#   attachments - Etapper::API::ArrayOfAttachment
#   campaign - SOAP::SOAPString
#   createdDate - SOAP::SOAPDateTime
#   date - SOAP::SOAPDateTime
#   definedValues - Etapper::API::ArrayOfDefinedValue
#   final - SOAP::SOAPBoolean
#   fund - SOAP::SOAPString
#   fundraiser - SOAP::SOAPString
#   lastModifiedDate - SOAP::SOAPDateTime
#   letter - SOAP::SOAPString
#   note - SOAP::SOAPString
#   offsettingRef - SOAP::SOAPString
#   receipt - SOAP::SOAPString
#   ref - SOAP::SOAPString
#   type - SOAP::SOAPInt
#   valuable - Etapper::API::Valuable
class Disbursement
  attr_accessor :accountName
  attr_accessor :accountRef
  attr_accessor :amount
  attr_accessor :approach
  attr_accessor :attachments
  attr_accessor :campaign
  attr_accessor :createdDate
  attr_accessor :date
  attr_accessor :definedValues
  attr_accessor :final
  attr_accessor :fund
  attr_accessor :fundraiser
  attr_accessor :lastModifiedDate
  attr_accessor :letter
  attr_accessor :note
  attr_accessor :offsettingRef
  attr_accessor :receipt
  attr_accessor :ref
  attr_accessor :type
  attr_accessor :valuable

  def initialize(accountName = nil, accountRef = nil, amount = nil, approach = nil, attachments = nil, campaign = nil, createdDate = nil, date = nil, definedValues = nil, final = nil, fund = nil, fundraiser = nil, lastModifiedDate = nil, letter = nil, note = nil, offsettingRef = nil, receipt = nil, ref = nil, type = nil, valuable = nil)
    @accountName = accountName
    @accountRef = accountRef
    @amount = amount
    @approach = approach
    @attachments = attachments
    @campaign = campaign
    @createdDate = createdDate
    @date = date
    @definedValues = definedValues
    @final = final
    @fund = fund
    @fundraiser = fundraiser
    @lastModifiedDate = lastModifiedDate
    @letter = letter
    @note = note
    @offsettingRef = offsettingRef
    @receipt = receipt
    @ref = ref
    @type = type
    @valuable = valuable
  end
end

# {etapestryAPI/service}LoginCredentialsRequest
#   account - Etapper::API::Account
#   confirmationLoginURL - SOAP::SOAPString
#   confirmationMessageFooter - SOAP::SOAPString
#   confirmationMessageHeader - SOAP::SOAPString
#   confirmationSender - SOAP::SOAPString
#   confirmationSignature - SOAP::SOAPString
#   confirmationSubject - SOAP::SOAPString
#   duplicateSearchCriteria - Etapper::API::ArrayOfSearchCriteria
#   duplicateSearchQuery - SOAP::SOAPString
#   failureEmail - SOAP::SOAPString
#   loginId - SOAP::SOAPString
#   matchHasLoginIdActionType - SOAP::SOAPInt
#   matchMultipleActionType - SOAP::SOAPInt
#   matchNotFoundActionType - SOAP::SOAPInt
#   notificationEmail - SOAP::SOAPString
#   password - SOAP::SOAPString
class LoginCredentialsRequest
  attr_accessor :account
  attr_accessor :confirmationLoginURL
  attr_accessor :confirmationMessageFooter
  attr_accessor :confirmationMessageHeader
  attr_accessor :confirmationSender
  attr_accessor :confirmationSignature
  attr_accessor :confirmationSubject
  attr_accessor :duplicateSearchCriteria
  attr_accessor :duplicateSearchQuery
  attr_accessor :failureEmail
  attr_accessor :loginId
  attr_accessor :matchHasLoginIdActionType
  attr_accessor :matchMultipleActionType
  attr_accessor :matchNotFoundActionType
  attr_accessor :notificationEmail
  attr_accessor :password

  def initialize(account = nil, confirmationLoginURL = nil, confirmationMessageFooter = nil, confirmationMessageHeader = nil, confirmationSender = nil, confirmationSignature = nil, confirmationSubject = nil, duplicateSearchCriteria = nil, duplicateSearchQuery = nil, failureEmail = nil, loginId = nil, matchHasLoginIdActionType = nil, matchMultipleActionType = nil, matchNotFoundActionType = nil, notificationEmail = nil, password = nil)
    @account = account
    @confirmationLoginURL = confirmationLoginURL
    @confirmationMessageFooter = confirmationMessageFooter
    @confirmationMessageHeader = confirmationMessageHeader
    @confirmationSender = confirmationSender
    @confirmationSignature = confirmationSignature
    @confirmationSubject = confirmationSubject
    @duplicateSearchCriteria = duplicateSearchCriteria
    @duplicateSearchQuery = duplicateSearchQuery
    @failureEmail = failureEmail
    @loginId = loginId
    @matchHasLoginIdActionType = matchHasLoginIdActionType
    @matchMultipleActionType = matchMultipleActionType
    @matchNotFoundActionType = matchNotFoundActionType
    @notificationEmail = notificationEmail
    @password = password
  end
end

# {etapestryAPI/service}SearchCriteria
#   action - SOAP::SOAPString
#   field - SOAP::SOAPString
#   type - SOAP::SOAPString
#   values - Etapper::API::ArrayOfstring
class SearchCriteria
  attr_accessor :action
  attr_accessor :field
  attr_accessor :type
  attr_accessor :values

  def initialize(action = nil, field = nil, type = nil, values = nil)
    @action = action
    @field = field
    @type = type
    @values = values
  end
end

# {etapestryAPI/service}LoginCredentialsResponse
#   accountRef - SOAP::SOAPString
#   createdNewAccount - SOAP::SOAPBoolean
#   matchedMultiples - SOAP::SOAPBoolean
class LoginCredentialsResponse
  attr_accessor :accountRef
  attr_accessor :createdNewAccount
  attr_accessor :matchedMultiples

  def initialize(accountRef = nil, createdNewAccount = nil, matchedMultiples = nil)
    @accountRef = accountRef
    @createdNewAccount = createdNewAccount
    @matchedMultiples = matchedMultiples
  end
end

# {etapestryAPI/service}Note
#   accountName - SOAP::SOAPString
#   accountRef - SOAP::SOAPString
#   attachments - Etapper::API::ArrayOfAttachment
#   createdDate - SOAP::SOAPDateTime
#   date - SOAP::SOAPDateTime
#   definedValues - Etapper::API::ArrayOfDefinedValue
#   final - SOAP::SOAPBoolean
#   immutable - SOAP::SOAPBoolean
#   lastModifiedDate - SOAP::SOAPDateTime
#   note - SOAP::SOAPString
#   ref - SOAP::SOAPString
#   type - SOAP::SOAPInt
class Note
  attr_accessor :accountName
  attr_accessor :accountRef
  attr_accessor :attachments
  attr_accessor :createdDate
  attr_accessor :date
  attr_accessor :definedValues
  attr_accessor :final
  attr_accessor :immutable
  attr_accessor :lastModifiedDate
  attr_accessor :note
  attr_accessor :ref
  attr_accessor :type

  def initialize(accountName = nil, accountRef = nil, attachments = nil, createdDate = nil, date = nil, definedValues = nil, final = nil, immutable = nil, lastModifiedDate = nil, note = nil, ref = nil, type = nil)
    @accountName = accountName
    @accountRef = accountRef
    @attachments = attachments
    @createdDate = createdDate
    @date = date
    @definedValues = definedValues
    @final = final
    @immutable = immutable
    @lastModifiedDate = lastModifiedDate
    @note = note
    @ref = ref
    @type = type
  end
end

# {etapestryAPI/service}OutlookIntegrationEmail
#   bCC - SOAP::SOAPString
#   cC - SOAP::SOAPString
#   attachments - Etapper::API::ArrayOfAttachment
#   contactMethodRef - SOAP::SOAPString
#   date - SOAP::SOAPDateTime
#   from - SOAP::SOAPString
#   message - SOAP::SOAPBase64
#   subject - SOAP::SOAPBase64
#   to - SOAP::SOAPString
class OutlookIntegrationEmail
  attr_accessor :bCC
  attr_accessor :cC
  attr_accessor :attachments
  attr_accessor :contactMethodRef
  attr_accessor :date
  attr_accessor :from
  attr_accessor :message
  attr_accessor :subject
  attr_accessor :to

  def initialize(bCC = nil, cC = nil, attachments = nil, contactMethodRef = nil, date = nil, from = nil, message = nil, subject = nil, to = nil)
    @bCC = bCC
    @cC = cC
    @attachments = attachments
    @contactMethodRef = contactMethodRef
    @date = date
    @from = from
    @message = message
    @subject = subject
    @to = to
  end
end

# {etapestryAPI/service}Pledge
#   accountName - SOAP::SOAPString
#   accountRef - SOAP::SOAPString
#   amount - SOAP::SOAPDouble
#   approach - SOAP::SOAPString
#   attachments - Etapper::API::ArrayOfAttachment
#   campaign - SOAP::SOAPString
#   createdDate - SOAP::SOAPDateTime
#   customSchedule - Etapper::API::CustomPaymentSchedule
#   date - SOAP::SOAPDateTime
#   definedValues - Etapper::API::ArrayOfDefinedValue
#   final - SOAP::SOAPBoolean
#   fund - SOAP::SOAPString
#   fundraiser - SOAP::SOAPString
#   initialPaymentAmount - SOAP::SOAPDouble
#   lastModifiedDate - SOAP::SOAPDateTime
#   letter - SOAP::SOAPString
#   linkedPaymentsAmount - SOAP::SOAPDouble
#   nextPaymentAmount - SOAP::SOAPDouble
#   nextPaymentDate - SOAP::SOAPDateTime
#   nonDeductibleAmount - SOAP::SOAPDouble
#   note - SOAP::SOAPString
#   offsettingRef - SOAP::SOAPString
#   originalAccountName - SOAP::SOAPString
#   originalAccountRef - SOAP::SOAPString
#   originalTransactionRef - SOAP::SOAPString
#   outstandingBalance - SOAP::SOAPDouble
#   paymentValuable - Etapper::API::Valuable
#   receipt - SOAP::SOAPString
#   recognitionName - SOAP::SOAPString
#   recognitionType - SOAP::SOAPInt
#   ref - SOAP::SOAPString
#   scheduledValuable - Etapper::API::Valuable
#   segmentedTransactionRef - SOAP::SOAPString
#   softCredit - Etapper::API::SoftCredit
#   standardSchedule - Etapper::API::StandardPaymentSchedule
#   tributeAccountName - SOAP::SOAPString
#   tributeAccountRef - SOAP::SOAPString
#   type - SOAP::SOAPInt
#   writeOff - SOAP::SOAPBoolean
#   writeOffDate - SOAP::SOAPDateTime
class Pledge
  attr_accessor :accountName
  attr_accessor :accountRef
  attr_accessor :amount
  attr_accessor :approach
  attr_accessor :attachments
  attr_accessor :campaign
  attr_accessor :createdDate
  attr_accessor :customSchedule
  attr_accessor :date
  attr_accessor :definedValues
  attr_accessor :final
  attr_accessor :fund
  attr_accessor :fundraiser
  attr_accessor :initialPaymentAmount
  attr_accessor :lastModifiedDate
  attr_accessor :letter
  attr_accessor :linkedPaymentsAmount
  attr_accessor :nextPaymentAmount
  attr_accessor :nextPaymentDate
  attr_accessor :nonDeductibleAmount
  attr_accessor :note
  attr_accessor :offsettingRef
  attr_accessor :originalAccountName
  attr_accessor :originalAccountRef
  attr_accessor :originalTransactionRef
  attr_accessor :outstandingBalance
  attr_accessor :paymentValuable
  attr_accessor :receipt
  attr_accessor :recognitionName
  attr_accessor :recognitionType
  attr_accessor :ref
  attr_accessor :scheduledValuable
  attr_accessor :segmentedTransactionRef
  attr_accessor :softCredit
  attr_accessor :standardSchedule
  attr_accessor :tributeAccountName
  attr_accessor :tributeAccountRef
  attr_accessor :type
  attr_accessor :writeOff
  attr_accessor :writeOffDate

  def initialize(accountName = nil, accountRef = nil, amount = nil, approach = nil, attachments = nil, campaign = nil, createdDate = nil, customSchedule = nil, date = nil, definedValues = nil, final = nil, fund = nil, fundraiser = nil, initialPaymentAmount = nil, lastModifiedDate = nil, letter = nil, linkedPaymentsAmount = nil, nextPaymentAmount = nil, nextPaymentDate = nil, nonDeductibleAmount = nil, note = nil, offsettingRef = nil, originalAccountName = nil, originalAccountRef = nil, originalTransactionRef = nil, outstandingBalance = nil, paymentValuable = nil, receipt = nil, recognitionName = nil, recognitionType = nil, ref = nil, scheduledValuable = nil, segmentedTransactionRef = nil, softCredit = nil, standardSchedule = nil, tributeAccountName = nil, tributeAccountRef = nil, type = nil, writeOff = nil, writeOffDate = nil)
    @accountName = accountName
    @accountRef = accountRef
    @amount = amount
    @approach = approach
    @attachments = attachments
    @campaign = campaign
    @createdDate = createdDate
    @customSchedule = customSchedule
    @date = date
    @definedValues = definedValues
    @final = final
    @fund = fund
    @fundraiser = fundraiser
    @initialPaymentAmount = initialPaymentAmount
    @lastModifiedDate = lastModifiedDate
    @letter = letter
    @linkedPaymentsAmount = linkedPaymentsAmount
    @nextPaymentAmount = nextPaymentAmount
    @nextPaymentDate = nextPaymentDate
    @nonDeductibleAmount = nonDeductibleAmount
    @note = note
    @offsettingRef = offsettingRef
    @originalAccountName = originalAccountName
    @originalAccountRef = originalAccountRef
    @originalTransactionRef = originalTransactionRef
    @outstandingBalance = outstandingBalance
    @paymentValuable = paymentValuable
    @receipt = receipt
    @recognitionName = recognitionName
    @recognitionType = recognitionType
    @ref = ref
    @scheduledValuable = scheduledValuable
    @segmentedTransactionRef = segmentedTransactionRef
    @softCredit = softCredit
    @standardSchedule = standardSchedule
    @tributeAccountName = tributeAccountName
    @tributeAccountRef = tributeAccountRef
    @type = type
    @writeOff = writeOff
    @writeOffDate = writeOffDate
  end
end

# {etapestryAPI/service}CustomPaymentSchedule
#   installmentAmounts - Etapper::API::ArrayOfdouble
#   installmentDates - Etapper::API::ArrayOfdateTime
#   note - SOAP::SOAPString
#   processType - SOAP::SOAPInt
class CustomPaymentSchedule
  attr_accessor :installmentAmounts
  attr_accessor :installmentDates
  attr_accessor :note
  attr_accessor :processType

  def initialize(installmentAmounts = nil, installmentDates = nil, note = nil, processType = nil)
    @installmentAmounts = installmentAmounts
    @installmentDates = installmentDates
    @note = note
    @processType = processType
  end
end

# {etapestryAPI/service}StandardPaymentSchedule
#   firstInstallmentDate - SOAP::SOAPDateTime
#   frequency - SOAP::SOAPInt
#   installmentAmount - SOAP::SOAPDouble
#   note - SOAP::SOAPString
#   processType - SOAP::SOAPInt
#   stopDate - SOAP::SOAPDateTime
class StandardPaymentSchedule
  attr_accessor :firstInstallmentDate
  attr_accessor :frequency
  attr_accessor :installmentAmount
  attr_accessor :note
  attr_accessor :processType
  attr_accessor :stopDate

  def initialize(firstInstallmentDate = nil, frequency = nil, installmentAmount = nil, note = nil, processType = nil, stopDate = nil)
    @firstInstallmentDate = firstInstallmentDate
    @frequency = frequency
    @installmentAmount = installmentAmount
    @note = note
    @processType = processType
    @stopDate = stopDate
  end
end

# {etapestryAPI/service}RecurringGift
#   accountName - SOAP::SOAPString
#   accountRef - SOAP::SOAPString
#   amount - SOAP::SOAPDouble
#   approach - SOAP::SOAPString
#   attachments - Etapper::API::ArrayOfAttachment
#   campaign - SOAP::SOAPString
#   copyRgsElements - SOAP::SOAPBoolean
#   createdDate - SOAP::SOAPDateTime
#   date - SOAP::SOAPDateTime
#   definedValues - Etapper::API::ArrayOfDefinedValue
#   final - SOAP::SOAPBoolean
#   fund - SOAP::SOAPString
#   fundraiser - SOAP::SOAPString
#   lastModifiedDate - SOAP::SOAPDateTime
#   letter - SOAP::SOAPString
#   nonDeductibleAmount - SOAP::SOAPDouble
#   note - SOAP::SOAPString
#   offsettingRef - SOAP::SOAPString
#   originalAccountName - SOAP::SOAPString
#   originalAccountRef - SOAP::SOAPString
#   originalTransactionRef - SOAP::SOAPString
#   receipt - SOAP::SOAPString
#   recognitionName - SOAP::SOAPString
#   recognitionType - SOAP::SOAPInt
#   recurringGiftScheduleRef - SOAP::SOAPString
#   ref - SOAP::SOAPString
#   softCredit - Etapper::API::SoftCredit
#   tributeAccountName - SOAP::SOAPString
#   tributeAccountRef - SOAP::SOAPString
#   type - SOAP::SOAPInt
#   valuable - Etapper::API::Valuable
class RecurringGift
  attr_accessor :accountName
  attr_accessor :accountRef
  attr_accessor :amount
  attr_accessor :approach
  attr_accessor :attachments
  attr_accessor :campaign
  attr_accessor :copyRgsElements
  attr_accessor :createdDate
  attr_accessor :date
  attr_accessor :definedValues
  attr_accessor :final
  attr_accessor :fund
  attr_accessor :fundraiser
  attr_accessor :lastModifiedDate
  attr_accessor :letter
  attr_accessor :nonDeductibleAmount
  attr_accessor :note
  attr_accessor :offsettingRef
  attr_accessor :originalAccountName
  attr_accessor :originalAccountRef
  attr_accessor :originalTransactionRef
  attr_accessor :receipt
  attr_accessor :recognitionName
  attr_accessor :recognitionType
  attr_accessor :recurringGiftScheduleRef
  attr_accessor :ref
  attr_accessor :softCredit
  attr_accessor :tributeAccountName
  attr_accessor :tributeAccountRef
  attr_accessor :type
  attr_accessor :valuable

  def initialize(accountName = nil, accountRef = nil, amount = nil, approach = nil, attachments = nil, campaign = nil, copyRgsElements = nil, createdDate = nil, date = nil, definedValues = nil, final = nil, fund = nil, fundraiser = nil, lastModifiedDate = nil, letter = nil, nonDeductibleAmount = nil, note = nil, offsettingRef = nil, originalAccountName = nil, originalAccountRef = nil, originalTransactionRef = nil, receipt = nil, recognitionName = nil, recognitionType = nil, recurringGiftScheduleRef = nil, ref = nil, softCredit = nil, tributeAccountName = nil, tributeAccountRef = nil, type = nil, valuable = nil)
    @accountName = accountName
    @accountRef = accountRef
    @amount = amount
    @approach = approach
    @attachments = attachments
    @campaign = campaign
    @copyRgsElements = copyRgsElements
    @createdDate = createdDate
    @date = date
    @definedValues = definedValues
    @final = final
    @fund = fund
    @fundraiser = fundraiser
    @lastModifiedDate = lastModifiedDate
    @letter = letter
    @nonDeductibleAmount = nonDeductibleAmount
    @note = note
    @offsettingRef = offsettingRef
    @originalAccountName = originalAccountName
    @originalAccountRef = originalAccountRef
    @originalTransactionRef = originalTransactionRef
    @receipt = receipt
    @recognitionName = recognitionName
    @recognitionType = recognitionType
    @recurringGiftScheduleRef = recurringGiftScheduleRef
    @ref = ref
    @softCredit = softCredit
    @tributeAccountName = tributeAccountName
    @tributeAccountRef = tributeAccountRef
    @type = type
    @valuable = valuable
  end
end

# {etapestryAPI/service}ConnectRequest
#   applicationContext - SOAP::SOAPString
#   databaseId - SOAP::SOAPString
#   password - SOAP::SOAPString
class ConnectRequest
  attr_accessor :applicationContext
  attr_accessor :databaseId
  attr_accessor :password

  def initialize(applicationContext = nil, databaseId = nil, password = nil)
    @applicationContext = applicationContext
    @databaseId = databaseId
    @password = password
  end
end

# {etapestryAPI/service}ExternalLoginRequest
#   applicationContext - SOAP::SOAPString
#   applicationName - SOAP::SOAPString
#   databaseId - SOAP::SOAPString
#   loginId - SOAP::SOAPString
#   password - SOAP::SOAPString
class ExternalLoginRequest
  attr_accessor :applicationContext
  attr_accessor :applicationName
  attr_accessor :databaseId
  attr_accessor :loginId
  attr_accessor :password

  def initialize(applicationContext = nil, applicationName = nil, databaseId = nil, loginId = nil, password = nil)
    @applicationContext = applicationContext
    @applicationName = applicationName
    @databaseId = databaseId
    @loginId = loginId
    @password = password
  end
end

# {etapestryAPI/service}PagedCartElementsResponse
#   count - SOAP::SOAPInt
#   data - Etapper::API::Collection
#   pages - SOAP::SOAPInt
#   start - SOAP::SOAPInt
#   total - SOAP::SOAPInt
#   usedCache - SOAP::SOAPBoolean
class PagedCartElementsResponse
  attr_accessor :count
  attr_accessor :data
  attr_accessor :pages
  attr_accessor :start
  attr_accessor :total
  attr_accessor :usedCache

  def initialize(count = nil, data = nil, pages = nil, start = nil, total = nil, usedCache = nil)
    @count = count
    @data = data
    @pages = pages
    @start = start
    @total = total
    @usedCache = usedCache
  end
end

# {etapestryAPI/service}PagedDefinedFieldsResponse
#   count - SOAP::SOAPInt
#   data - Etapper::API::Collection
#   pages - SOAP::SOAPInt
#   start - SOAP::SOAPInt
#   total - SOAP::SOAPInt
#   usedCache - SOAP::SOAPBoolean
class PagedDefinedFieldsResponse
  attr_accessor :count
  attr_accessor :data
  attr_accessor :pages
  attr_accessor :start
  attr_accessor :total
  attr_accessor :usedCache

  def initialize(count = nil, data = nil, pages = nil, start = nil, total = nil, usedCache = nil)
    @count = count
    @data = data
    @pages = pages
    @start = start
    @total = total
    @usedCache = usedCache
  end
end

# {etapestryAPI/service}PagedJournalEntriesResponse
#   count - SOAP::SOAPInt
#   data - Etapper::API::Collection
#   pages - SOAP::SOAPInt
#   start - SOAP::SOAPInt
#   total - SOAP::SOAPInt
#   usedCache - SOAP::SOAPBoolean
class PagedJournalEntriesResponse
  attr_accessor :count
  attr_accessor :data
  attr_accessor :pages
  attr_accessor :start
  attr_accessor :total
  attr_accessor :usedCache

  def initialize(count = nil, data = nil, pages = nil, start = nil, total = nil, usedCache = nil)
    @count = count
    @data = data
    @pages = pages
    @start = start
    @total = total
    @usedCache = usedCache
  end
end

# {etapestryAPI/service}PagedQueryResultsResponse
#   count - SOAP::SOAPInt
#   data - Etapper::API::Collection
#   pages - SOAP::SOAPInt
#   start - SOAP::SOAPInt
#   total - SOAP::SOAPInt
#   usedCache - SOAP::SOAPBoolean
class PagedQueryResultsResponse
  attr_accessor :count
  attr_accessor :data
  attr_accessor :pages
  attr_accessor :start
  attr_accessor :total
  attr_accessor :usedCache

  def initialize(count = nil, data = nil, pages = nil, start = nil, total = nil, usedCache = nil)
    @count = count
    @data = data
    @pages = pages
    @start = start
    @total = total
    @usedCache = usedCache
  end
end

# {etapestryAPI/service}CalendarItem
#   accountName - SOAP::SOAPString
#   accountRef - SOAP::SOAPString
#   attachments - Etapper::API::ArrayOfAttachment
#   createdDate - SOAP::SOAPDateTime
#   definedValues - Etapper::API::ArrayOfDefinedValue
#   endTime - SOAP::SOAPDateTime
#   invitations - Etapper::API::ArrayOfInvitation
#   lastModifiedDate - SOAP::SOAPDateTime
#   note - SOAP::SOAPString
#   priority - SOAP::SOAPInt
#   private - SOAP::SOAPBoolean
#   recurringSchedule - Etapper::API::RecurringSchedule
#   ref - SOAP::SOAPString
#   remind - SOAP::SOAPBoolean
#   startTime - SOAP::SOAPDateTime
#   status - SOAP::SOAPInt
#   title - SOAP::SOAPString
#   type - SOAP::SOAPInt
class CalendarItem
  attr_accessor :accountName
  attr_accessor :accountRef
  attr_accessor :attachments
  attr_accessor :createdDate
  attr_accessor :definedValues
  attr_accessor :endTime
  attr_accessor :invitations
  attr_accessor :lastModifiedDate
  attr_accessor :note
  attr_accessor :priority
  attr_accessor :private
  attr_accessor :recurringSchedule
  attr_accessor :ref
  attr_accessor :remind
  attr_accessor :startTime
  attr_accessor :status
  attr_accessor :title
  attr_accessor :type

  def initialize(accountName = nil, accountRef = nil, attachments = nil, createdDate = nil, definedValues = nil, endTime = nil, invitations = nil, lastModifiedDate = nil, note = nil, priority = nil, private = nil, recurringSchedule = nil, ref = nil, remind = nil, startTime = nil, status = nil, title = nil, type = nil)
    @accountName = accountName
    @accountRef = accountRef
    @attachments = attachments
    @createdDate = createdDate
    @definedValues = definedValues
    @endTime = endTime
    @invitations = invitations
    @lastModifiedDate = lastModifiedDate
    @note = note
    @priority = priority
    @private = private
    @recurringSchedule = recurringSchedule
    @ref = ref
    @remind = remind
    @startTime = startTime
    @status = status
    @title = title
    @type = type
  end
end

# {etapestryAPI/service}Invitation
#   accountName - SOAP::SOAPString
#   accountRef - SOAP::SOAPString
#   calendarItem - Etapper::API::CalendarItem
#   createdDate - SOAP::SOAPDateTime
#   date - SOAP::SOAPDateTime
#   lastModifiedDate - SOAP::SOAPDateTime
#   ref - SOAP::SOAPString
#   remind - SOAP::SOAPBoolean
#   status - SOAP::SOAPInt
#   type - SOAP::SOAPInt
class Invitation
  attr_accessor :accountName
  attr_accessor :accountRef
  attr_accessor :calendarItem
  attr_accessor :createdDate
  attr_accessor :date
  attr_accessor :lastModifiedDate
  attr_accessor :ref
  attr_accessor :remind
  attr_accessor :status
  attr_accessor :type

  def initialize(accountName = nil, accountRef = nil, calendarItem = nil, createdDate = nil, date = nil, lastModifiedDate = nil, ref = nil, remind = nil, status = nil, type = nil)
    @accountName = accountName
    @accountRef = accountRef
    @calendarItem = calendarItem
    @createdDate = createdDate
    @date = date
    @lastModifiedDate = lastModifiedDate
    @ref = ref
    @remind = remind
    @status = status
    @type = type
  end
end

# {etapestryAPI/service}RecurringSchedule
#   frequency - SOAP::SOAPInt
#   measure - SOAP::SOAPInt
#   startDate - SOAP::SOAPDateTime
#   stopDate - SOAP::SOAPDateTime
class RecurringSchedule
  attr_accessor :frequency
  attr_accessor :measure
  attr_accessor :startDate
  attr_accessor :stopDate

  def initialize(frequency = nil, measure = nil, startDate = nil, stopDate = nil)
    @frequency = frequency
    @measure = measure
    @startDate = startDate
    @stopDate = stopDate
  end
end

# {etapestryAPI/service}CartCategory
#   description - SOAP::SOAPString
#   disabled - SOAP::SOAPBoolean
#   image - Etapper::API::CartImage
#   immediateCategories - SOAP::SOAPInt
#   immediateItems - SOAP::SOAPInt
#   name - SOAP::SOAPString
#   nestedCategories - SOAP::SOAPInt
#   nestedItems - SOAP::SOAPInt
#   parents - Etapper::API::ArrayOfCartParent
#   publishEndDate - SOAP::SOAPString
#   publishStartDate - SOAP::SOAPString
#   publishableNow - SOAP::SOAPBoolean
#   ref - SOAP::SOAPString
#   type - SOAP::SOAPInt
class CartCategory
  attr_accessor :description
  attr_accessor :disabled
  attr_accessor :image
  attr_accessor :immediateCategories
  attr_accessor :immediateItems
  attr_accessor :name
  attr_accessor :nestedCategories
  attr_accessor :nestedItems
  attr_accessor :parents
  attr_accessor :publishEndDate
  attr_accessor :publishStartDate
  attr_accessor :publishableNow
  attr_accessor :ref
  attr_accessor :type

  def initialize(description = nil, disabled = nil, image = nil, immediateCategories = nil, immediateItems = nil, name = nil, nestedCategories = nil, nestedItems = nil, parents = nil, publishEndDate = nil, publishStartDate = nil, publishableNow = nil, ref = nil, type = nil)
    @description = description
    @disabled = disabled
    @image = image
    @immediateCategories = immediateCategories
    @immediateItems = immediateItems
    @name = name
    @nestedCategories = nestedCategories
    @nestedItems = nestedItems
    @parents = parents
    @publishEndDate = publishEndDate
    @publishStartDate = publishStartDate
    @publishableNow = publishableNow
    @ref = ref
    @type = type
  end
end

# {etapestryAPI/service}CartImage
#   description - SOAP::SOAPString
#   url - SOAP::SOAPString
class CartImage
  attr_accessor :description
  attr_accessor :url

  def initialize(description = nil, url = nil)
    @description = description
    @url = url
  end
end

# {etapestryAPI/service}CartParent
#   name - SOAP::SOAPString
#   ref - SOAP::SOAPString
class CartParent
  attr_accessor :name
  attr_accessor :ref

  def initialize(name = nil, ref = nil)
    @name = name
    @ref = ref
  end
end

# {etapestryAPI/service}PagedCartElementsRequest
#   clearCache - SOAP::SOAPBoolean
#   count - SOAP::SOAPInt
#   start - SOAP::SOAPInt
#   cartRef - SOAP::SOAPString
#   categoryRef - SOAP::SOAPString
#   elementTypeMask - SOAP::SOAPInt
#   includeDisabledItems - SOAP::SOAPBoolean
#   includeNoItemCategories - SOAP::SOAPBoolean
#   includeNonPublishableCategories - SOAP::SOAPBoolean
#   includeNonPublishableItems - SOAP::SOAPBoolean
class PagedCartElementsRequest
  attr_accessor :clearCache
  attr_accessor :count
  attr_accessor :start
  attr_accessor :cartRef
  attr_accessor :categoryRef
  attr_accessor :elementTypeMask
  attr_accessor :includeDisabledItems
  attr_accessor :includeNoItemCategories
  attr_accessor :includeNonPublishableCategories
  attr_accessor :includeNonPublishableItems

  def initialize(clearCache = nil, count = nil, start = nil, cartRef = nil, categoryRef = nil, elementTypeMask = nil, includeDisabledItems = nil, includeNoItemCategories = nil, includeNonPublishableCategories = nil, includeNonPublishableItems = nil)
    @clearCache = clearCache
    @count = count
    @start = start
    @cartRef = cartRef
    @categoryRef = categoryRef
    @elementTypeMask = elementTypeMask
    @includeDisabledItems = includeDisabledItems
    @includeNoItemCategories = includeNoItemCategories
    @includeNonPublishableCategories = includeNonPublishableCategories
    @includeNonPublishableItems = includeNonPublishableItems
  end
end

# {etapestryAPI/service}CartItem
#   disabled - SOAP::SOAPBoolean
#   longDescription - SOAP::SOAPString
#   manageQuantity - SOAP::SOAPBoolean
#   name - SOAP::SOAPString
#   nonDeductibleAmount - SOAP::SOAPDouble
#   parents - Etapper::API::ArrayOfCartParent
#   pricingType - SOAP::SOAPInt
#   publicizeQuantity - SOAP::SOAPBoolean
#   publishEndDate - SOAP::SOAPString
#   publishStartDate - SOAP::SOAPString
#   publishableNow - SOAP::SOAPBoolean
#   quantity - SOAP::SOAPInt
#   questions - Etapper::API::ArrayOfQuestion
#   ref - SOAP::SOAPString
#   regularImages - Etapper::API::ArrayOfCartImage
#   regularPrice - SOAP::SOAPDouble
#   shippable - SOAP::SOAPBoolean
#   shippingPrice - SOAP::SOAPDouble
#   shortDescription - SOAP::SOAPString
#   taxableAmount - SOAP::SOAPDouble
#   thumbImage - Etapper::API::CartImage
#   type - SOAP::SOAPInt
class CartItem
  attr_accessor :disabled
  attr_accessor :longDescription
  attr_accessor :manageQuantity
  attr_accessor :name
  attr_accessor :nonDeductibleAmount
  attr_accessor :parents
  attr_accessor :pricingType
  attr_accessor :publicizeQuantity
  attr_accessor :publishEndDate
  attr_accessor :publishStartDate
  attr_accessor :publishableNow
  attr_accessor :quantity
  attr_accessor :questions
  attr_accessor :ref
  attr_accessor :regularImages
  attr_accessor :regularPrice
  attr_accessor :shippable
  attr_accessor :shippingPrice
  attr_accessor :shortDescription
  attr_accessor :taxableAmount
  attr_accessor :thumbImage
  attr_accessor :type

  def initialize(disabled = nil, longDescription = nil, manageQuantity = nil, name = nil, nonDeductibleAmount = nil, parents = nil, pricingType = nil, publicizeQuantity = nil, publishEndDate = nil, publishStartDate = nil, publishableNow = nil, quantity = nil, questions = nil, ref = nil, regularImages = nil, regularPrice = nil, shippable = nil, shippingPrice = nil, shortDescription = nil, taxableAmount = nil, thumbImage = nil, type = nil)
    @disabled = disabled
    @longDescription = longDescription
    @manageQuantity = manageQuantity
    @name = name
    @nonDeductibleAmount = nonDeductibleAmount
    @parents = parents
    @pricingType = pricingType
    @publicizeQuantity = publicizeQuantity
    @publishEndDate = publishEndDate
    @publishStartDate = publishStartDate
    @publishableNow = publishableNow
    @quantity = quantity
    @questions = questions
    @ref = ref
    @regularImages = regularImages
    @regularPrice = regularPrice
    @shippable = shippable
    @shippingPrice = shippingPrice
    @shortDescription = shortDescription
    @taxableAmount = taxableAmount
    @thumbImage = thumbImage
    @type = type
  end
end

# {etapestryAPI/service}Question
#   displayText - SOAP::SOAPString
#   field - Etapper::API::DefinedField
#   ref - SOAP::SOAPString
#   required - SOAP::SOAPBoolean
class Question
  attr_accessor :displayText
  attr_accessor :field
  attr_accessor :ref
  attr_accessor :required

  def initialize(displayText = nil, field = nil, ref = nil, required = nil)
    @displayText = displayText
    @field = field
    @ref = ref
    @required = required
  end
end

# {etapestryAPI/service}DefinedField
#   applicationTypes - Etapper::API::ArrayOfint
#   category - SOAP::SOAPString
#   dataType - SOAP::SOAPInt
#   desc - SOAP::SOAPString
#   disabled - SOAP::SOAPBoolean
#   displayType - SOAP::SOAPInt
#   name - SOAP::SOAPString
#   ref - SOAP::SOAPString
#   required - SOAP::SOAPBoolean
#   securityRights - Etapper::API::ArrayOfDefinedFieldValue
#   system - SOAP::SOAPBoolean
#   values - Etapper::API::ArrayOfDefinedFieldValue
class DefinedField
  attr_accessor :applicationTypes
  attr_accessor :category
  attr_accessor :dataType
  attr_accessor :desc
  attr_accessor :disabled
  attr_accessor :displayType
  attr_accessor :name
  attr_accessor :ref
  attr_accessor :required
  attr_accessor :securityRights
  attr_accessor :system
  attr_accessor :values

  def initialize(applicationTypes = nil, category = nil, dataType = nil, desc = nil, disabled = nil, displayType = nil, name = nil, ref = nil, required = nil, securityRights = nil, system = nil, values = nil)
    @applicationTypes = applicationTypes
    @category = category
    @dataType = dataType
    @desc = desc
    @disabled = disabled
    @displayType = displayType
    @name = name
    @ref = ref
    @required = required
    @securityRights = securityRights
    @system = system
    @values = values
  end
end

# {etapestryAPI/service}DefinedFieldValue
#   desc - SOAP::SOAPString
#   disabled - SOAP::SOAPBoolean
#   ref - SOAP::SOAPString
#   value - SOAP::SOAPString
class DefinedFieldValue
  attr_accessor :desc
  attr_accessor :disabled
  attr_accessor :ref
  attr_accessor :value

  def initialize(desc = nil, disabled = nil, ref = nil, value = nil)
    @desc = desc
    @disabled = disabled
    @ref = ref
    @value = value
  end
end

# {etapestryAPI/service}CartPreferences
#   categoryHeader - SOAP::SOAPString
#   checkoutQuestions - Etapper::API::ArrayOfQuestion
#   domesticCountries - Etapper::API::ArrayOfstring
#   expressShippingPrice - SOAP::SOAPDouble
#   freeOrderRegularShippingPrice - SOAP::SOAPDouble
#   internationalShippingPrice - SOAP::SOAPDouble
#   regularShippingPrice - SOAP::SOAPDouble
#   salesTaxKey - SOAP::SOAPInt
#   siteName - SOAP::SOAPString
#   siteTitle - SOAP::SOAPString
#   soldOutLabel - SOAP::SOAPString
#   stateTaxRates - Etapper::API::ArrayOfStateTaxRate
#   successMessage - SOAP::SOAPString
#   templateSetFolder - SOAP::SOAPString
#   transProcessor - Etapper::API::TransactionProcessor
#   welcomeMessage - SOAP::SOAPString
class CartPreferences
  attr_accessor :categoryHeader
  attr_accessor :checkoutQuestions
  attr_accessor :domesticCountries
  attr_accessor :expressShippingPrice
  attr_accessor :freeOrderRegularShippingPrice
  attr_accessor :internationalShippingPrice
  attr_accessor :regularShippingPrice
  attr_accessor :salesTaxKey
  attr_accessor :siteName
  attr_accessor :siteTitle
  attr_accessor :soldOutLabel
  attr_accessor :stateTaxRates
  attr_accessor :successMessage
  attr_accessor :templateSetFolder
  attr_accessor :transProcessor
  attr_accessor :welcomeMessage

  def initialize(categoryHeader = nil, checkoutQuestions = nil, domesticCountries = nil, expressShippingPrice = nil, freeOrderRegularShippingPrice = nil, internationalShippingPrice = nil, regularShippingPrice = nil, salesTaxKey = nil, siteName = nil, siteTitle = nil, soldOutLabel = nil, stateTaxRates = nil, successMessage = nil, templateSetFolder = nil, transProcessor = nil, welcomeMessage = nil)
    @categoryHeader = categoryHeader
    @checkoutQuestions = checkoutQuestions
    @domesticCountries = domesticCountries
    @expressShippingPrice = expressShippingPrice
    @freeOrderRegularShippingPrice = freeOrderRegularShippingPrice
    @internationalShippingPrice = internationalShippingPrice
    @regularShippingPrice = regularShippingPrice
    @salesTaxKey = salesTaxKey
    @siteName = siteName
    @siteTitle = siteTitle
    @soldOutLabel = soldOutLabel
    @stateTaxRates = stateTaxRates
    @successMessage = successMessage
    @templateSetFolder = templateSetFolder
    @transProcessor = transProcessor
    @welcomeMessage = welcomeMessage
  end
end

# {etapestryAPI/service}StateTaxRate
#   rate - SOAP::SOAPDouble
#   state - SOAP::SOAPString
class StateTaxRate
  attr_accessor :rate
  attr_accessor :state

  def initialize(rate = nil, state = nil)
    @rate = rate
    @state = state
  end
end

# {etapestryAPI/service}TransactionProcessor
#   default - SOAP::SOAPBoolean
#   disabled - SOAP::SOAPBoolean
#   ref - SOAP::SOAPString
#   refName - SOAP::SOAPString
#   type - SOAP::SOAPInt
class TransactionProcessor
  attr_accessor :default
  attr_accessor :disabled
  attr_accessor :ref
  attr_accessor :refName
  attr_accessor :type

  def initialize(default = nil, disabled = nil, ref = nil, refName = nil, type = nil)
    @default = default
    @disabled = disabled
    @ref = ref
    @refName = refName
    @type = type
  end
end

# {etapestryAPI/service}Declaration
#   accountName - SOAP::SOAPString
#   accountRef - SOAP::SOAPString
#   address - SOAP::SOAPString
#   attachments - Etapper::API::ArrayOfAttachment
#   city - SOAP::SOAPString
#   confirmationDate - SOAP::SOAPDateTime
#   country - SOAP::SOAPString
#   createdDate - SOAP::SOAPDateTime
#   date - SOAP::SOAPDateTime
#   endDate - SOAP::SOAPDateTime
#   lastModifiedDate - SOAP::SOAPDateTime
#   name - SOAP::SOAPString
#   note - SOAP::SOAPString
#   postalCode - SOAP::SOAPString
#   ref - SOAP::SOAPString
#   startDate - SOAP::SOAPDateTime
#   state - SOAP::SOAPString
#   type - SOAP::SOAPInt
#   verbal - SOAP::SOAPBoolean
class Declaration
  attr_accessor :accountName
  attr_accessor :accountRef
  attr_accessor :address
  attr_accessor :attachments
  attr_accessor :city
  attr_accessor :confirmationDate
  attr_accessor :country
  attr_accessor :createdDate
  attr_accessor :date
  attr_accessor :endDate
  attr_accessor :lastModifiedDate
  attr_accessor :name
  attr_accessor :note
  attr_accessor :postalCode
  attr_accessor :ref
  attr_accessor :startDate
  attr_accessor :state
  attr_accessor :type
  attr_accessor :verbal

  def initialize(accountName = nil, accountRef = nil, address = nil, attachments = nil, city = nil, confirmationDate = nil, country = nil, createdDate = nil, date = nil, endDate = nil, lastModifiedDate = nil, name = nil, note = nil, postalCode = nil, ref = nil, startDate = nil, state = nil, type = nil, verbal = nil)
    @accountName = accountName
    @accountRef = accountRef
    @address = address
    @attachments = attachments
    @city = city
    @confirmationDate = confirmationDate
    @country = country
    @createdDate = createdDate
    @date = date
    @endDate = endDate
    @lastModifiedDate = lastModifiedDate
    @name = name
    @note = note
    @postalCode = postalCode
    @ref = ref
    @startDate = startDate
    @state = state
    @type = type
    @verbal = verbal
  end
end

# {etapestryAPI/service}PagedDefinedFieldsRequest
#   clearCache - SOAP::SOAPBoolean
#   count - SOAP::SOAPInt
#   start - SOAP::SOAPInt
#   applicationTypes - Etapper::API::ArrayOfint
#   categories - Etapper::API::ArrayOfstring
#   includeDisabledFields - SOAP::SOAPBoolean
#   includeDisabledValues - SOAP::SOAPBoolean
#   names - Etapper::API::ArrayOfstring
class PagedDefinedFieldsRequest
  attr_accessor :clearCache
  attr_accessor :count
  attr_accessor :start
  attr_accessor :applicationTypes
  attr_accessor :categories
  attr_accessor :includeDisabledFields
  attr_accessor :includeDisabledValues
  attr_accessor :names

  def initialize(clearCache = nil, count = nil, start = nil, applicationTypes = nil, categories = nil, includeDisabledFields = nil, includeDisabledValues = nil, names = nil)
    @clearCache = clearCache
    @count = count
    @start = start
    @applicationTypes = applicationTypes
    @categories = categories
    @includeDisabledFields = includeDisabledFields
    @includeDisabledValues = includeDisabledValues
    @names = names
  end
end

# {etapestryAPI/service}DonorLoginPreferences
#   welcomePageHtml - SOAP::SOAPString
class DonorLoginPreferences
  attr_accessor :welcomePageHtml

  def initialize(welcomePageHtml = nil)
    @welcomePageHtml = welcomePageHtml
  end
end

# {etapestryAPI/service}DuplicateAccountSearch
#   accountRoleTypes - SOAP::SOAPInt
#   address - SOAP::SOAPString
#   allowEmailOnlyMatch - SOAP::SOAPBoolean
#   email - SOAP::SOAPString
#   name - SOAP::SOAPString
#   phoneNumber - SOAP::SOAPString
class DuplicateAccountSearch
  attr_accessor :accountRoleTypes
  attr_accessor :address
  attr_accessor :allowEmailOnlyMatch
  attr_accessor :email
  attr_accessor :name
  attr_accessor :phoneNumber

  def initialize(accountRoleTypes = nil, address = nil, allowEmailOnlyMatch = nil, email = nil, name = nil, phoneNumber = nil)
    @accountRoleTypes = accountRoleTypes
    @address = address
    @allowEmailOnlyMatch = allowEmailOnlyMatch
    @email = email
    @name = name
    @phoneNumber = phoneNumber
  end
end

# {etapestryAPI/service}DynamicQuery
#   accountType - SOAP::SOAPInt
#   applicationGroup - SOAP::SOAPString
#   baseQuery - SOAP::SOAPString
#   involvePrivacySettings - SOAP::SOAPBoolean
#   matchAny - SOAP::SOAPBoolean
#   personaOption - SOAP::SOAPString
#   returnType - SOAP::SOAPInt
#   searchCriteria - Etapper::API::ArrayOfSearchCriteria
class DynamicQuery
  attr_accessor :accountType
  attr_accessor :applicationGroup
  attr_accessor :baseQuery
  attr_accessor :involvePrivacySettings
  attr_accessor :matchAny
  attr_accessor :personaOption
  attr_accessor :returnType
  attr_accessor :searchCriteria

  def initialize(accountType = nil, applicationGroup = nil, baseQuery = nil, involvePrivacySettings = nil, matchAny = nil, personaOption = nil, returnType = nil, searchCriteria = nil)
    @accountType = accountType
    @applicationGroup = applicationGroup
    @baseQuery = baseQuery
    @involvePrivacySettings = involvePrivacySettings
    @matchAny = matchAny
    @personaOption = personaOption
    @returnType = returnType
    @searchCriteria = searchCriteria
  end
end

# {etapestryAPI/service}QueryResultStats
#   gifted - SOAP::SOAPDouble
#   journalEntryCount - SOAP::SOAPInt
#   pledged - SOAP::SOAPDouble
#   raised - SOAP::SOAPDouble
#   received - SOAP::SOAPDouble
#   transactionCount - SOAP::SOAPInt
class QueryResultStats
  attr_accessor :gifted
  attr_accessor :journalEntryCount
  attr_accessor :pledged
  attr_accessor :raised
  attr_accessor :received
  attr_accessor :transactionCount

  def initialize(gifted = nil, journalEntryCount = nil, pledged = nil, raised = nil, received = nil, transactionCount = nil)
    @gifted = gifted
    @journalEntryCount = journalEntryCount
    @pledged = pledged
    @raised = raised
    @received = received
    @transactionCount = transactionCount
  end
end

# {etapestryAPI/service}PagedDynamicQueryResultsRequest
#   clearCache - SOAP::SOAPBoolean
#   count - SOAP::SOAPInt
#   start - SOAP::SOAPInt
#   accountType - SOAP::SOAPInt
#   applicationGroup - SOAP::SOAPString
#   baseQuery - SOAP::SOAPString
#   involvePrivacySettings - SOAP::SOAPBoolean
#   matchAny - SOAP::SOAPBoolean
#   personaOption - SOAP::SOAPString
#   returnType - SOAP::SOAPInt
#   searchCriteria - Etapper::API::ArrayOfSearchCriteria
#   sortOptions - Etapper::API::ArrayOfSortOption
class PagedDynamicQueryResultsRequest
  attr_accessor :clearCache
  attr_accessor :count
  attr_accessor :start
  attr_accessor :accountType
  attr_accessor :applicationGroup
  attr_accessor :baseQuery
  attr_accessor :involvePrivacySettings
  attr_accessor :matchAny
  attr_accessor :personaOption
  attr_accessor :returnType
  attr_accessor :searchCriteria
  attr_accessor :sortOptions

  def initialize(clearCache = nil, count = nil, start = nil, accountType = nil, applicationGroup = nil, baseQuery = nil, involvePrivacySettings = nil, matchAny = nil, personaOption = nil, returnType = nil, searchCriteria = nil, sortOptions = nil)
    @clearCache = clearCache
    @count = count
    @start = start
    @accountType = accountType
    @applicationGroup = applicationGroup
    @baseQuery = baseQuery
    @involvePrivacySettings = involvePrivacySettings
    @matchAny = matchAny
    @personaOption = personaOption
    @returnType = returnType
    @searchCriteria = searchCriteria
    @sortOptions = sortOptions
  end
end

# {etapestryAPI/service}SortOption
#   ascending - SOAP::SOAPBoolean
#   field - SOAP::SOAPString
class SortOption
  attr_accessor :ascending
  attr_accessor :field

  def initialize(ascending = nil, field = nil)
    @ascending = ascending
    @field = field
  end
end

# {etapestryAPI/service}EntityRole
#   accountRoleType - SOAP::SOAPInt
#   createdDate - SOAP::SOAPDateTime
#   definedValues - Etapper::API::ArrayOfDefinedValue
#   donorRecognitionName - SOAP::SOAPString
#   donorRecognitionType - SOAP::SOAPInt
#   donorRoleRef - SOAP::SOAPString
#   emailStatus - SOAP::SOAPInt
#   householdStatus - SOAP::SOAPInt
#   id - SOAP::SOAPInt
#   lastModifiedDate - SOAP::SOAPDateTime
#   loginId - SOAP::SOAPString
#   loyaltyRating - SOAP::SOAPInt
#   name - SOAP::SOAPString
#   personas - Etapper::API::ArrayOfPersona
#   ref - SOAP::SOAPString
#   sortName - SOAP::SOAPString
#   teamRoleRef - SOAP::SOAPString
#   tributeRoleRef - SOAP::SOAPString
#   userRoleRef - SOAP::SOAPString
class EntityRole
  attr_accessor :accountRoleType
  attr_accessor :createdDate
  attr_accessor :definedValues
  attr_accessor :donorRecognitionName
  attr_accessor :donorRecognitionType
  attr_accessor :donorRoleRef
  attr_accessor :emailStatus
  attr_accessor :householdStatus
  attr_accessor :id
  attr_accessor :lastModifiedDate
  attr_accessor :loginId
  attr_accessor :loyaltyRating
  attr_accessor :name
  attr_accessor :personas
  attr_accessor :ref
  attr_accessor :sortName
  attr_accessor :teamRoleRef
  attr_accessor :tributeRoleRef
  attr_accessor :userRoleRef

  def initialize(accountRoleType = nil, createdDate = nil, definedValues = nil, donorRecognitionName = nil, donorRecognitionType = nil, donorRoleRef = nil, emailStatus = nil, householdStatus = nil, id = nil, lastModifiedDate = nil, loginId = nil, loyaltyRating = nil, name = nil, personas = nil, ref = nil, sortName = nil, teamRoleRef = nil, tributeRoleRef = nil, userRoleRef = nil)
    @accountRoleType = accountRoleType
    @createdDate = createdDate
    @definedValues = definedValues
    @donorRecognitionName = donorRecognitionName
    @donorRecognitionType = donorRecognitionType
    @donorRoleRef = donorRoleRef
    @emailStatus = emailStatus
    @householdStatus = householdStatus
    @id = id
    @lastModifiedDate = lastModifiedDate
    @loginId = loginId
    @loyaltyRating = loyaltyRating
    @name = name
    @personas = personas
    @ref = ref
    @sortName = sortName
    @teamRoleRef = teamRoleRef
    @tributeRoleRef = tributeRoleRef
    @userRoleRef = userRoleRef
  end
end

# {etapestryAPI/service}Persona
#   address - SOAP::SOAPString
#   city - SOAP::SOAPString
#   country - SOAP::SOAPString
#   county - SOAP::SOAPString
#   createdDate - SOAP::SOAPDateTime
#   definedValues - Etapper::API::ArrayOfDefinedValue
#   email - SOAP::SOAPString
#   lastModifiedDate - SOAP::SOAPDateTime
#   longSalutation - SOAP::SOAPString
#   note - SOAP::SOAPString
#   phones - Etapper::API::ArrayOfPhone
#   postalCode - SOAP::SOAPString
#   primary - SOAP::SOAPBoolean
#   ref - SOAP::SOAPString
#   shortSalutation - SOAP::SOAPString
#   state - SOAP::SOAPString
#   stickyNoteType - SOAP::SOAPString
#   type - SOAP::SOAPString
#   webAddress - SOAP::SOAPString
class Persona
  attr_accessor :address
  attr_accessor :city
  attr_accessor :country
  attr_accessor :county
  attr_accessor :createdDate
  attr_accessor :definedValues
  attr_accessor :email
  attr_accessor :lastModifiedDate
  attr_accessor :longSalutation
  attr_accessor :note
  attr_accessor :phones
  attr_accessor :postalCode
  attr_accessor :primary
  attr_accessor :ref
  attr_accessor :shortSalutation
  attr_accessor :state
  attr_accessor :stickyNoteType
  attr_accessor :type
  attr_accessor :webAddress

  def initialize(address = nil, city = nil, country = nil, county = nil, createdDate = nil, definedValues = nil, email = nil, lastModifiedDate = nil, longSalutation = nil, note = nil, phones = nil, postalCode = nil, primary = nil, ref = nil, shortSalutation = nil, state = nil, stickyNoteType = nil, type = nil, webAddress = nil)
    @address = address
    @city = city
    @country = country
    @county = county
    @createdDate = createdDate
    @definedValues = definedValues
    @email = email
    @lastModifiedDate = lastModifiedDate
    @longSalutation = longSalutation
    @note = note
    @phones = phones
    @postalCode = postalCode
    @primary = primary
    @ref = ref
    @shortSalutation = shortSalutation
    @state = state
    @stickyNoteType = stickyNoteType
    @type = type
    @webAddress = webAddress
  end
end

# {etapestryAPI/service}PagedExistingQueryResultsRequest
#   clearCache - SOAP::SOAPBoolean
#   count - SOAP::SOAPInt
#   start - SOAP::SOAPInt
#   accountType - SOAP::SOAPInt
#   query - SOAP::SOAPString
#   sortOptions - Etapper::API::ArrayOfSortOption
class PagedExistingQueryResultsRequest
  attr_accessor :clearCache
  attr_accessor :count
  attr_accessor :start
  attr_accessor :accountType
  attr_accessor :query
  attr_accessor :sortOptions

  def initialize(clearCache = nil, count = nil, start = nil, accountType = nil, query = nil, sortOptions = nil)
    @clearCache = clearCache
    @count = count
    @start = start
    @accountType = accountType
    @query = query
    @sortOptions = sortOptions
  end
end

# {etapestryAPI/service}PagedJournalEntriesRequest
#   clearCache - SOAP::SOAPBoolean
#   count - SOAP::SOAPInt
#   start - SOAP::SOAPInt
#   accountRef - SOAP::SOAPString
#   baseQuery - SOAP::SOAPString
#   endDate - SOAP::SOAPDateTime
#   startDate - SOAP::SOAPDateTime
#   types - Etapper::API::ArrayOfint
class PagedJournalEntriesRequest
  attr_accessor :clearCache
  attr_accessor :count
  attr_accessor :start
  attr_accessor :accountRef
  attr_accessor :baseQuery
  attr_accessor :endDate
  attr_accessor :startDate
  attr_accessor :types

  def initialize(clearCache = nil, count = nil, start = nil, accountRef = nil, baseQuery = nil, endDate = nil, startDate = nil, types = nil)
    @clearCache = clearCache
    @count = count
    @start = start
    @accountRef = accountRef
    @baseQuery = baseQuery
    @endDate = endDate
    @startDate = startDate
    @types = types
  end
end

# {etapestryAPI/service}JournalSummary
#   accountName - SOAP::SOAPString
#   accountRef - SOAP::SOAPString
#   lifetimeGivingTotal - SOAP::SOAPDouble
#   lifetimePledgedTotal - SOAP::SOAPDouble
#   lifetimeTransactionCount - SOAP::SOAPInt
#   oneYearAgoGivingAmount - SOAP::SOAPDouble
#   oneYearAgoPledgedAmount - SOAP::SOAPDouble
#   oneYearAgoTransactionCount - SOAP::SOAPInt
#   yearToDateGivingTotal - SOAP::SOAPDouble
#   yearToDatePledgedTotal - SOAP::SOAPDouble
#   yearToDateTransactionCount - SOAP::SOAPInt
class JournalSummary
  attr_accessor :accountName
  attr_accessor :accountRef
  attr_accessor :lifetimeGivingTotal
  attr_accessor :lifetimePledgedTotal
  attr_accessor :lifetimeTransactionCount
  attr_accessor :oneYearAgoGivingAmount
  attr_accessor :oneYearAgoPledgedAmount
  attr_accessor :oneYearAgoTransactionCount
  attr_accessor :yearToDateGivingTotal
  attr_accessor :yearToDatePledgedTotal
  attr_accessor :yearToDateTransactionCount

  def initialize(accountName = nil, accountRef = nil, lifetimeGivingTotal = nil, lifetimePledgedTotal = nil, lifetimeTransactionCount = nil, oneYearAgoGivingAmount = nil, oneYearAgoPledgedAmount = nil, oneYearAgoTransactionCount = nil, yearToDateGivingTotal = nil, yearToDatePledgedTotal = nil, yearToDateTransactionCount = nil)
    @accountName = accountName
    @accountRef = accountRef
    @lifetimeGivingTotal = lifetimeGivingTotal
    @lifetimePledgedTotal = lifetimePledgedTotal
    @lifetimeTransactionCount = lifetimeTransactionCount
    @oneYearAgoGivingAmount = oneYearAgoGivingAmount
    @oneYearAgoPledgedAmount = oneYearAgoPledgedAmount
    @oneYearAgoTransactionCount = oneYearAgoTransactionCount
    @yearToDateGivingTotal = yearToDateGivingTotal
    @yearToDatePledgedTotal = yearToDatePledgedTotal
    @yearToDateTransactionCount = yearToDateTransactionCount
  end
end

# {etapestryAPI/service}PrivacyPreferences
#   accountPrivacyPreference - Etapper::API::PrivacyPreference
#   accountRef - SOAP::SOAPString
#   personaPrivacyPreferences - Etapper::API::ArrayOfPrivacyPreference
class PrivacyPreferences
  attr_accessor :accountPrivacyPreference
  attr_accessor :accountRef
  attr_accessor :personaPrivacyPreferences

  def initialize(accountPrivacyPreference = nil, accountRef = nil, personaPrivacyPreferences = nil)
    @accountPrivacyPreference = accountPrivacyPreference
    @accountRef = accountRef
    @personaPrivacyPreferences = personaPrivacyPreferences
  end
end

# {etapestryAPI/service}PrivacyPreference
#   accountDefined - SOAP::SOAPBoolean
#   applicationGroup - SOAP::SOAPString
#   hiddenFields - Etapper::API::ArrayOfstring
#   personaType - SOAP::SOAPString
#   status - SOAP::SOAPInt
class PrivacyPreference
  attr_accessor :accountDefined
  attr_accessor :applicationGroup
  attr_accessor :hiddenFields
  attr_accessor :personaType
  attr_accessor :status

  def initialize(accountDefined = nil, applicationGroup = nil, hiddenFields = nil, personaType = nil, status = nil)
    @accountDefined = accountDefined
    @applicationGroup = applicationGroup
    @hiddenFields = hiddenFields
    @personaType = personaType
    @status = status
  end
end

# {etapestryAPI/service}OrganizationPreferences
#   passwordMinimumLength - SOAP::SOAPInt
#   passwordRequireComplexity - SOAP::SOAPBoolean
class OrganizationPreferences
  attr_accessor :passwordMinimumLength
  attr_accessor :passwordRequireComplexity

  def initialize(passwordMinimumLength = nil, passwordRequireComplexity = nil)
    @passwordMinimumLength = passwordMinimumLength
    @passwordRequireComplexity = passwordRequireComplexity
  end
end

# {etapestryAPI/service}PhoneAThonList
#   currentCount - SOAP::SOAPInt
#   description - SOAP::SOAPString
#   enabled - SOAP::SOAPBoolean
#   initialCount - SOAP::SOAPInt
#   lastGenerated - SOAP::SOAPDateTime
#   name - SOAP::SOAPString
#   ref - SOAP::SOAPString
class PhoneAThonList
  attr_accessor :currentCount
  attr_accessor :description
  attr_accessor :enabled
  attr_accessor :initialCount
  attr_accessor :lastGenerated
  attr_accessor :name
  attr_accessor :ref

  def initialize(currentCount = nil, description = nil, enabled = nil, initialCount = nil, lastGenerated = nil, name = nil, ref = nil)
    @currentCount = currentCount
    @description = description
    @enabled = enabled
    @initialCount = initialCount
    @lastGenerated = lastGenerated
    @name = name
    @ref = ref
  end
end

# {etapestryAPI/service}Purchase
#   accountName - SOAP::SOAPString
#   accountRef - SOAP::SOAPString
#   amount - SOAP::SOAPDouble
#   approach - SOAP::SOAPString
#   attachments - Etapper::API::ArrayOfAttachment
#   campaign - SOAP::SOAPString
#   createdDate - SOAP::SOAPDateTime
#   date - SOAP::SOAPDateTime
#   definedValues - Etapper::API::ArrayOfDefinedValue
#   final - SOAP::SOAPBoolean
#   fund - SOAP::SOAPString
#   lastModifiedDate - SOAP::SOAPDateTime
#   letter - SOAP::SOAPString
#   nonDeductibleAmount - SOAP::SOAPDouble
#   note - SOAP::SOAPString
#   offsettingRef - SOAP::SOAPString
#   orderDetail - Etapper::API::OrderDetail
#   orderInfo - Etapper::API::OrderInfo
#   receipt - SOAP::SOAPString
#   recognitionName - SOAP::SOAPString
#   recognitionType - SOAP::SOAPInt
#   ref - SOAP::SOAPString
#   segmentedTransactionRef - SOAP::SOAPString
#   softCredit - Etapper::API::SoftCredit
#   type - SOAP::SOAPInt
#   valuable - Etapper::API::Valuable
class Purchase
  attr_accessor :accountName
  attr_accessor :accountRef
  attr_accessor :amount
  attr_accessor :approach
  attr_accessor :attachments
  attr_accessor :campaign
  attr_accessor :createdDate
  attr_accessor :date
  attr_accessor :definedValues
  attr_accessor :final
  attr_accessor :fund
  attr_accessor :lastModifiedDate
  attr_accessor :letter
  attr_accessor :nonDeductibleAmount
  attr_accessor :note
  attr_accessor :offsettingRef
  attr_accessor :orderDetail
  attr_accessor :orderInfo
  attr_accessor :receipt
  attr_accessor :recognitionName
  attr_accessor :recognitionType
  attr_accessor :ref
  attr_accessor :segmentedTransactionRef
  attr_accessor :softCredit
  attr_accessor :type
  attr_accessor :valuable

  def initialize(accountName = nil, accountRef = nil, amount = nil, approach = nil, attachments = nil, campaign = nil, createdDate = nil, date = nil, definedValues = nil, final = nil, fund = nil, lastModifiedDate = nil, letter = nil, nonDeductibleAmount = nil, note = nil, offsettingRef = nil, orderDetail = nil, orderInfo = nil, receipt = nil, recognitionName = nil, recognitionType = nil, ref = nil, segmentedTransactionRef = nil, softCredit = nil, type = nil, valuable = nil)
    @accountName = accountName
    @accountRef = accountRef
    @amount = amount
    @approach = approach
    @attachments = attachments
    @campaign = campaign
    @createdDate = createdDate
    @date = date
    @definedValues = definedValues
    @final = final
    @fund = fund
    @lastModifiedDate = lastModifiedDate
    @letter = letter
    @nonDeductibleAmount = nonDeductibleAmount
    @note = note
    @offsettingRef = offsettingRef
    @orderDetail = orderDetail
    @orderInfo = orderInfo
    @receipt = receipt
    @recognitionName = recognitionName
    @recognitionType = recognitionType
    @ref = ref
    @segmentedTransactionRef = segmentedTransactionRef
    @softCredit = softCredit
    @type = type
    @valuable = valuable
  end
end

# {etapestryAPI/service}RecurringGiftSchedule
#   accountName - SOAP::SOAPString
#   accountRef - SOAP::SOAPString
#   amount - SOAP::SOAPDouble
#   approach - SOAP::SOAPString
#   attachments - Etapper::API::ArrayOfAttachment
#   campaign - SOAP::SOAPString
#   createdDate - SOAP::SOAPDateTime
#   date - SOAP::SOAPDateTime
#   definedValues - Etapper::API::ArrayOfDefinedValue
#   final - SOAP::SOAPBoolean
#   fund - SOAP::SOAPString
#   fundraiser - SOAP::SOAPString
#   lastModifiedDate - SOAP::SOAPDateTime
#   letter - SOAP::SOAPString
#   linkedGiftsAmount - SOAP::SOAPDouble
#   nextGiftAmount - SOAP::SOAPDouble
#   nextGiftDate - SOAP::SOAPDateTime
#   nonDeductibleAmount - SOAP::SOAPDouble
#   note - SOAP::SOAPString
#   originalAccountName - SOAP::SOAPString
#   originalAccountRef - SOAP::SOAPString
#   originalTransactionRef - SOAP::SOAPString
#   receipt - SOAP::SOAPString
#   recognitionName - SOAP::SOAPString
#   recognitionType - SOAP::SOAPInt
#   ref - SOAP::SOAPString
#   schedule - Etapper::API::StandardPaymentSchedule
#   scheduledValuable - Etapper::API::Valuable
#   softCredit - Etapper::API::SoftCredit
#   tributeAccountName - SOAP::SOAPString
#   tributeAccountRef - SOAP::SOAPString
#   type - SOAP::SOAPInt
class RecurringGiftSchedule
  attr_accessor :accountName
  attr_accessor :accountRef
  attr_accessor :amount
  attr_accessor :approach
  attr_accessor :attachments
  attr_accessor :campaign
  attr_accessor :createdDate
  attr_accessor :date
  attr_accessor :definedValues
  attr_accessor :final
  attr_accessor :fund
  attr_accessor :fundraiser
  attr_accessor :lastModifiedDate
  attr_accessor :letter
  attr_accessor :linkedGiftsAmount
  attr_accessor :nextGiftAmount
  attr_accessor :nextGiftDate
  attr_accessor :nonDeductibleAmount
  attr_accessor :note
  attr_accessor :originalAccountName
  attr_accessor :originalAccountRef
  attr_accessor :originalTransactionRef
  attr_accessor :receipt
  attr_accessor :recognitionName
  attr_accessor :recognitionType
  attr_accessor :ref
  attr_accessor :schedule
  attr_accessor :scheduledValuable
  attr_accessor :softCredit
  attr_accessor :tributeAccountName
  attr_accessor :tributeAccountRef
  attr_accessor :type

  def initialize(accountName = nil, accountRef = nil, amount = nil, approach = nil, attachments = nil, campaign = nil, createdDate = nil, date = nil, definedValues = nil, final = nil, fund = nil, fundraiser = nil, lastModifiedDate = nil, letter = nil, linkedGiftsAmount = nil, nextGiftAmount = nil, nextGiftDate = nil, nonDeductibleAmount = nil, note = nil, originalAccountName = nil, originalAccountRef = nil, originalTransactionRef = nil, receipt = nil, recognitionName = nil, recognitionType = nil, ref = nil, schedule = nil, scheduledValuable = nil, softCredit = nil, tributeAccountName = nil, tributeAccountRef = nil, type = nil)
    @accountName = accountName
    @accountRef = accountRef
    @amount = amount
    @approach = approach
    @attachments = attachments
    @campaign = campaign
    @createdDate = createdDate
    @date = date
    @definedValues = definedValues
    @final = final
    @fund = fund
    @fundraiser = fundraiser
    @lastModifiedDate = lastModifiedDate
    @letter = letter
    @linkedGiftsAmount = linkedGiftsAmount
    @nextGiftAmount = nextGiftAmount
    @nextGiftDate = nextGiftDate
    @nonDeductibleAmount = nonDeductibleAmount
    @note = note
    @originalAccountName = originalAccountName
    @originalAccountRef = originalAccountRef
    @originalTransactionRef = originalTransactionRef
    @receipt = receipt
    @recognitionName = recognitionName
    @recognitionType = recognitionType
    @ref = ref
    @schedule = schedule
    @scheduledValuable = scheduledValuable
    @softCredit = softCredit
    @tributeAccountName = tributeAccountName
    @tributeAccountRef = tributeAccountRef
    @type = type
  end
end

# {etapestryAPI/service}SegmentedDonation
#   accountName - SOAP::SOAPString
#   accountRef - SOAP::SOAPString
#   createdDate - SOAP::SOAPDateTime
#   date - SOAP::SOAPDateTime
#   final - SOAP::SOAPBoolean
#   lastModifiedDate - SOAP::SOAPDateTime
#   offsettingRef - SOAP::SOAPString
#   ref - SOAP::SOAPString
#   segments - Etapper::API::ArrayOfanyType
#   totalAmount - SOAP::SOAPDouble
#   totalNonDeductibleAmount - SOAP::SOAPDouble
#   type - SOAP::SOAPInt
class SegmentedDonation
  attr_accessor :accountName
  attr_accessor :accountRef
  attr_accessor :createdDate
  attr_accessor :date
  attr_accessor :final
  attr_accessor :lastModifiedDate
  attr_accessor :offsettingRef
  attr_accessor :ref
  attr_accessor :segments
  attr_accessor :totalAmount
  attr_accessor :totalNonDeductibleAmount
  attr_accessor :type

  def initialize(accountName = nil, accountRef = nil, createdDate = nil, date = nil, final = nil, lastModifiedDate = nil, offsettingRef = nil, ref = nil, segments = nil, totalAmount = nil, totalNonDeductibleAmount = nil, type = nil)
    @accountName = accountName
    @accountRef = accountRef
    @createdDate = createdDate
    @date = date
    @final = final
    @lastModifiedDate = lastModifiedDate
    @offsettingRef = offsettingRef
    @ref = ref
    @segments = segments
    @totalAmount = totalAmount
    @totalNonDeductibleAmount = totalNonDeductibleAmount
    @type = type
  end
end

# {etapestryAPI/service}SegmentedOrder
#   accountName - SOAP::SOAPString
#   accountRef - SOAP::SOAPString
#   createdDate - SOAP::SOAPDateTime
#   date - SOAP::SOAPDateTime
#   final - SOAP::SOAPBoolean
#   lastModifiedDate - SOAP::SOAPDateTime
#   offsettingRef - SOAP::SOAPString
#   orderInfo - Etapper::API::OrderInfo
#   ref - SOAP::SOAPString
#   segments - Etapper::API::ArrayOfanyType
#   totalAmount - SOAP::SOAPDouble
#   totalNonDeductibleAmount - SOAP::SOAPDouble
#   type - SOAP::SOAPInt
class SegmentedOrder
  attr_accessor :accountName
  attr_accessor :accountRef
  attr_accessor :createdDate
  attr_accessor :date
  attr_accessor :final
  attr_accessor :lastModifiedDate
  attr_accessor :offsettingRef
  attr_accessor :orderInfo
  attr_accessor :ref
  attr_accessor :segments
  attr_accessor :totalAmount
  attr_accessor :totalNonDeductibleAmount
  attr_accessor :type

  def initialize(accountName = nil, accountRef = nil, createdDate = nil, date = nil, final = nil, lastModifiedDate = nil, offsettingRef = nil, orderInfo = nil, ref = nil, segments = nil, totalAmount = nil, totalNonDeductibleAmount = nil, type = nil)
    @accountName = accountName
    @accountRef = accountRef
    @createdDate = createdDate
    @date = date
    @final = final
    @lastModifiedDate = lastModifiedDate
    @offsettingRef = offsettingRef
    @orderInfo = orderInfo
    @ref = ref
    @segments = segments
    @totalAmount = totalAmount
    @totalNonDeductibleAmount = totalNonDeductibleAmount
    @type = type
  end
end

# {etapestryAPI/service}SegmentedPledge
#   accountName - SOAP::SOAPString
#   accountRef - SOAP::SOAPString
#   consolidatedCustomSchedule - Etapper::API::CustomPaymentSchedule
#   createdDate - SOAP::SOAPDateTime
#   date - SOAP::SOAPDateTime
#   final - SOAP::SOAPBoolean
#   lastModifiedDate - SOAP::SOAPDateTime
#   offsettingRef - SOAP::SOAPString
#   ref - SOAP::SOAPString
#   segments - Etapper::API::ArrayOfanyType
#   totalAmount - SOAP::SOAPDouble
#   totalNonDeductibleAmount - SOAP::SOAPDouble
#   type - SOAP::SOAPInt
#   upgraded - SOAP::SOAPBoolean
class SegmentedPledge
  attr_accessor :accountName
  attr_accessor :accountRef
  attr_accessor :consolidatedCustomSchedule
  attr_accessor :createdDate
  attr_accessor :date
  attr_accessor :final
  attr_accessor :lastModifiedDate
  attr_accessor :offsettingRef
  attr_accessor :ref
  attr_accessor :segments
  attr_accessor :totalAmount
  attr_accessor :totalNonDeductibleAmount
  attr_accessor :type
  attr_accessor :upgraded

  def initialize(accountName = nil, accountRef = nil, consolidatedCustomSchedule = nil, createdDate = nil, date = nil, final = nil, lastModifiedDate = nil, offsettingRef = nil, ref = nil, segments = nil, totalAmount = nil, totalNonDeductibleAmount = nil, type = nil, upgraded = nil)
    @accountName = accountName
    @accountRef = accountRef
    @consolidatedCustomSchedule = consolidatedCustomSchedule
    @createdDate = createdDate
    @date = date
    @final = final
    @lastModifiedDate = lastModifiedDate
    @offsettingRef = offsettingRef
    @ref = ref
    @segments = segments
    @totalAmount = totalAmount
    @totalNonDeductibleAmount = totalNonDeductibleAmount
    @type = type
    @upgraded = upgraded
  end
end

# {etapestryAPI/service}Shipping
#   accountName - SOAP::SOAPString
#   accountRef - SOAP::SOAPString
#   amount - SOAP::SOAPDouble
#   approach - SOAP::SOAPString
#   attachments - Etapper::API::ArrayOfAttachment
#   campaign - SOAP::SOAPString
#   createdDate - SOAP::SOAPDateTime
#   date - SOAP::SOAPDateTime
#   definedValues - Etapper::API::ArrayOfDefinedValue
#   final - SOAP::SOAPBoolean
#   fund - SOAP::SOAPString
#   lastModifiedDate - SOAP::SOAPDateTime
#   letter - SOAP::SOAPString
#   nonDeductibleAmount - SOAP::SOAPDouble
#   note - SOAP::SOAPString
#   offsettingRef - SOAP::SOAPString
#   receipt - SOAP::SOAPString
#   recognitionName - SOAP::SOAPString
#   recognitionType - SOAP::SOAPInt
#   ref - SOAP::SOAPString
#   segmentedTransactionRef - SOAP::SOAPString
#   softCredit - Etapper::API::SoftCredit
#   type - SOAP::SOAPInt
#   valuable - Etapper::API::Valuable
class Shipping
  attr_accessor :accountName
  attr_accessor :accountRef
  attr_accessor :amount
  attr_accessor :approach
  attr_accessor :attachments
  attr_accessor :campaign
  attr_accessor :createdDate
  attr_accessor :date
  attr_accessor :definedValues
  attr_accessor :final
  attr_accessor :fund
  attr_accessor :lastModifiedDate
  attr_accessor :letter
  attr_accessor :nonDeductibleAmount
  attr_accessor :note
  attr_accessor :offsettingRef
  attr_accessor :receipt
  attr_accessor :recognitionName
  attr_accessor :recognitionType
  attr_accessor :ref
  attr_accessor :segmentedTransactionRef
  attr_accessor :softCredit
  attr_accessor :type
  attr_accessor :valuable

  def initialize(accountName = nil, accountRef = nil, amount = nil, approach = nil, attachments = nil, campaign = nil, createdDate = nil, date = nil, definedValues = nil, final = nil, fund = nil, lastModifiedDate = nil, letter = nil, nonDeductibleAmount = nil, note = nil, offsettingRef = nil, receipt = nil, recognitionName = nil, recognitionType = nil, ref = nil, segmentedTransactionRef = nil, softCredit = nil, type = nil, valuable = nil)
    @accountName = accountName
    @accountRef = accountRef
    @amount = amount
    @approach = approach
    @attachments = attachments
    @campaign = campaign
    @createdDate = createdDate
    @date = date
    @definedValues = definedValues
    @final = final
    @fund = fund
    @lastModifiedDate = lastModifiedDate
    @letter = letter
    @nonDeductibleAmount = nonDeductibleAmount
    @note = note
    @offsettingRef = offsettingRef
    @receipt = receipt
    @recognitionName = recognitionName
    @recognitionType = recognitionType
    @ref = ref
    @segmentedTransactionRef = segmentedTransactionRef
    @softCredit = softCredit
    @type = type
    @valuable = valuable
  end
end

# {etapestryAPI/service}Tax
#   accountName - SOAP::SOAPString
#   accountRef - SOAP::SOAPString
#   amount - SOAP::SOAPDouble
#   approach - SOAP::SOAPString
#   attachments - Etapper::API::ArrayOfAttachment
#   campaign - SOAP::SOAPString
#   createdDate - SOAP::SOAPDateTime
#   date - SOAP::SOAPDateTime
#   definedValues - Etapper::API::ArrayOfDefinedValue
#   final - SOAP::SOAPBoolean
#   fund - SOAP::SOAPString
#   lastModifiedDate - SOAP::SOAPDateTime
#   letter - SOAP::SOAPString
#   nonDeductibleAmount - SOAP::SOAPDouble
#   note - SOAP::SOAPString
#   offsettingRef - SOAP::SOAPString
#   receipt - SOAP::SOAPString
#   recognitionName - SOAP::SOAPString
#   recognitionType - SOAP::SOAPInt
#   ref - SOAP::SOAPString
#   segmentedTransactionRef - SOAP::SOAPString
#   softCredit - Etapper::API::SoftCredit
#   taxRate - SOAP::SOAPDouble
#   taxRegion - SOAP::SOAPString
#   type - SOAP::SOAPInt
#   valuable - Etapper::API::Valuable
class Tax
  attr_accessor :accountName
  attr_accessor :accountRef
  attr_accessor :amount
  attr_accessor :approach
  attr_accessor :attachments
  attr_accessor :campaign
  attr_accessor :createdDate
  attr_accessor :date
  attr_accessor :definedValues
  attr_accessor :final
  attr_accessor :fund
  attr_accessor :lastModifiedDate
  attr_accessor :letter
  attr_accessor :nonDeductibleAmount
  attr_accessor :note
  attr_accessor :offsettingRef
  attr_accessor :receipt
  attr_accessor :recognitionName
  attr_accessor :recognitionType
  attr_accessor :ref
  attr_accessor :segmentedTransactionRef
  attr_accessor :softCredit
  attr_accessor :taxRate
  attr_accessor :taxRegion
  attr_accessor :type
  attr_accessor :valuable

  def initialize(accountName = nil, accountRef = nil, amount = nil, approach = nil, attachments = nil, campaign = nil, createdDate = nil, date = nil, definedValues = nil, final = nil, fund = nil, lastModifiedDate = nil, letter = nil, nonDeductibleAmount = nil, note = nil, offsettingRef = nil, receipt = nil, recognitionName = nil, recognitionType = nil, ref = nil, segmentedTransactionRef = nil, softCredit = nil, taxRate = nil, taxRegion = nil, type = nil, valuable = nil)
    @accountName = accountName
    @accountRef = accountRef
    @amount = amount
    @approach = approach
    @attachments = attachments
    @campaign = campaign
    @createdDate = createdDate
    @date = date
    @definedValues = definedValues
    @final = final
    @fund = fund
    @lastModifiedDate = lastModifiedDate
    @letter = letter
    @nonDeductibleAmount = nonDeductibleAmount
    @note = note
    @offsettingRef = offsettingRef
    @receipt = receipt
    @recognitionName = recognitionName
    @recognitionType = recognitionType
    @ref = ref
    @segmentedTransactionRef = segmentedTransactionRef
    @softCredit = softCredit
    @taxRate = taxRate
    @taxRegion = taxRegion
    @type = type
    @valuable = valuable
  end
end

# {etapestryAPI/service}LinkedTransaction
#   softCreditAccount - Etapper::API::Account
#   transaction - (any)
#   tributeAccount - Etapper::API::Account
class LinkedTransaction
  attr_accessor :softCreditAccount
  attr_accessor :transaction
  attr_accessor :tributeAccount

  def initialize(softCreditAccount = nil, transaction = nil, tributeAccount = nil)
    @softCreditAccount = softCreditAccount
    @transaction = transaction
    @tributeAccount = tributeAccount
  end
end

# {etapestryAPI/service}AccountChangeRequest
#   account - Etapper::API::Account
#   createChangeNote - SOAP::SOAPBoolean
#   createFieldAndValues - SOAP::SOAPBoolean
#   notificationEmail - SOAP::SOAPString
#   update - SOAP::SOAPBoolean
class AccountChangeRequest
  attr_accessor :account
  attr_accessor :createChangeNote
  attr_accessor :createFieldAndValues
  attr_accessor :notificationEmail
  attr_accessor :update

  def initialize(account = nil, createChangeNote = nil, createFieldAndValues = nil, notificationEmail = nil, update = nil)
    @account = account
    @createChangeNote = createChangeNote
    @createFieldAndValues = createFieldAndValues
    @notificationEmail = notificationEmail
    @update = update
  end
end

# {etapestryAPI/service}CartOrderRequest
#   account - Etapper::API::Account
#   createFieldAndValues - SOAP::SOAPBoolean
#   journalEntries - Etapper::API::ArrayOfanyType
#   populateDataSource - SOAP::SOAPBoolean
#   processor - SOAP::SOAPString
#   skipSoftErrors - SOAP::SOAPBoolean
#   softErrorEmail - SOAP::SOAPString
#   validateLicense - SOAP::SOAPBoolean
class CartOrderRequest
  attr_accessor :account
  attr_accessor :createFieldAndValues
  attr_accessor :journalEntries
  attr_accessor :populateDataSource
  attr_accessor :processor
  attr_accessor :skipSoftErrors
  attr_accessor :softErrorEmail
  attr_accessor :validateLicense

  def initialize(account = nil, createFieldAndValues = nil, journalEntries = nil, populateDataSource = nil, processor = nil, skipSoftErrors = nil, softErrorEmail = nil, validateLicense = nil)
    @account = account
    @createFieldAndValues = createFieldAndValues
    @journalEntries = journalEntries
    @populateDataSource = populateDataSource
    @processor = processor
    @skipSoftErrors = skipSoftErrors
    @softErrorEmail = softErrorEmail
    @validateLicense = validateLicense
  end
end

# {etapestryAPI/service}CartOrderResponse
#   accountNumber - SOAP::SOAPInt
#   accountRef - SOAP::SOAPString
#   createdNewAccount - SOAP::SOAPBoolean
#   journalEntryRefs - Etapper::API::ArrayOfstring
class CartOrderResponse
  attr_accessor :accountNumber
  attr_accessor :accountRef
  attr_accessor :createdNewAccount
  attr_accessor :journalEntryRefs

  def initialize(accountNumber = nil, accountRef = nil, createdNewAccount = nil, journalEntryRefs = nil)
    @accountNumber = accountNumber
    @accountRef = accountRef
    @createdNewAccount = createdNewAccount
    @journalEntryRefs = journalEntryRefs
  end
end

# {etapestryAPI/service}EcommerceRequest
#   account - Etapper::API::Account
#   confirmationMessageFooter - SOAP::SOAPString
#   confirmationMessageHeader - SOAP::SOAPString
#   confirmationSender - SOAP::SOAPString
#   confirmationSignature - SOAP::SOAPString
#   confirmationSubject - SOAP::SOAPString
#   createFieldAndValues - SOAP::SOAPBoolean
#   failureEmail - SOAP::SOAPString
#   journalEntries - Etapper::API::ArrayOfanyType
#   notificationEmail - SOAP::SOAPString
#   notificationSubject - SOAP::SOAPString
#   populateDataSource - SOAP::SOAPBoolean
#   processor - SOAP::SOAPString
#   skipSoftErrors - SOAP::SOAPBoolean
#   softErrorEmail - SOAP::SOAPString
#   validateLicense - SOAP::SOAPBoolean
class EcommerceRequest
  attr_accessor :account
  attr_accessor :confirmationMessageFooter
  attr_accessor :confirmationMessageHeader
  attr_accessor :confirmationSender
  attr_accessor :confirmationSignature
  attr_accessor :confirmationSubject
  attr_accessor :createFieldAndValues
  attr_accessor :failureEmail
  attr_accessor :journalEntries
  attr_accessor :notificationEmail
  attr_accessor :notificationSubject
  attr_accessor :populateDataSource
  attr_accessor :processor
  attr_accessor :skipSoftErrors
  attr_accessor :softErrorEmail
  attr_accessor :validateLicense

  def initialize(account = nil, confirmationMessageFooter = nil, confirmationMessageHeader = nil, confirmationSender = nil, confirmationSignature = nil, confirmationSubject = nil, createFieldAndValues = nil, failureEmail = nil, journalEntries = nil, notificationEmail = nil, notificationSubject = nil, populateDataSource = nil, processor = nil, skipSoftErrors = nil, softErrorEmail = nil, validateLicense = nil)
    @account = account
    @confirmationMessageFooter = confirmationMessageFooter
    @confirmationMessageHeader = confirmationMessageHeader
    @confirmationSender = confirmationSender
    @confirmationSignature = confirmationSignature
    @confirmationSubject = confirmationSubject
    @createFieldAndValues = createFieldAndValues
    @failureEmail = failureEmail
    @journalEntries = journalEntries
    @notificationEmail = notificationEmail
    @notificationSubject = notificationSubject
    @populateDataSource = populateDataSource
    @processor = processor
    @skipSoftErrors = skipSoftErrors
    @softErrorEmail = softErrorEmail
    @validateLicense = validateLicense
  end
end

# {etapestryAPI/service}EcommerceResponse
#   accountNumber - SOAP::SOAPInt
#   accountRef - SOAP::SOAPString
#   createdNewAccount - SOAP::SOAPBoolean
#   journalEntryRefs - Etapper::API::ArrayOfstring
class EcommerceResponse
  attr_accessor :accountNumber
  attr_accessor :accountRef
  attr_accessor :createdNewAccount
  attr_accessor :journalEntryRefs

  def initialize(accountNumber = nil, accountRef = nil, createdNewAccount = nil, journalEntryRefs = nil)
    @accountNumber = accountNumber
    @accountRef = accountRef
    @createdNewAccount = createdNewAccount
    @journalEntryRefs = journalEntryRefs
  end
end

# {etapestryAPI/service}ForgottenPasswordEmailHelpRequest
#   baseQuery - SOAP::SOAPString
#   email - SOAP::SOAPString
#   expirationHours - SOAP::SOAPInt
#   fromEmail - SOAP::SOAPString
#   loginId - SOAP::SOAPString
#   personaOption - SOAP::SOAPString
#   url - SOAP::SOAPString
class ForgottenPasswordEmailHelpRequest
  attr_accessor :baseQuery
  attr_accessor :email
  attr_accessor :expirationHours
  attr_accessor :fromEmail
  attr_accessor :loginId
  attr_accessor :personaOption
  attr_accessor :url

  def initialize(baseQuery = nil, email = nil, expirationHours = nil, fromEmail = nil, loginId = nil, personaOption = nil, url = nil)
    @baseQuery = baseQuery
    @email = email
    @expirationHours = expirationHours
    @fromEmail = fromEmail
    @loginId = loginId
    @personaOption = personaOption
    @url = url
  end
end

# {etapestryAPI/service}ForgottenPasswordResetHelpRequest
#   code - SOAP::SOAPString
#   ref - SOAP::SOAPString
class ForgottenPasswordResetHelpRequest
  attr_accessor :code
  attr_accessor :ref

  def initialize(code = nil, ref = nil)
    @code = code
    @ref = ref
  end
end

# {etapestryAPI/service}ProcessTransactionRequest
#   confirmationMessageFooter - SOAP::SOAPString
#   confirmationMessageHeader - SOAP::SOAPString
#   confirmationSender - SOAP::SOAPString
#   confirmationSignature - SOAP::SOAPString
#   confirmationSubject - SOAP::SOAPString
#   createFieldAndValues - SOAP::SOAPBoolean
#   donorEmail - SOAP::SOAPString
#   failureEmail - SOAP::SOAPString
#   notificationEmail - SOAP::SOAPString
#   processor - SOAP::SOAPString
#   transaction - (any)
class ProcessTransactionRequest
  attr_accessor :confirmationMessageFooter
  attr_accessor :confirmationMessageHeader
  attr_accessor :confirmationSender
  attr_accessor :confirmationSignature
  attr_accessor :confirmationSubject
  attr_accessor :createFieldAndValues
  attr_accessor :donorEmail
  attr_accessor :failureEmail
  attr_accessor :notificationEmail
  attr_accessor :processor
  attr_accessor :transaction

  def initialize(confirmationMessageFooter = nil, confirmationMessageHeader = nil, confirmationSender = nil, confirmationSignature = nil, confirmationSubject = nil, createFieldAndValues = nil, donorEmail = nil, failureEmail = nil, notificationEmail = nil, processor = nil, transaction = nil)
    @confirmationMessageFooter = confirmationMessageFooter
    @confirmationMessageHeader = confirmationMessageHeader
    @confirmationSender = confirmationSender
    @confirmationSignature = confirmationSignature
    @confirmationSubject = confirmationSubject
    @createFieldAndValues = createFieldAndValues
    @donorEmail = donorEmail
    @failureEmail = failureEmail
    @notificationEmail = notificationEmail
    @processor = processor
    @transaction = transaction
  end
end

# {etapestryAPI/service}SendEmailRequest
#   accountRef - SOAP::SOAPString
#   email - SOAP::SOAPString
#   htmlMessage - SOAP::SOAPString
#   personaOption - SOAP::SOAPString
#   plainMessage - SOAP::SOAPString
#   sender - SOAP::SOAPString
#   subject - SOAP::SOAPString
class SendEmailRequest
  attr_accessor :accountRef
  attr_accessor :email
  attr_accessor :htmlMessage
  attr_accessor :personaOption
  attr_accessor :plainMessage
  attr_accessor :sender
  attr_accessor :subject

  def initialize(accountRef = nil, email = nil, htmlMessage = nil, personaOption = nil, plainMessage = nil, sender = nil, subject = nil)
    @accountRef = accountRef
    @email = email
    @htmlMessage = htmlMessage
    @personaOption = personaOption
    @plainMessage = plainMessage
    @sender = sender
    @subject = subject
  end
end

# {http://java.sun.com/jax-rpc-ri/internal}collection
class Collection < ::Array
end

# {etapestryAPI/service}ArrayOfDefinedValue
class ArrayOfDefinedValue < ::Array
end

# {etapestryAPI/service}ArrayOfstring
class ArrayOfstring < ::Array
end

# {etapestryAPI/service}ArrayOfPhone
class ArrayOfPhone < ::Array
end

# {etapestryAPI/service}ArrayOfAttachment
class ArrayOfAttachment < ::Array
end

# {etapestryAPI/service}ArrayOfSearchCriteria
class ArrayOfSearchCriteria < ::Array
end

# {etapestryAPI/service}ArrayOfAccount
class ArrayOfAccount < ::Array
end

# {etapestryAPI/service}ArrayOfdouble
class ArrayOfdouble < ::Array
end

# {etapestryAPI/service}ArrayOfdateTime
class ArrayOfdateTime < ::Array
end

# {etapestryAPI/service}ArrayOfInvitation
class ArrayOfInvitation < ::Array
end

# {etapestryAPI/service}ArrayOfCartParent
class ArrayOfCartParent < ::Array
end

# {etapestryAPI/service}ArrayOfQuestion
class ArrayOfQuestion < ::Array
end

# {etapestryAPI/service}ArrayOfint
class ArrayOfint < ::Array
end

# {etapestryAPI/service}ArrayOfDefinedFieldValue
class ArrayOfDefinedFieldValue < ::Array
end

# {etapestryAPI/service}ArrayOfCartImage
class ArrayOfCartImage < ::Array
end

# {etapestryAPI/service}ArrayOfStateTaxRate
class ArrayOfStateTaxRate < ::Array
end

# {etapestryAPI/service}ArrayOfSortOption
class ArrayOfSortOption < ::Array
end

# {etapestryAPI/service}ArrayOfPersona
class ArrayOfPersona < ::Array
end

# {etapestryAPI/service}ArrayOfOrderDetail
class ArrayOfOrderDetail < ::Array
end

# {etapestryAPI/service}ArrayOfCartItem
class ArrayOfCartItem < ::Array
end

# {etapestryAPI/service}ArrayOfPrivacyPreference
class ArrayOfPrivacyPreference < ::Array
end

# {etapestryAPI/service}ArrayOfPhoneAThonList
class ArrayOfPhoneAThonList < ::Array
end

# {etapestryAPI/service}ArrayOfanyType
class ArrayOfanyType < ::Array
end

# {etapestryAPI/service}ArrayOfTransactionProcessor
class ArrayOfTransactionProcessor < ::Array
end


end
