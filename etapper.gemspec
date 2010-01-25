# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{etapper}
  s.version = "0.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Stephen Eley"]
  s.date = %q{2010-01-25}
  s.email = %q{seley@aarweb.org}
  s.extra_rdoc_files = [
    "README.rdoc"
  ]
  s.files = [
    ".gitignore",
     "History.txt",
     "Manifest.txt",
     "PostInstall.txt",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "doc/APIQueryExample.java",
     "doc/api/SortTable.js",
     "doc/api/basics.html",
     "doc/api/complexTypeSubMenu.html",
     "doc/api/ct_Account.html",
     "doc/api/ct_Attachment.html",
     "doc/api/ct_Bond.html",
     "doc/api/ct_Cash.html",
     "doc/api/ct_Check.html",
     "doc/api/ct_Contact.html",
     "doc/api/ct_CreditCard.html",
     "doc/api/ct_CustomPaymentSchedule.html",
     "doc/api/ct_DefinedValue.html",
     "doc/api/ct_Disbursement.html",
     "doc/api/ct_DuplicateAccountSearch.html",
     "doc/api/ct_ElectronicFundsTransfer.html",
     "doc/api/ct_Gift.html",
     "doc/api/ct_InKind.html",
     "doc/api/ct_Insurance.html",
     "doc/api/ct_JournalSummary.html",
     "doc/api/ct_Note.html",
     "doc/api/ct_Payment.html",
     "doc/api/ct_Phone.html",
     "doc/api/ct_Pledge.html",
     "doc/api/ct_QueryResultStats.html",
     "doc/api/ct_RealEstate.html",
     "doc/api/ct_RecurringGift.html",
     "doc/api/ct_RecurringGiftSchedule.html",
     "doc/api/ct_SegmentedDonation.html",
     "doc/api/ct_SegmentedPledge.html",
     "doc/api/ct_SoftCredit.html",
     "doc/api/ct_StandardPaymentSchedule.html",
     "doc/api/ct_Stock.html",
     "doc/api/ct_Valuable.html",
     "doc/api/errors.html",
     "doc/api/faq.html",
     "doc/api/home.html",
     "doc/api/images/arrow.gif",
     "doc/api/images/etap.gif",
     "doc/api/images/question.gif",
     "doc/api/index.html",
     "doc/api/main.css",
     "doc/api/menu.css",
     "doc/api/menu.html",
     "doc/api/methodSubMenu.html",
     "doc/api/method_addAccount.html",
     "doc/api/method_addAndProcessGift.html",
     "doc/api/method_addAndProcessPayment.html",
     "doc/api/method_addContact.html",
     "doc/api/method_addDisbursement.html",
     "doc/api/method_addGift.html",
     "doc/api/method_addNote.html",
     "doc/api/method_addPayment.html",
     "doc/api/method_addPledge.html",
     "doc/api/method_addSoftCredit.html",
     "doc/api/method_getAccount.html",
     "doc/api/method_getAccountById.html",
     "doc/api/method_getAccountByPersonaType.html",
     "doc/api/method_getAccountByUniqueDefinedValue.html",
     "doc/api/method_getApproaches.html",
     "doc/api/method_getCampaigns.html",
     "doc/api/method_getContact.html",
     "doc/api/method_getContactByUniqueDefinedValue.html",
     "doc/api/method_getDisbursement.html",
     "doc/api/method_getDuplicateAccount.html",
     "doc/api/method_getDuplicateAccounts.html",
     "doc/api/method_getFunds.html",
     "doc/api/method_getGift.html",
     "doc/api/method_getLetters.html",
     "doc/api/method_getNote.html",
     "doc/api/method_getNoteByUniqueDefinedValue.html",
     "doc/api/method_getPayment.html",
     "doc/api/method_getPledge.html",
     "doc/api/method_getQueryResultStats.html",
     "doc/api/method_getRecurringGift.html",
     "doc/api/method_getRecurringGiftSchedule.html",
     "doc/api/method_getSegmentedDonation.html",
     "doc/api/method_getSegmentedPledge.html",
     "doc/api/method_getSoftCredit.html",
     "doc/api/method_getSystemDefinedValues.html",
     "doc/api/method_getTransaction.html",
     "doc/api/method_getTransactionByUniqueDefinedValue.html",
     "doc/api/method_getUserDefinedSetValues.html",
     "doc/api/method_login.html",
     "doc/api/method_logout.html",
     "doc/api/method_reverseTransaction.html",
     "doc/api/method_updateAccount.html",
     "doc/api/method_updateContact.html",
     "doc/api/method_updateGift.html",
     "doc/api/method_updateNote.html",
     "doc/api/revisions.html",
     "doc/api/robots.txt",
     "doc/etapestry_wsdl.xml",
     "doc/faults.yml",
     "doc/upgrading_wsdl.txt",
     "etapper.gemspec",
     "lib/etapper.rb",
     "lib/etapper/api/ServiceClient.rb",
     "lib/etapper/api/service.rb",
     "lib/etapper/api/serviceDriver.rb",
     "lib/etapper/api/serviceMappingRegistry.rb",
     "lib/etapper/classes/account.rb",
     "lib/etapper/classes/contact.rb",
     "lib/etapper/classes/defined_value.rb",
     "lib/etapper/classes/defined_value_hash.rb",
     "lib/etapper/classes/duplicate_account_search.rb",
     "lib/etapper/classes/etap_abstract.rb",
     "lib/etapper/classes/etap_hash.rb",
     "lib/etapper/classes/gift.rb",
     "lib/etapper/classes/hashable.rb",
     "lib/etapper/classes/journal_entry.rb",
     "lib/etapper/classes/journal_entry_collection.rb",
     "lib/etapper/classes/phone.rb",
     "lib/etapper/classes/phone_hash.rb",
     "lib/etapper/client.rb",
     "lib/etapper/core_ext/string.rb",
     "lib/etapper/core_ext/symbol.rb",
     "lib/etapper/exceptions.rb",
     "lib/etapper/session_filter.rb",
     "lib/etapper/soap/generator.rb",
     "script/console",
     "script/destroy",
     "script/generate",
     "spec/account_spec.rb",
     "spec/authentication_spec.rb",
     "spec/client_spec.rb",
     "spec/contact_spec.rb",
     "spec/core_ext_spec.rb",
     "spec/defined_value_hash_spec.rb",
     "spec/defined_value_spec.rb",
     "spec/duplicate_account_search_spec.rb",
     "spec/fixtures/accounts_api.yml",
     "spec/fixtures/contacts_api.yml",
     "spec/fixtures/defined_values_api.yml",
     "spec/fixtures/gifts_api.yml",
     "spec/fixtures/journal_entries_api_all.yml",
     "spec/fixtures/phones_api.yml",
     "spec/gift_spec.rb",
     "spec/hashable_spec.rb",
     "spec/journal_entry_collection_spec.rb",
     "spec/phone_hash_spec.rb",
     "spec/phone_spec.rb",
     "spec/proxying_spec.rb",
     "spec/shared_etap_abstract_spec.rb",
     "spec/shared_etap_hash_spec.rb",
     "spec/shared_journal_entry_spec.rb",
     "spec/spec.opts",
     "spec/spec_helper.rb",
     "spec/stub_driver.rb",
     "tasks/rspec.rake",
     "tasks/update_wsdl.rake",
     "vendor/gems/english-0.3.1/CHANGES",
     "vendor/gems/english-0.3.1/COPYING",
     "vendor/gems/english-0.3.1/MANIFEST",
     "vendor/gems/english-0.3.1/README",
     "vendor/gems/english-0.3.1/RELEASE",
     "vendor/gems/english-0.3.1/VERSION",
     "vendor/gems/english-0.3.1/lib/english/array.rb",
     "vendor/gems/english-0.3.1/lib/english/censor.rb",
     "vendor/gems/english-0.3.1/lib/english/double_metaphone.rb",
     "vendor/gems/english-0.3.1/lib/english/dresner.rb",
     "vendor/gems/english-0.3.1/lib/english/inflect.rb",
     "vendor/gems/english-0.3.1/lib/english/jumble.rb",
     "vendor/gems/english-0.3.1/lib/english/levenshtein.rb",
     "vendor/gems/english-0.3.1/lib/english/metaphone.rb",
     "vendor/gems/english-0.3.1/lib/english/numerals.rb",
     "vendor/gems/english-0.3.1/lib/english/patterns.rb",
     "vendor/gems/english-0.3.1/lib/english/porter_stemming.rb",
     "vendor/gems/english-0.3.1/lib/english/roman.rb",
     "vendor/gems/english-0.3.1/lib/english/similarity.rb",
     "vendor/gems/english-0.3.1/lib/english/soundex.rb",
     "vendor/gems/english-0.3.1/lib/english/string.rb",
     "vendor/gems/english-0.3.1/lib/english/style.rb",
     "vendor/gems/english-0.3.1/lib/english/style_orm.rb",
     "vendor/gems/english-0.3.1/lib/english/textfilter.rb",
     "vendor/gems/english-0.3.1/meta/abstract",
     "vendor/gems/english-0.3.1/meta/authors",
     "vendor/gems/english-0.3.1/meta/contact",
     "vendor/gems/english-0.3.1/meta/created",
     "vendor/gems/english-0.3.1/meta/homepage",
     "vendor/gems/english-0.3.1/meta/releases",
     "vendor/gems/english-0.3.1/meta/summary",
     "vendor/gems/english-0.3.1/task/clean",
     "vendor/gems/english-0.3.1/task/rdoc",
     "vendor/gems/english-0.3.1/task/test",
     "vendor/gems/english-0.3.1/test/fixture/double_metaphone.txt",
     "vendor/gems/english-0.3.1/test/fixture/metaphone.txt",
     "vendor/gems/english-0.3.1/test/fixture/metaphone_lp.txt",
     "vendor/gems/english-0.3.1/test/fixture/porter_stemming_input.txt",
     "vendor/gems/english-0.3.1/test/fixture/porter_stemming_output.txt",
     "vendor/gems/english-0.3.1/test/fixture/soundex.txt",
     "vendor/gems/english-0.3.1/test/test_censor.rb",
     "vendor/gems/english-0.3.1/test/test_double_metaphone.rb",
     "vendor/gems/english-0.3.1/test/test_dresner.rb",
     "vendor/gems/english-0.3.1/test/test_inflect.rb",
     "vendor/gems/english-0.3.1/test/test_levenshtein.rb",
     "vendor/gems/english-0.3.1/test/test_metaphone.rb",
     "vendor/gems/english-0.3.1/test/test_porter_stemming.rb",
     "vendor/gems/english-0.3.1/test/test_similarity.rb",
     "vendor/gems/english-0.3.1/test/test_soundex.rb",
     "vendor/gems/soap4r-1.5.8.2/bin/wsdl2ruby.rb",
     "vendor/gems/soap4r-1.5.8.2/bin/xsd2ruby.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/soap/attachment.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/soap/attrproxy.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/soap/baseData.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/soap/element.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/soap/encodingstyle/aspDotNetHandler.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/soap/encodingstyle/handler.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/soap/encodingstyle/literalHandler.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/soap/encodingstyle/soapHandler.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/soap/filter.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/soap/filter/filterchain.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/soap/filter/handler.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/soap/filter/streamhandler.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/soap/generator.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/soap/header/handler.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/soap/header/handlerset.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/soap/header/mappinghandler.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/soap/header/simplehandler.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/soap/httpconfigloader.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/soap/mapping.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/soap/mapping/encodedregistry.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/soap/mapping/factory.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/soap/mapping/literalregistry.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/soap/mapping/mapping.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/soap/mapping/registry.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/soap/mapping/rubytypeFactory.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/soap/mapping/schemadefinition.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/soap/mapping/typeMap.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/soap/mapping/wsdlencodedregistry.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/soap/mapping/wsdlliteralregistry.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/soap/marshal.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/soap/mimemessage.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/soap/nestedexception.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/soap/netHttpClient.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/soap/ns.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/soap/parser.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/soap/processor.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/soap/property.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/soap/proxy.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/soap/rpc/cgistub.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/soap/rpc/driver.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/soap/rpc/element.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/soap/rpc/element.rb.orig",
     "vendor/gems/soap4r-1.5.8.2/lib/soap/rpc/httpserver.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/soap/rpc/methodDef.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/soap/rpc/proxy.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/soap/rpc/router.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/soap/rpc/rpc.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/soap/rpc/soaplet.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/soap/rpc/standaloneServer.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/soap/soap.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/soap/streamHandler.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/soap/wsdlDriver.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/binding.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/data.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/definitions.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/documentation.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/import.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/importer.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/info.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/message.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/operation.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/operationBinding.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/param.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/parser.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/part.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/port.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/portType.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/service.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/soap/address.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/soap/binding.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/soap/body.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/soap/cgiStubCreator.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/soap/classDefCreator.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/soap/classDefCreatorSupport.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/soap/classNameCreator.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/soap/clientSkeltonCreator.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/soap/complexType.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/soap/data.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/soap/definitions.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/soap/driverCreator.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/soap/element.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/soap/encodedMappingRegistryCreator.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/soap/fault.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/soap/header.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/soap/headerfault.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/soap/literalMappingRegistryCreator.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/soap/mappingRegistryCreator.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/soap/mappingRegistryCreatorSupport.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/soap/methodDefCreator.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/soap/operation.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/soap/servantSkeltonCreator.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/soap/servletStubCreator.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/soap/standaloneServerStubCreator.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/soap/wsdl2ruby.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/types.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/wsdl.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/xmlSchema/all.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/xmlSchema/annotation.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/xmlSchema/any.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/xmlSchema/anyAttribute.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/xmlSchema/attribute.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/xmlSchema/attributeGroup.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/xmlSchema/choice.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/xmlSchema/complexContent.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/xmlSchema/complexExtension.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/xmlSchema/complexRestriction.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/xmlSchema/complexType.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/xmlSchema/content.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/xmlSchema/data.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/xmlSchema/element.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/xmlSchema/enumeration.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/xmlSchema/fractiondigits.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/xmlSchema/group.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/xmlSchema/import.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/xmlSchema/importHandler.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/xmlSchema/importer.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/xmlSchema/include.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/xmlSchema/length.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/xmlSchema/list.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/xmlSchema/maxexclusive.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/xmlSchema/maxinclusive.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/xmlSchema/maxlength.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/xmlSchema/minexclusive.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/xmlSchema/mininclusive.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/xmlSchema/minlength.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/xmlSchema/parser.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/xmlSchema/pattern.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/xmlSchema/ref.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/xmlSchema/schema.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/xmlSchema/sequence.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/xmlSchema/simpleContent.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/xmlSchema/simpleExtension.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/xmlSchema/simpleRestriction.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/xmlSchema/simpleType.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/xmlSchema/totaldigits.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/xmlSchema/union.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/xmlSchema/unique.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/xmlSchema/whitespace.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/wsdl/xmlSchema/xsd2ruby.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/xsd/charset.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/xsd/codegen.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/xsd/codegen/classdef.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/xsd/codegen/commentdef.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/xsd/codegen/gensupport.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/xsd/codegen/methoddef.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/xsd/codegen/moduledef.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/xsd/datatypes.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/xsd/datatypes1999.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/xsd/iconvcharset.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/xsd/mapping.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/xsd/namedelements.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/xsd/ns.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/xsd/qname.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/xsd/xmlparser.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/xsd/xmlparser.rb.orig",
     "vendor/gems/soap4r-1.5.8.2/lib/xsd/xmlparser/libxmlparser.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/xsd/xmlparser/parser.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/xsd/xmlparser/rexmlparser.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/xsd/xmlparser/xmlparser.rb",
     "vendor/gems/soap4r-1.5.8.2/lib/xsd/xmlparser/xmlscanner.rb",
     "vendor/gems/soap4r-1.5.8.2/test/16runner.rb",
     "vendor/gems/soap4r-1.5.8.2/test/interopR2/README.txt",
     "vendor/gems/soap4r-1.5.8.2/test/interopR2/SOAPBuildersInterop_R2.wsdl",
     "vendor/gems/soap4r-1.5.8.2/test/interopR2/SOAPBuildersInterop_R2GrB.wsdl",
     "vendor/gems/soap4r-1.5.8.2/test/interopR2/base.rb",
     "vendor/gems/soap4r-1.5.8.2/test/interopR2/client.NetRemoting.rb",
     "vendor/gems/soap4r-1.5.8.2/test/interopR2/client.rb",
     "vendor/gems/soap4r-1.5.8.2/test/interopR2/client4S4C.rb",
     "vendor/gems/soap4r-1.5.8.2/test/interopR2/client4S4C2.rb",
     "vendor/gems/soap4r-1.5.8.2/test/interopR2/clientASP.NET.rb",
     "vendor/gems/soap4r-1.5.8.2/test/interopR2/clientApacheAxis.rb",
     "vendor/gems/soap4r-1.5.8.2/test/interopR2/clientApacheSOAP.rb",
     "vendor/gems/soap4r-1.5.8.2/test/interopR2/clientBEAWebLogic.rb",
     "vendor/gems/soap4r-1.5.8.2/test/interopR2/clientBase.rb",
     "vendor/gems/soap4r-1.5.8.2/test/interopR2/clientCapeConnect.rb",
     "vendor/gems/soap4r-1.5.8.2/test/interopR2/clientDelphi.rb",
     "vendor/gems/soap4r-1.5.8.2/test/interopR2/clientEasySoap.rb",
     "vendor/gems/soap4r-1.5.8.2/test/interopR2/clientFrontier.rb",
     "vendor/gems/soap4r-1.5.8.2/test/interopR2/clientGLUE.rb",
     "vendor/gems/soap4r-1.5.8.2/test/interopR2/clientHP.rb",
     "vendor/gems/soap4r-1.5.8.2/test/interopR2/clientJAX-RPC.rb",
     "vendor/gems/soap4r-1.5.8.2/test/interopR2/clientJSOAP.rb",
     "vendor/gems/soap4r-1.5.8.2/test/interopR2/clientKafkaXSLT.rb",
     "vendor/gems/soap4r-1.5.8.2/test/interopR2/clientMSSOAPToolkit2.0.rb",
     "vendor/gems/soap4r-1.5.8.2/test/interopR2/clientMSSOAPToolkit3.0.rb",
     "vendor/gems/soap4r-1.5.8.2/test/interopR2/clientNuSOAP.rb",
     "vendor/gems/soap4r-1.5.8.2/test/interopR2/clientNuWave.rb",
     "vendor/gems/soap4r-1.5.8.2/test/interopR2/clientOpenLink.rb",
     "vendor/gems/soap4r-1.5.8.2/test/interopR2/clientOracle.rb",
     "vendor/gems/soap4r-1.5.8.2/test/interopR2/clientPEAR.rb",
     "vendor/gems/soap4r-1.5.8.2/test/interopR2/clientPhalanx.rb",
     "vendor/gems/soap4r-1.5.8.2/test/interopR2/clientSIMACE.rb",
     "vendor/gems/soap4r-1.5.8.2/test/interopR2/clientSOAP4R.rb",
     "vendor/gems/soap4r-1.5.8.2/test/interopR2/clientSOAP__Lite.rb",
     "vendor/gems/soap4r-1.5.8.2/test/interopR2/clientSQLData.rb",
     "vendor/gems/soap4r-1.5.8.2/test/interopR2/clientSilverStream.rb",
     "vendor/gems/soap4r-1.5.8.2/test/interopR2/clientSpray2001.rb",
     "vendor/gems/soap4r-1.5.8.2/test/interopR2/clientSun.rb",
     "vendor/gems/soap4r-1.5.8.2/test/interopR2/clientVWOpentalkSoap.rb",
     "vendor/gems/soap4r-1.5.8.2/test/interopR2/clientWASP.rb",
     "vendor/gems/soap4r-1.5.8.2/test/interopR2/clientWASPC.rb",
     "vendor/gems/soap4r-1.5.8.2/test/interopR2/clientWebMethods.rb",
     "vendor/gems/soap4r-1.5.8.2/test/interopR2/clientWhiteMesa.rb",
     "vendor/gems/soap4r-1.5.8.2/test/interopR2/clientWingfoot.rb",
     "vendor/gems/soap4r-1.5.8.2/test/interopR2/clientXMLBus.rb",
     "vendor/gems/soap4r-1.5.8.2/test/interopR2/clientXMLRPC-EPI.rb",
     "vendor/gems/soap4r-1.5.8.2/test/interopR2/clientXSOAP.rb",
     "vendor/gems/soap4r-1.5.8.2/test/interopR2/clientZSI.rb",
     "vendor/gems/soap4r-1.5.8.2/test/interopR2/clienteSOAP.rb",
     "vendor/gems/soap4r-1.5.8.2/test/interopR2/clientgSOAP.rb",
     "vendor/gems/soap4r-1.5.8.2/test/interopR2/clientkSOAP.rb",
     "vendor/gems/soap4r-1.5.8.2/test/interopR2/iSimonReg.rb",
     "vendor/gems/soap4r-1.5.8.2/test/interopR2/interopResultBase.rb",
     "vendor/gems/soap4r-1.5.8.2/test/interopR2/interopService.rb",
     "vendor/gems/soap4r-1.5.8.2/test/interopR2/rwikiInteropService.rb",
     "vendor/gems/soap4r-1.5.8.2/test/interopR2/server.cgi",
     "vendor/gems/soap4r-1.5.8.2/test/interopR2/server.rb",
     "vendor/gems/soap4r-1.5.8.2/test/interopR2/simonReg.rb",
     "vendor/gems/soap4r-1.5.8.2/test/interopR2/test.sh",
     "vendor/gems/soap4r-1.5.8.2/test/interopR4/client.rb",
     "vendor/gems/soap4r-1.5.8.2/test/results",
     "vendor/gems/soap4r-1.5.8.2/test/runner.rb",
     "vendor/gems/soap4r-1.5.8.2/test/sm11/classDef.rb",
     "vendor/gems/soap4r-1.5.8.2/test/sm11/client.rb",
     "vendor/gems/soap4r-1.5.8.2/test/sm11/driver.rb",
     "vendor/gems/soap4r-1.5.8.2/test/sm11/servant.rb",
     "vendor/gems/soap4r-1.5.8.2/test/sm11/server.rb",
     "vendor/gems/soap4r-1.5.8.2/test/soap/asp.net/hello.wsdl",
     "vendor/gems/soap4r-1.5.8.2/test/soap/asp.net/test_aspdotnet.rb",
     "vendor/gems/soap4r-1.5.8.2/test/soap/auth/htdigest",
     "vendor/gems/soap4r-1.5.8.2/test/soap/auth/htpasswd",
     "vendor/gems/soap4r-1.5.8.2/test/soap/auth/test_basic.rb",
     "vendor/gems/soap4r-1.5.8.2/test/soap/auth/test_digest.rb",
     "vendor/gems/soap4r-1.5.8.2/test/soap/calc/calc.rb",
     "vendor/gems/soap4r-1.5.8.2/test/soap/calc/calc2.rb",
     "vendor/gems/soap4r-1.5.8.2/test/soap/calc/server.cgi",
     "vendor/gems/soap4r-1.5.8.2/test/soap/calc/server.rb",
     "vendor/gems/soap4r-1.5.8.2/test/soap/calc/server2.rb",
     "vendor/gems/soap4r-1.5.8.2/test/soap/calc/test_calc.rb",
     "vendor/gems/soap4r-1.5.8.2/test/soap/calc/test_calc2.rb",
     "vendor/gems/soap4r-1.5.8.2/test/soap/calc/test_calc_cgi.rb",
     "vendor/gems/soap4r-1.5.8.2/test/soap/case/test_mapping.rb",
     "vendor/gems/soap4r-1.5.8.2/test/soap/fault/test_customfault.rb",
     "vendor/gems/soap4r-1.5.8.2/test/soap/fault/test_fault.rb",
     "vendor/gems/soap4r-1.5.8.2/test/soap/fault/test_soaparray.rb",
     "vendor/gems/soap4r-1.5.8.2/test/soap/filter/test_filter.rb",
     "vendor/gems/soap4r-1.5.8.2/test/soap/header/server.cgi",
     "vendor/gems/soap4r-1.5.8.2/test/soap/header/session.pstoredb",
     "vendor/gems/soap4r-1.5.8.2/test/soap/header/test_authheader.rb",
     "vendor/gems/soap4r-1.5.8.2/test/soap/header/test_authheader_cgi.rb",
     "vendor/gems/soap4r-1.5.8.2/test/soap/header/test_simplehandler.rb",
     "vendor/gems/soap4r-1.5.8.2/test/soap/helloworld/hw_s.rb",
     "vendor/gems/soap4r-1.5.8.2/test/soap/helloworld/test_helloworld.rb",
     "vendor/gems/soap4r-1.5.8.2/test/soap/htpasswd",
     "vendor/gems/soap4r-1.5.8.2/test/soap/literalArrayMapping/amazonEc.rb",
     "vendor/gems/soap4r-1.5.8.2/test/soap/literalArrayMapping/amazonEcDriver.rb",
     "vendor/gems/soap4r-1.5.8.2/test/soap/literalArrayMapping/amazonresponse.xml",
     "vendor/gems/soap4r-1.5.8.2/test/soap/literalArrayMapping/test_definedarray.rb",
     "vendor/gems/soap4r-1.5.8.2/test/soap/marshal/marshaltestlib.rb",
     "vendor/gems/soap4r-1.5.8.2/test/soap/marshal/test_digraph.rb",
     "vendor/gems/soap4r-1.5.8.2/test/soap/marshal/test_marshal.rb",
     "vendor/gems/soap4r-1.5.8.2/test/soap/marshal/test_struct.rb",
     "vendor/gems/soap4r-1.5.8.2/test/soap/ssl/README",
     "vendor/gems/soap4r-1.5.8.2/test/soap/ssl/ca.cert",
     "vendor/gems/soap4r-1.5.8.2/test/soap/ssl/client.cert",
     "vendor/gems/soap4r-1.5.8.2/test/soap/ssl/client.key",
     "vendor/gems/soap4r-1.5.8.2/test/soap/ssl/server.cert",
     "vendor/gems/soap4r-1.5.8.2/test/soap/ssl/server.key",
     "vendor/gems/soap4r-1.5.8.2/test/soap/ssl/sslsvr.rb",
     "vendor/gems/soap4r-1.5.8.2/test/soap/ssl/subca.cert",
     "vendor/gems/soap4r-1.5.8.2/test/soap/ssl/test_ssl.rb",
     "vendor/gems/soap4r-1.5.8.2/test/soap/struct/test_struct.rb",
     "vendor/gems/soap4r-1.5.8.2/test/soap/styleuse/client.rb",
     "vendor/gems/soap4r-1.5.8.2/test/soap/styleuse/server.rb",
     "vendor/gems/soap4r-1.5.8.2/test/soap/swa/test_file.rb",
     "vendor/gems/soap4r-1.5.8.2/test/soap/test_basetype.rb",
     "vendor/gems/soap4r-1.5.8.2/test/soap/test_cookie.rb",
     "vendor/gems/soap4r-1.5.8.2/test/soap/test_custom_ns.rb",
     "vendor/gems/soap4r-1.5.8.2/test/soap/test_custommap.rb",
     "vendor/gems/soap4r-1.5.8.2/test/soap/test_empty.rb",
     "vendor/gems/soap4r-1.5.8.2/test/soap/test_envelopenamespace.rb",
     "vendor/gems/soap4r-1.5.8.2/test/soap/test_extraattr.rb",
     "vendor/gems/soap4r-1.5.8.2/test/soap/test_generator.rb",
     "vendor/gems/soap4r-1.5.8.2/test/soap/test_httpconfigloader.rb",
     "vendor/gems/soap4r-1.5.8.2/test/soap/test_mapping.rb",
     "vendor/gems/soap4r-1.5.8.2/test/soap/test_nestedexception.rb",
     "vendor/gems/soap4r-1.5.8.2/test/soap/test_nil.rb",
     "vendor/gems/soap4r-1.5.8.2/test/soap/test_no_indent.rb",
     "vendor/gems/soap4r-1.5.8.2/test/soap/test_property.rb",
     "vendor/gems/soap4r-1.5.8.2/test/soap/test_response_as_xml.rb",
     "vendor/gems/soap4r-1.5.8.2/test/soap/test_soapelement.rb",
     "vendor/gems/soap4r-1.5.8.2/test/soap/test_streamhandler.rb",
     "vendor/gems/soap4r-1.5.8.2/test/soap/test_styleuse.rb",
     "vendor/gems/soap4r-1.5.8.2/test/soap/wsdlDriver/README.txt",
     "vendor/gems/soap4r-1.5.8.2/test/soap/wsdlDriver/calc.wsdl",
     "vendor/gems/soap4r-1.5.8.2/test/soap/wsdlDriver/document.wsdl",
     "vendor/gems/soap4r-1.5.8.2/test/soap/wsdlDriver/echo_version.rb",
     "vendor/gems/soap4r-1.5.8.2/test/soap/wsdlDriver/simpletype.wsdl",
     "vendor/gems/soap4r-1.5.8.2/test/soap/wsdlDriver/test_calc.rb",
     "vendor/gems/soap4r-1.5.8.2/test/soap/wsdlDriver/test_document.rb",
     "vendor/gems/soap4r-1.5.8.2/test/soap/wsdlDriver/test_simpletype.rb",
     "vendor/gems/soap4r-1.5.8.2/test/testutil.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/abstract/abstract.wsdl",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/abstract/test_abstract.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/anonymous/expectedClassDef.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/anonymous/expectedDriver.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/anonymous/expectedMappingRegistry.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/anonymous/lp.wsdl",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/anonymous/test_anonymous.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/any/any.wsdl",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/any/expectedDriver.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/any/expectedEcho.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/any/expectedMappingRegistry.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/any/expectedService.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/any/test_any.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/axisArray/axisArray.wsdl",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/axisArray/test_axisarray.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/choice/choice.wsdl",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/choice/test_choice.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/complexcontent/complexContent.wsdl",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/complexcontent/test_echo.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/datetime/DatetimeService.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/datetime/datetime.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/datetime/datetime.wsdl",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/datetime/datetimeServant.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/datetime/test_datetime.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/document/array/double.wsdl",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/document/array/test_array.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/document/document.wsdl",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/document/number.wsdl",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/document/ping_nosoapaction.wsdl",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/document/test_nosoapaction.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/document/test_number.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/document/test_rpc.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/emptycomplextype.wsdl",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/fault/fault.wsdl",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/fault/multifault.wsdl",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/fault/test_fault.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/fault/test_multifault.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/group/expectedClassdef.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/group/expectedDriver.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/group/expectedMappingRegistry.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/group/group.wsdl",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/group/test_rpc.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/list/list.wsdl",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/list/test_list.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/map/map.wsdl",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/map/map.xml",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/map/test_map.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/marshal/Person.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/marshal/person.wsdl",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/marshal/person_org.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/marshal/test_wsdlmarshal.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/multiplefault.wsdl",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/oneway/oneway.wsdl",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/oneway/test_oneway.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/overload/expectedClient.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/overload/expectedDriver.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/overload/expectedServant.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/overload/overload.wsdl",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/overload/test_overload.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/qualified/lp.wsdl",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/qualified/lp.xsd",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/qualified/np.wsdl",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/qualified/test_qualified.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/qualified/test_unqualified.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/raa/RAAService.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/raa/README.txt",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/raa/expectedClassDef.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/raa/expectedDriver.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/raa/expectedMappingRegistry.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/raa/raa.wsdl",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/raa/test_raa.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/ref/expectedDriver.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/ref/expectedProduct.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/ref/product.wsdl",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/ref/test_ref.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/rpc/rpc.wsdl",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/rpc/test-rpc-lit.wsdl",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/rpc/test_rpc.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/rpc/test_rpc_lit.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/simplecontent/simplecontent.wsdl",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/simplecontent/test_simplecontent.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/simpletype/rpc/echo_version.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/simpletype/rpc/echo_versionDriver.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/simpletype/rpc/echo_versionMappingRegistry.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/simpletype/rpc/echo_versionServant.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/simpletype/rpc/echo_version_service.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/simpletype/rpc/echo_version_serviceClient.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/simpletype/rpc/expectedClient.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/simpletype/rpc/expectedDriver.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/simpletype/rpc/expectedEchoVersion.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/simpletype/rpc/expectedMappingRegistry.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/simpletype/rpc/expectedServant.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/simpletype/rpc/expectedService.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/simpletype/rpc/rpc.wsdl",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/simpletype/rpc/test_rpc.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/simpletype/simpletype.wsdl",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/simpletype/test_simpletype.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/soap/soapbodyparts.wsdl",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/soap/test_soapbodyparts.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/soap/wsdl2ruby/echo_version.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/soap/wsdl2ruby/echo_versionDriver.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/soap/wsdl2ruby/echo_versionMappingRegistry.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/soap/wsdl2ruby/echo_versionServant.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/soap/wsdl2ruby/echo_version_service.cgi",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/soap/wsdl2ruby/echo_version_service.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/soap/wsdl2ruby/echo_version_serviceClient.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/soap/wsdl2ruby/expectedClassdef.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/soap/wsdl2ruby/expectedClient.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/soap/wsdl2ruby/expectedDriver.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/soap/wsdl2ruby/expectedMappingRegistry.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/soap/wsdl2ruby/expectedServant.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/soap/wsdl2ruby/expectedService.cgi",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/soap/wsdl2ruby/expectedService.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/soap/wsdl2ruby/rpc.wsdl",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/soap/wsdl2ruby/section/expectedClassdef.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/soap/wsdl2ruby/section/section.xsd",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/soap/wsdl2ruby/section/test_section.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/soap/wsdl2ruby/soapenc/soapenc.wsdl",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/soap/wsdl2ruby/soapenc/test_soapenc.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/soap/wsdl2ruby/test_wsdl2ruby.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/soaptype/soaptype.wsdl",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/soaptype/test_soaptype.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/test_emptycomplextype.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/test_fault.rb",
     "vendor/gems/soap4r-1.5.8.2/test/wsdl/test_multiplefault.rb",
     "vendor/gems/soap4r-1.5.8.2/test/xsd/codegen/test_classdef.rb",
     "vendor/gems/soap4r-1.5.8.2/test/xsd/noencoding.xml",
     "vendor/gems/soap4r-1.5.8.2/test/xsd/test_noencoding.rb",
     "vendor/gems/soap4r-1.5.8.2/test/xsd/test_ns.rb",
     "vendor/gems/soap4r-1.5.8.2/test/xsd/test_xmlschemaparser.rb",
     "vendor/gems/soap4r-1.5.8.2/test/xsd/test_xsd.rb",
     "vendor/gems/soap4r-1.5.8.2/test/xsd/xmllang.xml",
     "vendor/gems/soap4r-1.5.8.2/test/xsd/xmlschema.xml",
     "vendor/gems/soap4r-1.5.8.2/test/xsd/xsd2ruby/expected_mysample.rb",
     "vendor/gems/soap4r-1.5.8.2/test/xsd/xsd2ruby/expected_mysample_mapper.rb",
     "vendor/gems/soap4r-1.5.8.2/test/xsd/xsd2ruby/expected_mysample_mapping_registry.rb",
     "vendor/gems/soap4r-1.5.8.2/test/xsd/xsd2ruby/section.xsd",
     "vendor/gems/soap4r-1.5.8.2/test/xsd/xsd2ruby/test_xsd2ruby.rb"
  ]
  s.homepage = %q{http://github.com/SFEley/etapper}
  # s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{etapper}
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Ruby gem to connect to eTapestry's SOAP API}
  s.test_files = [
    "spec/account_spec.rb",
     "spec/authentication_spec.rb",
     "spec/client_spec.rb",
     "spec/contact_spec.rb",
     "spec/core_ext_spec.rb",
     "spec/defined_value_hash_spec.rb",
     "spec/defined_value_spec.rb",
     "spec/duplicate_account_search_spec.rb",
     "spec/gift_spec.rb",
     "spec/hashable_spec.rb",
     "spec/journal_entry_collection_spec.rb",
     "spec/phone_hash_spec.rb",
     "spec/phone_spec.rb",
     "spec/proxying_spec.rb",
     "spec/shared_etap_abstract_spec.rb",
     "spec/shared_etap_hash_spec.rb",
     "spec/shared_journal_entry_spec.rb",
     "spec/spec_helper.rb",
     "spec/stub_driver.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<httpclient>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
    else
      s.add_dependency(%q<httpclient>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
    end
  else
    s.add_dependency(%q<httpclient>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
  end
end

