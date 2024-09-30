module FHIR
  module R5
    class Contract < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      MULTIPLE_TYPES = {
        'topic' => ['CodeableConcept', 'Reference'],
        'legallyBinding' => ['Attachment', 'Reference']
      }
      SEARCH_PARAMS = ['authority', 'domain', 'identifier', 'instantiates', 'issued', 'patient', 'signer', 'status', 'subject', 'url']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'Contract.id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'Contract.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'Contract.implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'type'=>'code', 'path'=>'Contract.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'type'=>'Narrative', 'path'=>'Contract.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'Contract.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'Contract.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Contract.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'type'=>'Identifier', 'path'=>'Contract.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'url' => {'type'=>'uri', 'path'=>'Contract.url', 'min'=>0, 'max'=>1},
        'version' => {'type'=>'string', 'path'=>'Contract.version', 'min'=>0, 'max'=>1},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/contract-status'=>['amended', 'appended', 'cancelled', 'disputed', 'entered-in-error', 'executable', 'executed', 'negotiable', 'offered', 'policy', 'rejected', 'renewed', 'revoked', 'resolved', 'terminated']}, 'type'=>'code', 'path'=>'Contract.status', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-status'}},
        'legalState' => {'valid_codes'=>{'http://hl7.org/fhir/contract-legalstate'=>['amended', 'appended', 'cancelled', 'disputed', 'entered-in-error', 'executable', 'executed', 'negotiable', 'offered', 'policy', 'rejected', 'renewed', 'revoked', 'resolved', 'terminated']}, 'type'=>'CodeableConcept', 'path'=>'Contract.legalState', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-legalstate'}},
        'instantiatesCanonical' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Contract'], 'type'=>'Reference', 'path'=>'Contract.instantiatesCanonical', 'min'=>0, 'max'=>1},
        'instantiatesUri' => {'type'=>'uri', 'path'=>'Contract.instantiatesUri', 'min'=>0, 'max'=>1},
        'contentDerivative' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/contract-content-derivative'=>['registration', 'retrieval', 'statement', 'shareable']}, 'type'=>'CodeableConcept', 'path'=>'Contract.contentDerivative', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-content-derivative'}},
        'issued' => {'type'=>'dateTime', 'path'=>'Contract.issued', 'min'=>0, 'max'=>1},
        'applies' => {'type'=>'Period', 'path'=>'Contract.applies', 'min'=>0, 'max'=>1},
        'expirationType' => {'valid_codes'=>{'http://hl7.org/fhir/contract-expiration-type'=>['breach']}, 'type'=>'CodeableConcept', 'path'=>'Contract.expirationType', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-expiration-type'}},
        'subject' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'Contract.subject', 'min'=>0, 'max'=>Float::INFINITY},
        'authority' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'Contract.authority', 'min'=>0, 'max'=>Float::INFINITY},
        'domain' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'type'=>'Reference', 'path'=>'Contract.domain', 'min'=>0, 'max'=>Float::INFINITY},
        'site' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'type'=>'Reference', 'path'=>'Contract.site', 'min'=>0, 'max'=>Float::INFINITY},
        'name' => {'type'=>'string', 'path'=>'Contract.name', 'min'=>0, 'max'=>1},
        'title' => {'type'=>'string', 'path'=>'Contract.title', 'min'=>0, 'max'=>1},
        'subtitle' => {'type'=>'string', 'path'=>'Contract.subtitle', 'min'=>0, 'max'=>1},
        'alias' => {'type'=>'string', 'path'=>'Contract.alias', 'min'=>0, 'max'=>Float::INFINITY},
        'author' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'Contract.author', 'min'=>0, 'max'=>1},
        'scope' => {'valid_codes'=>{'http://hl7.org/fhir/contract-scope'=>['policy']}, 'type'=>'CodeableConcept', 'path'=>'Contract.scope', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-scope'}},
        'topicCodeableConcept' => {'type'=>'CodeableConcept', 'path'=>'Contract.topic[x]', 'min'=>0, 'max'=>1},
        'topicReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'Contract.topic[x]', 'min'=>0, 'max'=>1},
        'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/contract-type'=>['privacy', 'disclosure', 'healthinsurance', 'supply', 'consent']}, 'type'=>'CodeableConcept', 'path'=>'Contract.type', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-type'}},
        'subType' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/contractsubtypecodes'=>['disclosure-ca', 'disclosure-us']}, 'type'=>'CodeableConcept', 'path'=>'Contract.subType', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-subtype'}},
        'contentDefinition' => {'type'=>'Contract::ContentDefinition', 'path'=>'Contract.contentDefinition', 'min'=>0, 'max'=>1},
        'term' => {'type'=>'Contract::Term', 'path'=>'Contract.term', 'min'=>0, 'max'=>Float::INFINITY},
        'supportingInfo' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'Contract.supportingInfo', 'min'=>0, 'max'=>Float::INFINITY},
        'relevantHistory' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Provenance'], 'type'=>'Reference', 'path'=>'Contract.relevantHistory', 'min'=>0, 'max'=>Float::INFINITY},
        'signer' => {'type'=>'Contract::Signer', 'path'=>'Contract.signer', 'min'=>0, 'max'=>Float::INFINITY},
        'friendly' => {'type'=>'Contract::Friendly', 'path'=>'Contract.friendly', 'min'=>0, 'max'=>Float::INFINITY},
        'legal' => {'type'=>'Contract::Legal', 'path'=>'Contract.legal', 'min'=>0, 'max'=>Float::INFINITY},
        'rule' => {'type'=>'Contract::Rule', 'path'=>'Contract.rule', 'min'=>0, 'max'=>Float::INFINITY},
        'legallyBindingAttachment' => {'type'=>'Attachment', 'path'=>'Contract.legallyBinding[x]', 'min'=>0, 'max'=>1},
        'legallyBindingReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Composition', 'http://hl7.org/fhir/StructureDefinition/DocumentReference', 'http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse', 'http://hl7.org/fhir/StructureDefinition/Contract'], 'type'=>'Reference', 'path'=>'Contract.legallyBinding[x]', 'min'=>0, 'max'=>1}
      }

      class ContentDefinition < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'ContentDefinition.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'ContentDefinition.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'ContentDefinition.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'valid_codes'=>{'http://hl7.org/fhir/contract-definition-type'=>['temp']}, 'type'=>'CodeableConcept', 'path'=>'ContentDefinition.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-definition-type'}},
          'subType' => {'valid_codes'=>{'http://hl7.org/fhir/contract-definition-subtype'=>['temp']}, 'type'=>'CodeableConcept', 'path'=>'ContentDefinition.subType', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-definition-subtype'}},
          'publisher' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'ContentDefinition.publisher', 'min'=>0, 'max'=>1},
          'publicationDate' => {'type'=>'dateTime', 'path'=>'ContentDefinition.publicationDate', 'min'=>0, 'max'=>1},
          'publicationStatus' => {'valid_codes'=>{'http://hl7.org/fhir/contract-publicationstatus'=>['amended', 'appended', 'cancelled', 'disputed', 'entered-in-error', 'executable', 'executed', 'negotiable', 'offered', 'policy', 'rejected', 'renewed', 'revoked', 'resolved', 'terminated']}, 'type'=>'code', 'path'=>'ContentDefinition.publicationStatus', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-publicationstatus'}},
          'copyright' => {'type'=>'markdown', 'path'=>'ContentDefinition.copyright', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :type              # 1-1 CodeableConcept
        attr_accessor :subType           # 0-1 CodeableConcept
        attr_accessor :publisher         # 0-1 Reference(Practitioner|PractitionerRole|Organization)
        attr_accessor :publicationDate   # 0-1 dateTime
        attr_accessor :publicationStatus # 1-1 code
        attr_accessor :copyright         # 0-1 markdown
      end

      class Term < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'topic' => ['CodeableConcept', 'Reference']
        }
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Term.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Term.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Term.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'identifier' => {'type'=>'Identifier', 'path'=>'Term.identifier', 'min'=>0, 'max'=>1},
          'issued' => {'type'=>'dateTime', 'path'=>'Term.issued', 'min'=>0, 'max'=>1},
          'applies' => {'type'=>'Period', 'path'=>'Term.applies', 'min'=>0, 'max'=>1},
          'topicCodeableConcept' => {'type'=>'CodeableConcept', 'path'=>'Term.topic[x]', 'min'=>0, 'max'=>1},
          'topicReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'Term.topic[x]', 'min'=>0, 'max'=>1},
          'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/contracttermtypecodes'=>['statutory', 'subject-to']}, 'type'=>'CodeableConcept', 'path'=>'Term.type', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-term-type'}},
          'subType' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/contracttermsubtypecodes'=>['condition', 'warranty', 'innominate']}, 'type'=>'CodeableConcept', 'path'=>'Term.subType', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-term-subtype'}},
          'text' => {'type'=>'string', 'path'=>'Term.text', 'min'=>0, 'max'=>1},
          'securityLabel' => {'type'=>'Contract::Term::SecurityLabel', 'path'=>'Term.securityLabel', 'min'=>0, 'max'=>Float::INFINITY},
          'offer' => {'type'=>'Contract::Term::Offer', 'path'=>'Term.offer', 'min'=>1, 'max'=>1},
          'asset' => {'type'=>'Contract::Term::Asset', 'path'=>'Term.asset', 'min'=>0, 'max'=>Float::INFINITY},
          'action' => {'type'=>'Contract::Term::Action', 'path'=>'Term.action', 'min'=>0, 'max'=>Float::INFINITY},
          'group' => {'type'=>'Contract::Term', 'path'=>'Term.group', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class SecurityLabel < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'type'=>'string', 'path'=>'SecurityLabel.id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'SecurityLabel.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'SecurityLabel.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'number' => {'type'=>'unsignedInt', 'path'=>'SecurityLabel.number', 'min'=>0, 'max'=>Float::INFINITY},
            'classification' => {'valid_codes'=>{'http://hl7.org/fhir/contract-security-classification'=>['policy']}, 'type'=>'Coding', 'path'=>'SecurityLabel.classification', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-security-classification'}},
            'category' => {'valid_codes'=>{'http://hl7.org/fhir/contract-security-category'=>['policy']}, 'type'=>'Coding', 'path'=>'SecurityLabel.category', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-security-category'}},
            'control' => {'valid_codes'=>{'http://hl7.org/fhir/contract-security-control'=>['policy']}, 'type'=>'Coding', 'path'=>'SecurityLabel.control', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-security-control'}}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :number            # 0-* [ unsignedInt ]
          attr_accessor :classification    # 1-1 Coding
          attr_accessor :category          # 0-* [ Coding ]
          attr_accessor :control           # 0-* [ Coding ]
        end

        class Offer < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'type'=>'string', 'path'=>'Offer.id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Offer.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Offer.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'identifier' => {'type'=>'Identifier', 'path'=>'Offer.identifier', 'min'=>0, 'max'=>Float::INFINITY},
            'party' => {'type'=>'Contract::Term::Offer::Party', 'path'=>'Offer.party', 'min'=>0, 'max'=>Float::INFINITY},
            'topic' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'Offer.topic', 'min'=>0, 'max'=>1},
            'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/contracttermtypecodes'=>['statutory', 'subject-to']}, 'type'=>'CodeableConcept', 'path'=>'Offer.type', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-term-type'}},
            'decision' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v3-ActCode'=>['_ActConsentDirective', 'EMRGONLY', 'GRANTORCHOICE', 'IMPLIED', 'IMPLIEDD', 'NOCONSENT', 'NOPP', 'OPTIN', 'OPTINR', 'OPTOUT', 'OPTOUTE']}, 'type'=>'CodeableConcept', 'path'=>'Offer.decision', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://terminology.hl7.org/ValueSet/v3-ActConsentDirective'}},
            'decisionMode' => {'valid_codes'=>{'http://hl7.org/fhir/contract-decision-mode'=>['policy']}, 'type'=>'CodeableConcept', 'path'=>'Offer.decisionMode', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-decision-mode'}},
            'answer' => {'type'=>'Contract::Term::Offer::Answer', 'path'=>'Offer.answer', 'min'=>0, 'max'=>Float::INFINITY},
            'text' => {'type'=>'string', 'path'=>'Offer.text', 'min'=>0, 'max'=>1},
            'linkId' => {'type'=>'string', 'path'=>'Offer.linkId', 'min'=>0, 'max'=>Float::INFINITY},
            'securityLabelNumber' => {'type'=>'unsignedInt', 'path'=>'Offer.securityLabelNumber', 'min'=>0, 'max'=>Float::INFINITY}
          }

          class Party < Model
            include FHIR::Hashable
            include FHIR::Json
            include FHIR::Xml

            METADATA = {
              'id' => {'type'=>'string', 'path'=>'Party.id', 'min'=>0, 'max'=>1},
              'extension' => {'type'=>'Extension', 'path'=>'Party.extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'type'=>'Extension', 'path'=>'Party.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
              'reference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/Group', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'Party.reference', 'min'=>1, 'max'=>Float::INFINITY},
              'role' => {'valid_codes'=>{'http://hl7.org/fhir/contract-party-role'=>['flunky']}, 'type'=>'CodeableConcept', 'path'=>'Party.role', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-party-role'}}
            }

            attr_accessor :id                # 0-1 string
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :reference         # 1-* [ Reference(Patient|RelatedPerson|Practitioner|PractitionerRole|Device|Group|Organization) ]
            attr_accessor :role              # 1-1 CodeableConcept
          end

          class Answer < Model
            include FHIR::Hashable
            include FHIR::Json
            include FHIR::Xml

            MULTIPLE_TYPES = {
              'value' => ['boolean', 'decimal', 'integer', 'date', 'dateTime', 'time', 'string', 'uri', 'Attachment', 'Coding', 'Quantity', 'Reference']
            }
            METADATA = {
              'id' => {'type'=>'string', 'path'=>'Answer.id', 'min'=>0, 'max'=>1},
              'extension' => {'type'=>'Extension', 'path'=>'Answer.extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'type'=>'Extension', 'path'=>'Answer.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
              'valueBoolean' => {'type'=>'boolean', 'path'=>'Answer.value[x]', 'min'=>1, 'max'=>1},
              'valueDecimal' => {'type'=>'decimal', 'path'=>'Answer.value[x]', 'min'=>1, 'max'=>1},
              'valueInteger' => {'type'=>'integer', 'path'=>'Answer.value[x]', 'min'=>1, 'max'=>1},
              'valueDate' => {'type'=>'date', 'path'=>'Answer.value[x]', 'min'=>1, 'max'=>1},
              'valueDateTime' => {'type'=>'dateTime', 'path'=>'Answer.value[x]', 'min'=>1, 'max'=>1},
              'valueTime' => {'type'=>'time', 'path'=>'Answer.value[x]', 'min'=>1, 'max'=>1},
              'valueString' => {'type'=>'string', 'path'=>'Answer.value[x]', 'min'=>1, 'max'=>1},
              'valueUri' => {'type'=>'uri', 'path'=>'Answer.value[x]', 'min'=>1, 'max'=>1},
              'valueAttachment' => {'type'=>'Attachment', 'path'=>'Answer.value[x]', 'min'=>1, 'max'=>1},
              'valueCoding' => {'type'=>'Coding', 'path'=>'Answer.value[x]', 'min'=>1, 'max'=>1},
              'valueQuantity' => {'type'=>'Quantity', 'path'=>'Answer.value[x]', 'min'=>1, 'max'=>1},
              'valueReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'Answer.value[x]', 'min'=>1, 'max'=>1}
            }

            attr_accessor :id                # 0-1 string
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :valueBoolean      # 1-1 boolean
            attr_accessor :valueDecimal      # 1-1 decimal
            attr_accessor :valueInteger      # 1-1 integer
            attr_accessor :valueDate         # 1-1 date
            attr_accessor :valueDateTime     # 1-1 dateTime
            attr_accessor :valueTime         # 1-1 time
            attr_accessor :valueString       # 1-1 string
            attr_accessor :valueUri          # 1-1 uri
            attr_accessor :valueAttachment   # 1-1 Attachment
            attr_accessor :valueCoding       # 1-1 Coding
            attr_accessor :valueQuantity     # 1-1 Quantity
            attr_accessor :valueReference    # 1-1 Reference(Resource)
          end

          attr_accessor :id                  # 0-1 string
          attr_accessor :extension           # 0-* [ Extension ]
          attr_accessor :modifierExtension   # 0-* [ Extension ]
          attr_accessor :identifier          # 0-* [ Identifier ]
          attr_accessor :party               # 0-* [ Contract::Term::Offer::Party ]
          attr_accessor :topic               # 0-1 Reference(Resource)
          attr_accessor :type                # 0-1 CodeableConcept
          attr_accessor :decision            # 0-1 CodeableConcept
          attr_accessor :decisionMode        # 0-* [ CodeableConcept ]
          attr_accessor :answer              # 0-* [ Contract::Term::Offer::Answer ]
          attr_accessor :text                # 0-1 string
          attr_accessor :linkId              # 0-* [ string ]
          attr_accessor :securityLabelNumber # 0-* [ unsignedInt ]
        end

        class Asset < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'type'=>'string', 'path'=>'Asset.id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Asset.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Asset.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'scope' => {'valid_codes'=>{'http://hl7.org/fhir/contract-asset-scope'=>['thing']}, 'type'=>'CodeableConcept', 'path'=>'Asset.scope', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-assetscope'}},
            'type' => {'valid_codes'=>{'http://hl7.org/fhir/contract-asset-type'=>['participation']}, 'type'=>'CodeableConcept', 'path'=>'Asset.type', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-assettype'}},
            'typeReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'Asset.typeReference', 'min'=>0, 'max'=>Float::INFINITY},
            'subtype' => {'valid_codes'=>{'http://hl7.org/fhir/contract-asset-subtype'=>['participation']}, 'type'=>'CodeableConcept', 'path'=>'Asset.subtype', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-assetsubtype'}},
            'relationship' => {'valid_codes'=>{'http://loinc.org'=>['100018-1', '100029-8', '100213-8', '100214-6', '100215-3', '100216-1', '100217-9', '100218-7', '100219-5', '100220-3', '100221-1', '100222-9', '100225-2', '100226-0', '100227-8', '100228-6', '100229-4', '100231-0', '100282-3', '100349-0', '100369-8', '100438-1', '100439-9', '100440-7', '100441-5', '100442-3', '100443-1', '100444-9', '100445-6', '100446-4', '100447-2', '100448-0', '100449-8', '100450-6', '100451-4', '100452-2', '100453-0', '100454-8', '100455-5', '100456-3', '100457-1', '100458-9', '100459-7', '100460-5', '100461-3', '100462-1', '100463-9', '100464-7', '100465-4', '100466-2', '100467-0', '100468-8', '100469-6', '100470-4', '100471-2', '100472-0', '100473-8', '100474-6', '100475-3', '100476-1', '100477-9', '100478-7', '100479-5', '100480-3', '100481-1', '100482-9', '100483-7', '100484-5', '100485-2', '100486-0', '100487-8', '100488-6', '100489-4', '100490-2', '100491-0', '100492-8', '100493-6', '100494-4', '100495-1', '100496-9', '100497-7', '100498-5', '100499-3', '100500-8', '100501-6', '100502-4', '100503-2', '100504-0', '100505-7', '100506-5', '100507-3', '100508-1', '100509-9', '100510-7', '100511-5', '100512-3', '100513-1', '100514-9', '100515-6', '100516-4', '100517-2', '100518-0', '100519-8', '100520-6', '100521-4', '100522-2', '100523-0', '100524-8', '100525-5', '100526-3', '100527-1', '100528-9', '100529-7', '100530-5', '100531-3', '100532-1', '100533-9', '100534-7', '100535-4', '100536-2', '100537-0', '100538-8', '100539-6', '100540-4', '100541-2', '100542-0', '100543-8', '100544-6', '100545-3', '100546-1', '100547-9', '100548-7', '100549-5', '100550-3', '100551-1', '100552-9', '100553-7', '100554-5', '100555-2', '100556-0', '100557-8', '100558-6', '100559-4', '100560-2', '100561-0', '100562-8', '100563-6', '100564-4', '100565-1', '100566-9', '100567-7', '100568-5', '100569-3', '100570-1', '100571-9', '100572-7', '100573-5', '100574-3', '100575-0', '100576-8', '100577-6', '100578-4', '100579-2', '100580-0', '100581-8', '100582-6', '100583-4', '100584-2', '100585-9', '100586-7', '100587-5', '100588-3', '100589-1', '100590-9', '100591-7', '100592-5', '100593-3', '100594-1', '100595-8', '100596-6', '100597-4', '100598-2', '100599-0', '100600-6', '100601-4', '100602-2', '100603-0', '100604-8', '100605-5', '100606-3', '100607-1', '100608-9', '100609-7', '100610-5', '100611-3', '100612-1', '100613-9', '100614-7', '100615-4', '100616-2', '100617-0', '100618-8', '100619-6', '100620-4', '100621-2', '100622-0', '100623-8', '100624-6', '100625-3', '100626-1', '100627-9', '100628-7', '100629-5', '100630-3', '100631-1', '100632-9', '100633-7', '100634-5', '100635-2', '100636-0', '100637-8', '100638-6', '100639-4', '100640-2', '100641-0', '100642-8', '100643-6', '100644-4', '100645-1', '100646-9', '100647-7', '100648-5', '100649-3', '100650-1', '100651-9', '100655-0', '100656-8', '100657-6', '100658-4', '100659-2', '100660-0', '100661-8', '100697-2', '100698-0', '100718-6', '100719-4', '100720-2', '100721-0', '100722-8', '100723-6', '100724-4', '100725-1', '100726-9', '100727-7', '100728-5', '100729-3', '100730-1', '100731-9', '100736-8', '100754-1', '100760-8', '100761-6', '100852-3', '100853-1', '100875-4', '100876-2', '100877-0', '100878-8', '100879-6', '100880-4', '100881-2', '100882-0', '100883-8', '100884-6', '100966-1', '100967-9', '11485-0', '11486-8', '11488-4', '11490-0', '11492-6', '11494-2', '11495-9', '11496-7', '11497-5', '11498-3', '11499-1', '11500-6', '11502-2', '11503-0', '11504-8', '11505-5', '11506-3', '11507-1', '11508-9', '11509-7', '11510-5', '11512-1', '11514-7', '11515-4', '11516-2', '11517-0', '11518-8', '11519-6', '11520-4', '11521-2', '11522-0', '11523-8', '11524-6', '11525-3', '11526-1', '11527-9', '11528-7', '11529-5', '11534-5', '11536-0', '11538-6', '11539-4', '11540-2', '11541-0', '11542-8', '11543-6', '15507-7', '15508-5', '17787-3', '18594-2', '18682-5', '18733-6', '18734-4', '18735-1', '18736-9', '18737-7', '18738-5', '18739-3', '18740-1', '18741-9', '18742-7', '18743-5', '18744-3', '18745-0', '18746-8', '18747-6', '18748-4', '18749-2', '18750-0', '18751-8', '18752-6', '18753-4', '18754-2', '18755-9', '18756-7', '18757-5', '18758-3', '18759-1', '18760-9', '18761-7', '18762-5', '18763-3', '18764-1', '18765-8', '18766-6', '18776-5', '18823-5', '18824-3', '18825-0', '18826-8', '18836-7', '18841-7', '18842-5', '19002-5', '19003-3', '19004-1', '24531-6', '24532-4', '24533-2', '24534-0', '24535-7', '24536-5', '24537-3', '24538-1', '24539-9', '24540-7', '24541-5', '24542-3', '24543-1', '24544-9', '24545-6', '24546-4', '24547-2', '24548-0', '24549-8', '24550-6', '24551-4', '24552-2', '24553-0', '24554-8', '24555-5', '24556-3', '24557-1', '24558-9', '24559-7', '24560-5', '24561-3', '24562-1', '24563-9', '24564-7', '24566-2', '24567-0', '24568-8', '24569-6', '24570-4', '24571-2', '24572-0', '24573-8', '24574-6', '24575-3', '24576-1', '24577-9', '24578-7', '24579-5', '24580-3', '24581-1', '24582-9', '24583-7', '24584-5', '24585-2', '24586-0', '24587-8', '24588-6', '24589-4', '24590-2', '24591-0', '24593-6', '24594-4', '24595-1', '24596-9', '24597-7', '24598-5', '24599-3', '24600-9', '24601-7', '24602-5', '24603-3', '24604-1', '24605-8', '24606-6', '24609-0', '24610-8', '24611-6', '24612-4', '24613-2', '24614-0', '24615-7', '24616-5', '24617-3', '24619-9', '24620-7', '24621-5', '24622-3', '24623-1', '24624-9', '24625-6', '24626-4', '24627-2', '24628-0', '24629-8', '24630-6', '24631-4', '24632-2', '24634-8', '24635-5', '24636-3', '24637-1', '24638-9', '24639-7', '24640-5', '24641-3', '24642-1', '24643-9', '24644-7', '24645-4', '24646-2', '24647-0', '24648-8', '24649-6', '24650-4', '24651-2', '24652-0', '24653-8', '24654-6', '24655-3', '24656-1', '24657-9', '24658-7', '24659-5', '24660-3', '24661-1', '24662-9', '24663-7', '24664-5', '24665-2', '24666-0', '24667-8', '24668-6', '24669-4', '24670-2', '24671-0', '24672-8', '24673-6', '24674-4', '24675-1', '24676-9', '24677-7', '24678-5', '24679-3', '24680-1', '24681-9', '24682-7', '24683-5', '24684-3', '24685-0', '24686-8', '24687-6', '24688-4', '24689-2', '24690-0', '24691-8', '24692-6', '24693-4', '24694-2', '24695-9', '24696-7', '24697-5', '24698-3', '24699-1', '24700-7', '24702-3', '24703-1', '24704-9', '24705-6', '24706-4', '24707-2', '24708-0', '24709-8', '24710-6', '24711-4', '24712-2', '24713-0', '24714-8', '24715-5', '24716-3', '24717-1', '24718-9', '24719-7', '24720-5', '24721-3', '24722-1', '24723-9', '24724-7', '24725-4', '24726-2', '24727-0', '24728-8', '24729-6', '24730-4', '24731-2', '24732-0', '24733-8', '24734-6', '24735-3', '24740-3', '24745-2', '24746-0', '24747-8', '24748-6', '24750-2', '24751-0', '24752-8', '24753-6', '24754-4', '24755-1', '24756-9', '24757-7', '24760-1', '24761-9', '24762-7', '24764-3', '24765-0', '24766-8', '24767-6', '24769-2', '24770-0', '24771-8', '24772-6', '24773-4', '24776-7', '24778-3', '24779-1', '24780-9', '24781-7', '24782-5', '24783-3', '24784-1', '24787-4', '24788-2', '24789-0', '24790-8', '24792-4', '24793-2', '24794-0', '24795-7', '24796-5', '24797-3', '24798-1', '24799-9', '24800-5', '24801-3', '24802-1', '24803-9', '24804-7', '24805-4', '24806-2', '24807-0', '24808-8', '24809-6', '24811-2', '24812-0', '24813-8', '24814-6', '24815-3', '24816-1', '24817-9', '24818-7', '24819-5', '24820-3', '24821-1', '24822-9', '24823-7', '24824-5', '24825-2', '24826-0', '24827-8', '24828-6', '24829-4', '24830-2', '24831-0', '24832-8', '24833-6', '24834-4', '24835-1', '24836-9', '24837-7', '24838-5', '24839-3', '24840-1', '24841-9', '24842-7', '24843-5', '24844-3', '24845-0', '24846-8', '24848-4', '24849-2', '24850-0', '24851-8', '24852-6', '24853-4', '24854-2', '24855-9', '24856-7', '24857-5', '24858-3', '24859-1', '24860-9', '24861-7', '24862-5', '24863-3', '24864-1', '24865-8', '24866-6', '24867-4', '24868-2', '24869-0', '24870-8', '24871-6', '24872-4', '24873-2', '24874-0', '24875-7', '24876-5', '24877-3', '24878-1', '24879-9', '24880-7', '24881-5', '24882-3', '24883-1', '24884-9', '24885-6', '24887-2', '24888-0', '24889-8', '24891-4', '24892-2', '24893-0', '24894-8', '24896-3', '24899-7', '24900-3', '24901-1', '24902-9', '24903-7', '24904-5', '24905-2', '24906-0', '24907-8', '24908-6', '24909-4', '24910-2', '24911-0', '24912-8', '24913-6', '24914-4', '24915-1', '24916-9', '24917-7', '24918-5', '24919-3', '24920-1', '24921-9', '24922-7', '24923-5', '24924-3', '24925-0', '24926-8', '24927-6', '24928-4', '24929-2', '24930-0', '24931-8', '24932-6', '24933-4', '24934-2', '24935-9', '24936-7', '24937-5', '24938-3', '24939-1', '24940-9', '24941-7', '24942-5', '24943-3', '24944-1', '24945-8', '24946-6', '24947-4', '24948-2', '24963-1', '24964-9', '24965-6', '24967-2', '24968-0', '24969-8', '24970-6', '24971-4', '24972-2', '24973-0', '24974-8', '24975-5', '24977-1', '24978-9', '24979-7', '24980-5', '24981-3', '24982-1', '24983-9', '24984-7', '24985-4', '24986-2', '24987-0', '24988-8', '24989-6', '24990-4', '24991-2', '24992-0', '24993-8', '24994-6', '24995-3', '24996-1', '24997-9', '24998-7', '24999-5', '25000-1', '25001-9', '25002-7', '25003-5', '25005-0', '25006-8', '25007-6', '25008-4', '25009-2', '25010-0', '25011-8', '25012-6', '25013-4', '25014-2', '25015-9', '25016-7', '25017-5', '25018-3', '25019-1', '25020-9', '25022-5', '25023-3', '25024-1', '25025-8', '25026-6', '25027-4', '25028-2', '25029-0', '25030-8', '25031-6', '25032-4', '25033-2', '25034-0', '25035-7', '25036-5', '25038-1', '25039-9', '25040-7', '25041-5', '25042-3', '25043-1', '25044-9', '25045-6', '25046-4', '25047-2', '25050-6', '25051-4', '25052-2', '25053-0', '25054-8', '25055-5', '25056-3', '25057-1', '25058-9', '25059-7', '25060-5', '25061-3', '25062-1', '25063-9', '25064-7', '25065-4', '25066-2', '25067-0', '25068-8', '25069-6', '25070-4', '25071-2', '25072-0', '25073-8', '25074-6', '25076-1', '25077-9', '25078-7', '25079-5', '25080-3', '25081-1', '26064-6', '26065-3', '26066-1', '26067-9', '26068-7', '26069-5', '26070-3', '26071-1', '26072-9', '26073-7', '26074-5', '26075-2', '26076-0', '26077-8', '26078-6', '26079-4', '26080-2', '26081-0', '26082-8', '26083-6', '26084-4', '26085-1', '26086-9', '26087-7', '26088-5', '26089-3', '26090-1', '26091-9', '26092-7', '26093-5', '26094-3', '26095-0', '26096-8', '26097-6', '26098-4', '26099-2', '26100-8', '26101-6', '26102-4', '26106-5', '26107-3', '26108-1', '26109-9', '26110-7', '26111-5', '26112-3', '26113-1', '26114-9', '26115-6', '26116-4', '26117-2', '26118-0', '26120-6', '26122-2', '26124-8', '26125-5', '26126-3', '26127-1', '26128-9', '26129-7', '26130-5', '26131-3', '26132-1', '26133-9', '26134-7', '26135-4', '26136-2', '26137-0', '26138-8', '26139-6', '26140-4', '26141-2', '26142-0', '26143-8', '26144-6', '26146-1', '26148-7', '26150-3', '26151-1', '26152-9', '26153-7', '26154-5', '26155-2', '26156-0', '26157-8', '26158-6', '26159-4', '26160-2', '26161-0', '26162-8', '26163-6', '26164-4', '26165-1', '26166-9', '26167-7', '26168-5', '26169-3', '26170-1', '26171-9', '26172-7', '26173-5', '26174-3', '26175-0', '26176-8', '26177-6', '26178-4', '26179-2', '26180-0', '26181-8', '26182-6', '26183-4', '26184-2', '26185-9', '26186-7', '26187-5', '26188-3', '26189-1', '26190-9', '26191-7', '26192-5', '26193-3', '26194-1', '26195-8', '26196-6', '26197-4', '26198-2', '26199-0', '26200-6', '26201-4', '26202-2', '26203-0', '26204-8'], 'urn:ietf:rfc:3986'=>['http://hl7.org/fhir/StructureDefinition/lipidprofile'], 'urn:ietf:bcp:13'=>['application/hl7-cda+xml']}, 'type'=>'Coding', 'path'=>'Asset.relationship', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/consent-content-class'}},
            'context' => {'type'=>'Contract::Term::Asset::Context', 'path'=>'Asset.context', 'min'=>0, 'max'=>Float::INFINITY},
            'condition' => {'type'=>'string', 'path'=>'Asset.condition', 'min'=>0, 'max'=>1},
            'periodType' => {'valid_codes'=>{'http://hl7.org/fhir/asset-availability'=>['lease']}, 'type'=>'CodeableConcept', 'path'=>'Asset.periodType', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/asset-availability'}},
            'period' => {'type'=>'Period', 'path'=>'Asset.period', 'min'=>0, 'max'=>Float::INFINITY},
            'usePeriod' => {'type'=>'Period', 'path'=>'Asset.usePeriod', 'min'=>0, 'max'=>Float::INFINITY},
            'text' => {'type'=>'string', 'path'=>'Asset.text', 'min'=>0, 'max'=>1},
            'linkId' => {'type'=>'string', 'path'=>'Asset.linkId', 'min'=>0, 'max'=>Float::INFINITY},
            'answer' => {'type'=>'Contract::Term::Offer::Answer', 'path'=>'Asset.answer', 'min'=>0, 'max'=>Float::INFINITY},
            'securityLabelNumber' => {'type'=>'unsignedInt', 'path'=>'Asset.securityLabelNumber', 'min'=>0, 'max'=>Float::INFINITY},
            'valuedItem' => {'type'=>'Contract::Term::Asset::ValuedItem', 'path'=>'Asset.valuedItem', 'min'=>0, 'max'=>Float::INFINITY}
          }

          class Context < Model
            include FHIR::Hashable
            include FHIR::Json
            include FHIR::Xml

            METADATA = {
              'id' => {'type'=>'string', 'path'=>'Context.id', 'min'=>0, 'max'=>1},
              'extension' => {'type'=>'Extension', 'path'=>'Context.extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'type'=>'Extension', 'path'=>'Context.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
              'reference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'Context.reference', 'min'=>0, 'max'=>1},
              'code' => {'valid_codes'=>{'http://hl7.org/fhir/contract-asset-context'=>['custodian']}, 'type'=>'CodeableConcept', 'path'=>'Context.code', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-assetcontext'}},
              'text' => {'type'=>'string', 'path'=>'Context.text', 'min'=>0, 'max'=>1}
            }

            attr_accessor :id                # 0-1 string
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :reference         # 0-1 Reference(Resource)
            attr_accessor :code              # 0-* [ CodeableConcept ]
            attr_accessor :text              # 0-1 string
          end

          class ValuedItem < Model
            include FHIR::Hashable
            include FHIR::Json
            include FHIR::Xml

            MULTIPLE_TYPES = {
              'entity' => ['CodeableConcept', 'Reference']
            }
            METADATA = {
              'id' => {'type'=>'string', 'path'=>'ValuedItem.id', 'min'=>0, 'max'=>1},
              'extension' => {'type'=>'Extension', 'path'=>'ValuedItem.extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'type'=>'Extension', 'path'=>'ValuedItem.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
              'entityCodeableConcept' => {'type'=>'CodeableConcept', 'path'=>'ValuedItem.entity[x]', 'min'=>0, 'max'=>1},
              'entityReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'ValuedItem.entity[x]', 'min'=>0, 'max'=>1},
              'identifier' => {'type'=>'Identifier', 'path'=>'ValuedItem.identifier', 'min'=>0, 'max'=>1},
              'effectiveTime' => {'type'=>'dateTime', 'path'=>'ValuedItem.effectiveTime', 'min'=>0, 'max'=>1},
              'quantity' => {'type'=>'Quantity', 'path'=>'ValuedItem.quantity', 'min'=>0, 'max'=>1},
              'unitPrice' => {'type'=>'Money', 'path'=>'ValuedItem.unitPrice', 'min'=>0, 'max'=>1},
              'factor' => {'type'=>'decimal', 'path'=>'ValuedItem.factor', 'min'=>0, 'max'=>1},
              'points' => {'type'=>'decimal', 'path'=>'ValuedItem.points', 'min'=>0, 'max'=>1},
              'net' => {'type'=>'Money', 'path'=>'ValuedItem.net', 'min'=>0, 'max'=>1},
              'payment' => {'type'=>'string', 'path'=>'ValuedItem.payment', 'min'=>0, 'max'=>1},
              'paymentDate' => {'type'=>'dateTime', 'path'=>'ValuedItem.paymentDate', 'min'=>0, 'max'=>1},
              'responsible' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson'], 'type'=>'Reference', 'path'=>'ValuedItem.responsible', 'min'=>0, 'max'=>1},
              'recipient' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson'], 'type'=>'Reference', 'path'=>'ValuedItem.recipient', 'min'=>0, 'max'=>1},
              'linkId' => {'type'=>'string', 'path'=>'ValuedItem.linkId', 'min'=>0, 'max'=>Float::INFINITY},
              'securityLabelNumber' => {'type'=>'unsignedInt', 'path'=>'ValuedItem.securityLabelNumber', 'min'=>0, 'max'=>Float::INFINITY}
            }

            attr_accessor :id                    # 0-1 string
            attr_accessor :extension             # 0-* [ Extension ]
            attr_accessor :modifierExtension     # 0-* [ Extension ]
            attr_accessor :entityCodeableConcept # 0-1 CodeableConcept
            attr_accessor :entityReference       # 0-1 Reference(Resource)
            attr_accessor :identifier            # 0-1 Identifier
            attr_accessor :effectiveTime         # 0-1 dateTime
            attr_accessor :quantity              # 0-1 Quantity
            attr_accessor :unitPrice             # 0-1 Money
            attr_accessor :factor                # 0-1 decimal
            attr_accessor :points                # 0-1 decimal
            attr_accessor :net                   # 0-1 Money
            attr_accessor :payment               # 0-1 string
            attr_accessor :paymentDate           # 0-1 dateTime
            attr_accessor :responsible           # 0-1 Reference(Organization|Patient|Practitioner|PractitionerRole|RelatedPerson)
            attr_accessor :recipient             # 0-1 Reference(Organization|Patient|Practitioner|PractitionerRole|RelatedPerson)
            attr_accessor :linkId                # 0-* [ string ]
            attr_accessor :securityLabelNumber   # 0-* [ unsignedInt ]
          end

          attr_accessor :id                  # 0-1 string
          attr_accessor :extension           # 0-* [ Extension ]
          attr_accessor :modifierExtension   # 0-* [ Extension ]
          attr_accessor :scope               # 0-1 CodeableConcept
          attr_accessor :type                # 0-* [ CodeableConcept ]
          attr_accessor :typeReference       # 0-* [ Reference(Resource) ]
          attr_accessor :subtype             # 0-* [ CodeableConcept ]
          attr_accessor :relationship        # 0-1 Coding
          attr_accessor :context             # 0-* [ Contract::Term::Asset::Context ]
          attr_accessor :condition           # 0-1 string
          attr_accessor :periodType          # 0-* [ CodeableConcept ]
          attr_accessor :period              # 0-* [ Period ]
          attr_accessor :usePeriod           # 0-* [ Period ]
          attr_accessor :text                # 0-1 string
          attr_accessor :linkId              # 0-* [ string ]
          attr_accessor :answer              # 0-* [ Contract::Term::Offer::Answer ]
          attr_accessor :securityLabelNumber # 0-* [ unsignedInt ]
          attr_accessor :valuedItem          # 0-* [ Contract::Term::Asset::ValuedItem ]
        end

        class Action < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          MULTIPLE_TYPES = {
            'occurrence' => ['dateTime', 'Period', 'Timing']
          }
          METADATA = {
            'id' => {'type'=>'string', 'path'=>'Action.id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Action.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Action.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'doNotPerform' => {'type'=>'boolean', 'path'=>'Action.doNotPerform', 'min'=>0, 'max'=>1},
            'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/contractaction'=>['action-a', 'action-b']}, 'type'=>'CodeableConcept', 'path'=>'Action.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-action'}},
            'subject' => {'type'=>'Contract::Term::Action::Subject', 'path'=>'Action.subject', 'min'=>0, 'max'=>Float::INFINITY},
            'intent' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v3-ActReason'=>['HMARKT', 'HOPERAT', 'CAREMGT', 'DONAT', 'FRAUD', 'GOV', 'HACCRED', 'HCOMPL', 'HDECD', 'HDIRECT', 'HDM', 'HLEGAL', 'HOUTCOMS', 'HPRGRP', 'HQUALIMP', 'HSYSADMIN', 'LABELING', 'METAMGT', 'MEMADMIN', 'MILCDM', 'PATADMIN', 'PATSFTY', 'PERFMSR', 'RECORDMGT', 'SYSDEV', 'HTEST', 'TRAIN', 'HPAYMT', 'CLMATTCH', 'COVAUTH', 'COVERAGE', 'ELIGDTRM', 'ELIGVER', 'ENROLLM', 'MILDCRG', 'REMITADV', 'HRESCH', 'BIORCH', 'CLINTRCH', 'CLINTRCHNPC', 'CLINTRCHPC', 'PRECLINTRCH', 'DSRCH', 'POARCH', 'TRANSRCH', 'PATRQT', 'FAMRQT', 'PWATRNY', 'SUPNWK', 'PUBHLTH', 'DISASTER', 'THREAT', 'TREAT', 'CLINTRL', 'COC', 'ETREAT', 'BTG', 'ERTREAT', 'POPHLTH']}, 'type'=>'CodeableConcept', 'path'=>'Action.intent', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://terminology.hl7.org/ValueSet/v3-PurposeOfUse'}},
            'linkId' => {'type'=>'string', 'path'=>'Action.linkId', 'min'=>0, 'max'=>Float::INFINITY},
            'status' => {'valid_codes'=>{'http://hl7.org/fhir/contract-action-status'=>['complete']}, 'type'=>'CodeableConcept', 'path'=>'Action.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-actionstatus'}},
            'context' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Encounter', 'http://hl7.org/fhir/StructureDefinition/EpisodeOfCare'], 'type'=>'Reference', 'path'=>'Action.context', 'min'=>0, 'max'=>1},
            'contextLinkId' => {'type'=>'string', 'path'=>'Action.contextLinkId', 'min'=>0, 'max'=>Float::INFINITY},
            'occurrenceDateTime' => {'type'=>'dateTime', 'path'=>'Action.occurrence[x]', 'min'=>0, 'max'=>1},
            'occurrencePeriod' => {'type'=>'Period', 'path'=>'Action.occurrence[x]', 'min'=>0, 'max'=>1},
            'occurrenceTiming' => {'type'=>'Timing', 'path'=>'Action.occurrence[x]', 'min'=>0, 'max'=>1},
            'requester' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/Group', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'Action.requester', 'min'=>0, 'max'=>Float::INFINITY},
            'requesterLinkId' => {'type'=>'string', 'path'=>'Action.requesterLinkId', 'min'=>0, 'max'=>Float::INFINITY},
            'performerType' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/provenance-participant-type'=>['enterer', 'performer', 'author', 'verifier', 'legal', 'attester', 'informant', 'custodian', 'assembler', 'composer'], 'http://dicom.nema.org/resources/ontology/DCM'=>['110150', '110151', '110152', '110153', '110154', '110155'], 'http://terminology.hl7.org/CodeSystem/extra-security-role-type'=>['authserver', 'datacollector', 'dataprocessor', 'datasubject', 'humanuser']}, 'type'=>'CodeableConcept', 'path'=>'Action.performerType', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/participation-role-type'}},
            'performerRole' => {'valid_codes'=>{'sample-security-structural-roles'=>['regulated-health-professionals', 'general-medicine', 'general-nursing', 'dentist', 'veterinarian', 'pharmacy', 'dietician', 'pediatrics', 'non-regulated-health-professionals', 'receptionist', 'business-manager', 'transcriptionist', 'claims-adjudicator']}, 'type'=>'CodeableConcept', 'path'=>'Action.performerRole', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/security-role-type'}},
            'performer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/CareTeam', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/Substance', 'http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Location'], 'type'=>'Reference', 'path'=>'Action.performer', 'min'=>0, 'max'=>1},
            'performerLinkId' => {'type'=>'string', 'path'=>'Action.performerLinkId', 'min'=>0, 'max'=>Float::INFINITY},
            'reason' => {'type'=>'CodeableReference', 'path'=>'Action.reason', 'min'=>0, 'max'=>Float::INFINITY},
            'reasonLinkId' => {'type'=>'string', 'path'=>'Action.reasonLinkId', 'min'=>0, 'max'=>Float::INFINITY},
            'note' => {'type'=>'Annotation', 'path'=>'Action.note', 'min'=>0, 'max'=>Float::INFINITY},
            'securityLabelNumber' => {'type'=>'unsignedInt', 'path'=>'Action.securityLabelNumber', 'min'=>0, 'max'=>Float::INFINITY}
          }

          class Subject < Model
            include FHIR::Hashable
            include FHIR::Json
            include FHIR::Xml

            METADATA = {
              'id' => {'type'=>'string', 'path'=>'Subject.id', 'min'=>0, 'max'=>1},
              'extension' => {'type'=>'Extension', 'path'=>'Subject.extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'type'=>'Extension', 'path'=>'Subject.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
              'reference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/Group', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'Subject.reference', 'min'=>1, 'max'=>Float::INFINITY},
              'role' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/contractactorrole'=>['practitioner', 'patient']}, 'type'=>'CodeableConcept', 'path'=>'Subject.role', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-actorrole'}}
            }

            attr_accessor :id                # 0-1 string
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :reference         # 1-* [ Reference(Patient|RelatedPerson|Practitioner|PractitionerRole|Device|Group|Organization) ]
            attr_accessor :role              # 0-1 CodeableConcept
          end

          attr_accessor :id                  # 0-1 string
          attr_accessor :extension           # 0-* [ Extension ]
          attr_accessor :modifierExtension   # 0-* [ Extension ]
          attr_accessor :doNotPerform        # 0-1 boolean
          attr_accessor :type                # 1-1 CodeableConcept
          attr_accessor :subject             # 0-* [ Contract::Term::Action::Subject ]
          attr_accessor :intent              # 1-1 CodeableConcept
          attr_accessor :linkId              # 0-* [ string ]
          attr_accessor :status              # 1-1 CodeableConcept
          attr_accessor :context             # 0-1 Reference(Encounter|EpisodeOfCare)
          attr_accessor :contextLinkId       # 0-* [ string ]
          attr_accessor :occurrenceDateTime  # 0-1 dateTime
          attr_accessor :occurrencePeriod    # 0-1 Period
          attr_accessor :occurrenceTiming    # 0-1 Timing
          attr_accessor :requester           # 0-* [ Reference(Patient|RelatedPerson|Practitioner|PractitionerRole|Device|Group|Organization) ]
          attr_accessor :requesterLinkId     # 0-* [ string ]
          attr_accessor :performerType       # 0-* [ CodeableConcept ]
          attr_accessor :performerRole       # 0-1 CodeableConcept
          attr_accessor :performer           # 0-1 Reference(RelatedPerson|Patient|Practitioner|PractitionerRole|CareTeam|Device|Substance|Organization|Location)
          attr_accessor :performerLinkId     # 0-* [ string ]
          attr_accessor :reason              # 0-* [ CodeableReference ]
          attr_accessor :reasonLinkId        # 0-* [ string ]
          attr_accessor :note                # 0-* [ Annotation ]
          attr_accessor :securityLabelNumber # 0-* [ unsignedInt ]
        end

        attr_accessor :id                   # 0-1 string
        attr_accessor :extension            # 0-* [ Extension ]
        attr_accessor :modifierExtension    # 0-* [ Extension ]
        attr_accessor :identifier           # 0-1 Identifier
        attr_accessor :issued               # 0-1 dateTime
        attr_accessor :applies              # 0-1 Period
        attr_accessor :topicCodeableConcept # 0-1 CodeableConcept
        attr_accessor :topicReference       # 0-1 Reference(Resource)
        attr_accessor :type                 # 0-1 CodeableConcept
        attr_accessor :subType              # 0-1 CodeableConcept
        attr_accessor :text                 # 0-1 string
        attr_accessor :securityLabel        # 0-* [ Contract::Term::SecurityLabel ]
        attr_accessor :offer                # 1-1 Contract::Term::Offer
        attr_accessor :asset                # 0-* [ Contract::Term::Asset ]
        attr_accessor :action               # 0-* [ Contract::Term::Action ]
        attr_accessor :group                # 0-* [ Contract::Term ]
      end

      class Signer < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Signer.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Signer.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Signer.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/contractsignertypecodes'=>['AMENDER', 'AUTHN', 'AUT', 'AFFL', 'AGNT', 'ASSIGNED', 'CIT', 'CLAIMANT', 'COAUTH', 'CONSENTER', 'CONSWIT', 'CONT', 'COPART', 'COVPTY', 'DELEGATEE', 'delegator', 'DEPEND', 'DPOWATT', 'EMGCON', 'EVTWIT', 'EXCEST', 'GRANTEE', 'GRANTOR', 'GUAR', 'GUARD', 'GUADLTM', 'INF', 'INTPRT', 'INSBJ', 'HPOWATT', 'HPROV', 'LEGAUTHN', 'NMDINS', 'NOK', 'NOTARY', 'PAT', 'POWATT', 'PRIMAUTH', 'PRIRECIP', 'RECIP', 'RESPRSN', 'REVIEWER', 'TRANS', 'SOURCE', 'SPOWATT', 'VALID', 'VERF', 'WIT']}, 'type'=>'Coding', 'path'=>'Signer.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-signer-type'}},
          'party' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson'], 'type'=>'Reference', 'path'=>'Signer.party', 'min'=>1, 'max'=>1},
          'signature' => {'type'=>'Signature', 'path'=>'Signer.signature', 'min'=>1, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :type              # 1-1 Coding
        attr_accessor :party             # 1-1 Reference(Organization|Patient|Practitioner|PractitionerRole|RelatedPerson)
        attr_accessor :signature         # 1-* [ Signature ]
      end

      class Friendly < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'content' => ['Attachment', 'Reference']
        }
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Friendly.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Friendly.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Friendly.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'contentAttachment' => {'type'=>'Attachment', 'path'=>'Friendly.content[x]', 'min'=>1, 'max'=>1},
          'contentReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Composition', 'http://hl7.org/fhir/StructureDefinition/DocumentReference', 'http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse'], 'type'=>'Reference', 'path'=>'Friendly.content[x]', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :contentAttachment # 1-1 Attachment
        attr_accessor :contentReference  # 1-1 Reference(Composition|DocumentReference|QuestionnaireResponse)
      end

      class Legal < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'content' => ['Attachment', 'Reference']
        }
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Legal.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Legal.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Legal.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'contentAttachment' => {'type'=>'Attachment', 'path'=>'Legal.content[x]', 'min'=>1, 'max'=>1},
          'contentReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Composition', 'http://hl7.org/fhir/StructureDefinition/DocumentReference', 'http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse'], 'type'=>'Reference', 'path'=>'Legal.content[x]', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :contentAttachment # 1-1 Attachment
        attr_accessor :contentReference  # 1-1 Reference(Composition|DocumentReference|QuestionnaireResponse)
      end

      class Rule < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'content' => ['Attachment', 'Reference']
        }
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Rule.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Rule.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Rule.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'contentAttachment' => {'type'=>'Attachment', 'path'=>'Rule.content[x]', 'min'=>1, 'max'=>1},
          'contentReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/DocumentReference'], 'type'=>'Reference', 'path'=>'Rule.content[x]', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :contentAttachment # 1-1 Attachment
        attr_accessor :contentReference  # 1-1 Reference(DocumentReference)
      end

      attr_accessor :id                       # 0-1 id
      attr_accessor :meta                     # 0-1 Meta
      attr_accessor :implicitRules            # 0-1 uri
      attr_accessor :language                 # 0-1 code
      attr_accessor :text                     # 0-1 Narrative
      attr_accessor :contained                # 0-* [ Resource ]
      attr_accessor :extension                # 0-* [ Extension ]
      attr_accessor :modifierExtension        # 0-* [ Extension ]
      attr_accessor :identifier               # 0-* [ Identifier ]
      attr_accessor :url                      # 0-1 uri
      attr_accessor :version                  # 0-1 string
      attr_accessor :status                   # 0-1 code
      attr_accessor :legalState               # 0-1 CodeableConcept
      attr_accessor :instantiatesCanonical    # 0-1 Reference(Contract)
      attr_accessor :instantiatesUri          # 0-1 uri
      attr_accessor :contentDerivative        # 0-1 CodeableConcept
      attr_accessor :issued                   # 0-1 dateTime
      attr_accessor :applies                  # 0-1 Period
      attr_accessor :expirationType           # 0-1 CodeableConcept
      attr_accessor :subject                  # 0-* [ Reference(Resource) ]
      attr_accessor :authority                # 0-* [ Reference(Organization) ]
      attr_accessor :domain                   # 0-* [ Reference(Location) ]
      attr_accessor :site                     # 0-* [ Reference(Location) ]
      attr_accessor :name                     # 0-1 string
      attr_accessor :title                    # 0-1 string
      attr_accessor :subtitle                 # 0-1 string
      attr_accessor :alias                    # 0-* [ string ]
      attr_accessor :author                   # 0-1 Reference(Patient|Practitioner|PractitionerRole|Organization)
      attr_accessor :scope                    # 0-1 CodeableConcept
      attr_accessor :topicCodeableConcept     # 0-1 CodeableConcept
      attr_accessor :topicReference           # 0-1 Reference(Resource)
      attr_accessor :type                     # 0-1 CodeableConcept
      attr_accessor :subType                  # 0-* [ CodeableConcept ]
      attr_accessor :contentDefinition        # 0-1 Contract::ContentDefinition
      attr_accessor :term                     # 0-* [ Contract::Term ]
      attr_accessor :supportingInfo           # 0-* [ Reference(Resource) ]
      attr_accessor :relevantHistory          # 0-* [ Reference(Provenance) ]
      attr_accessor :signer                   # 0-* [ Contract::Signer ]
      attr_accessor :friendly                 # 0-* [ Contract::Friendly ]
      attr_accessor :legal                    # 0-* [ Contract::Legal ]
      attr_accessor :rule                     # 0-* [ Contract::Rule ]
      attr_accessor :legallyBindingAttachment # 0-1 Attachment
      attr_accessor :legallyBindingReference  # 0-1 Reference(Composition|DocumentReference|QuestionnaireResponse|Contract)

      def resourceType
        'Contract'
      end
    end
  end
end