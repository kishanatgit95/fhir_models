module FHIR
  module R5
    class DeviceDefinition < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'DeviceDefinition.id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'DeviceDefinition.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'DeviceDefinition.implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'type'=>'code', 'path'=>'DeviceDefinition.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'type'=>'Narrative', 'path'=>'DeviceDefinition.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'DeviceDefinition.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'DeviceDefinition.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'DeviceDefinition.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'description' => {'type'=>'markdown', 'path'=>'DeviceDefinition.description', 'min'=>0, 'max'=>1},
        'identifier' => {'type'=>'Identifier', 'path'=>'DeviceDefinition.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'udiDeviceIdentifier' => {'type'=>'DeviceDefinition::UdiDeviceIdentifier', 'path'=>'DeviceDefinition.udiDeviceIdentifier', 'min'=>0, 'max'=>Float::INFINITY},
        'regulatoryIdentifier' => {'type'=>'DeviceDefinition::RegulatoryIdentifier', 'path'=>'DeviceDefinition.regulatoryIdentifier', 'min'=>0, 'max'=>Float::INFINITY},
        'partNumber' => {'type'=>'string', 'path'=>'DeviceDefinition.partNumber', 'min'=>0, 'max'=>1},
        'manufacturer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'DeviceDefinition.manufacturer', 'min'=>0, 'max'=>1},
        'deviceName' => {'type'=>'DeviceDefinition::DeviceName', 'path'=>'DeviceDefinition.deviceName', 'min'=>0, 'max'=>Float::INFINITY},
        'modelNumber' => {'type'=>'string', 'path'=>'DeviceDefinition.modelNumber', 'min'=>0, 'max'=>1},
        'classification' => {'type'=>'DeviceDefinition::Classification', 'path'=>'DeviceDefinition.classification', 'min'=>0, 'max'=>Float::INFINITY},
        'conformsTo' => {'type'=>'DeviceDefinition::ConformsTo', 'path'=>'DeviceDefinition.conformsTo', 'min'=>0, 'max'=>Float::INFINITY},
        'hasPart' => {'type'=>'DeviceDefinition::HasPart', 'path'=>'DeviceDefinition.hasPart', 'min'=>0, 'max'=>Float::INFINITY},
        'packaging' => {'type'=>'DeviceDefinition::Packaging', 'path'=>'DeviceDefinition.packaging', 'min'=>0, 'max'=>Float::INFINITY},
        'version' => {'type'=>'DeviceDefinition::Version', 'path'=>'DeviceDefinition.version', 'min'=>0, 'max'=>Float::INFINITY},
        'safety' => {'valid_codes'=>{'urn:oid:2.16.840.1.113883.3.26.1.1'=>['C106046', 'C106045', 'C106047', 'C113844', 'C101673', 'C106038']}, 'type'=>'CodeableConcept', 'path'=>'DeviceDefinition.safety', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/device-safety'}},
        'shelfLifeStorage' => {'type'=>'ProductShelfLife', 'path'=>'DeviceDefinition.shelfLifeStorage', 'min'=>0, 'max'=>Float::INFINITY},
        'languageCode' => {'type'=>'CodeableConcept', 'path'=>'DeviceDefinition.languageCode', 'min'=>0, 'max'=>Float::INFINITY},
        'property' => {'type'=>'DeviceDefinition::Property', 'path'=>'DeviceDefinition.property', 'min'=>0, 'max'=>Float::INFINITY},
        'owner' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'DeviceDefinition.owner', 'min'=>0, 'max'=>1},
        'contact' => {'type'=>'ContactPoint', 'path'=>'DeviceDefinition.contact', 'min'=>0, 'max'=>Float::INFINITY},
        'link' => {'type'=>'DeviceDefinition::Link', 'path'=>'DeviceDefinition.link', 'min'=>0, 'max'=>Float::INFINITY},
        'note' => {'type'=>'Annotation', 'path'=>'DeviceDefinition.note', 'min'=>0, 'max'=>Float::INFINITY},
        'material' => {'type'=>'DeviceDefinition::Material', 'path'=>'DeviceDefinition.material', 'min'=>0, 'max'=>Float::INFINITY},
        'productionIdentifierInUDI' => {'valid_codes'=>{'http://hl7.org/fhir/device-productidentifierinudi'=>['lot-number', 'manufactured-date', 'serial-number', 'expiration-date', 'biological-source', 'software-version']}, 'type'=>'code', 'path'=>'DeviceDefinition.productionIdentifierInUDI', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/device-productidentifierinudi'}},
        'guideline' => {'type'=>'DeviceDefinition::Guideline', 'path'=>'DeviceDefinition.guideline', 'min'=>0, 'max'=>1},
        'correctiveAction' => {'type'=>'DeviceDefinition::CorrectiveAction', 'path'=>'DeviceDefinition.correctiveAction', 'min'=>0, 'max'=>1},
        'chargeItem' => {'type'=>'DeviceDefinition::ChargeItem', 'path'=>'DeviceDefinition.chargeItem', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class UdiDeviceIdentifier < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'UdiDeviceIdentifier.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'UdiDeviceIdentifier.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'UdiDeviceIdentifier.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'deviceIdentifier' => {'type'=>'string', 'path'=>'UdiDeviceIdentifier.deviceIdentifier', 'min'=>1, 'max'=>1},
          'issuer' => {'type'=>'uri', 'path'=>'UdiDeviceIdentifier.issuer', 'min'=>1, 'max'=>1},
          'jurisdiction' => {'type'=>'uri', 'path'=>'UdiDeviceIdentifier.jurisdiction', 'min'=>1, 'max'=>1},
          'marketDistribution' => {'type'=>'DeviceDefinition::UdiDeviceIdentifier::MarketDistribution', 'path'=>'UdiDeviceIdentifier.marketDistribution', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class MarketDistribution < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'type'=>'string', 'path'=>'MarketDistribution.id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'MarketDistribution.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'MarketDistribution.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'marketPeriod' => {'type'=>'Period', 'path'=>'MarketDistribution.marketPeriod', 'min'=>1, 'max'=>1},
            'subJurisdiction' => {'type'=>'uri', 'path'=>'MarketDistribution.subJurisdiction', 'min'=>1, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :marketPeriod      # 1-1 Period
          attr_accessor :subJurisdiction   # 1-1 uri
        end

        attr_accessor :id                 # 0-1 string
        attr_accessor :extension          # 0-* [ Extension ]
        attr_accessor :modifierExtension  # 0-* [ Extension ]
        attr_accessor :deviceIdentifier   # 1-1 string
        attr_accessor :issuer             # 1-1 uri
        attr_accessor :jurisdiction       # 1-1 uri
        attr_accessor :marketDistribution # 0-* [ DeviceDefinition::UdiDeviceIdentifier::MarketDistribution ]
      end

      class RegulatoryIdentifier < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'RegulatoryIdentifier.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'RegulatoryIdentifier.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'RegulatoryIdentifier.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'valid_codes'=>{'http://hl7.org/fhir/devicedefinition-regulatory-identifier-type'=>['basic', 'master', 'license']}, 'type'=>'code', 'path'=>'RegulatoryIdentifier.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/devicedefinition-regulatory-identifier-type'}},
          'deviceIdentifier' => {'type'=>'string', 'path'=>'RegulatoryIdentifier.deviceIdentifier', 'min'=>1, 'max'=>1},
          'issuer' => {'type'=>'uri', 'path'=>'RegulatoryIdentifier.issuer', 'min'=>1, 'max'=>1},
          'jurisdiction' => {'type'=>'uri', 'path'=>'RegulatoryIdentifier.jurisdiction', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :type              # 1-1 code
        attr_accessor :deviceIdentifier  # 1-1 string
        attr_accessor :issuer            # 1-1 uri
        attr_accessor :jurisdiction      # 1-1 uri
      end

      class DeviceName < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'DeviceName.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'DeviceName.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'DeviceName.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'name' => {'type'=>'string', 'path'=>'DeviceName.name', 'min'=>1, 'max'=>1},
          'type' => {'valid_codes'=>{'http://hl7.org/fhir/device-nametype'=>['registered-name', 'user-friendly-name', 'patient-reported-name']}, 'type'=>'code', 'path'=>'DeviceName.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/device-nametype'}}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :name              # 1-1 string
        attr_accessor :type              # 1-1 code
      end

      class Classification < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Classification.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Classification.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Classification.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'valid_codes'=>{'urn:iso:std:iso:11073:10101'=>['528391', '528404', '528425', '528402', '528409', '528390', '528457', '528401', '528455', '528403', '528405', '528388', '528397', '528408', '528426', '528392', '528399'], 'urn:oid:2.16.840.1.113883.6.276'=>['38017', '38663', '42347', '46352', '47264', '62163', '62260', '62423', '62414', '64587', '64992']}, 'type'=>'CodeableConcept', 'path'=>'Classification.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/device-type'}},
          'justification' => {'type'=>'RelatedArtifact', 'path'=>'Classification.justification', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :type              # 1-1 CodeableConcept
        attr_accessor :justification     # 0-* [ RelatedArtifact ]
      end

      class ConformsTo < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'ConformsTo.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'ConformsTo.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'ConformsTo.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'category' => {'valid_codes'=>{'http://hl7.org/fhir/device-specification-category'=>['communication', 'performance', 'measurement', 'risk-class', 'electrical', 'material', 'exchange']}, 'type'=>'CodeableConcept', 'path'=>'ConformsTo.category', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/device-specification-category'}},
          'specification' => {'valid_codes'=>{'urn:iso:std:iso:11073:10101'=>['528391', '528404', '528425', '528402', '528409', '528390', '528457', '528401', '528455', '528403', '528405', '528388', '528397', '528408', '528426', '528392', '528399']}, 'type'=>'CodeableConcept', 'path'=>'ConformsTo.specification', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/device-specification-type'}},
          'version' => {'type'=>'string', 'path'=>'ConformsTo.version', 'min'=>0, 'max'=>Float::INFINITY},
          'source' => {'type'=>'RelatedArtifact', 'path'=>'ConformsTo.source', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :category          # 0-1 CodeableConcept
        attr_accessor :specification     # 1-1 CodeableConcept
        attr_accessor :version           # 0-* [ string ]
        attr_accessor :source            # 0-* [ RelatedArtifact ]
      end

      class HasPart < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'HasPart.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'HasPart.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'HasPart.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'reference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/DeviceDefinition'], 'type'=>'Reference', 'path'=>'HasPart.reference', 'min'=>1, 'max'=>1},
          'count' => {'type'=>'integer', 'path'=>'HasPart.count', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :reference         # 1-1 Reference(DeviceDefinition)
        attr_accessor :count             # 0-1 integer
      end

      class Packaging < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Packaging.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Packaging.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Packaging.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'identifier' => {'type'=>'Identifier', 'path'=>'Packaging.identifier', 'min'=>0, 'max'=>1},
          'type' => {'type'=>'CodeableConcept', 'path'=>'Packaging.type', 'min'=>0, 'max'=>1},
          'count' => {'type'=>'integer', 'path'=>'Packaging.count', 'min'=>0, 'max'=>1},
          'distributor' => {'type'=>'DeviceDefinition::Packaging::Distributor', 'path'=>'Packaging.distributor', 'min'=>0, 'max'=>Float::INFINITY},
          'udiDeviceIdentifier' => {'type'=>'DeviceDefinition::UdiDeviceIdentifier', 'path'=>'Packaging.udiDeviceIdentifier', 'min'=>0, 'max'=>Float::INFINITY},
          'packaging' => {'type'=>'DeviceDefinition::Packaging', 'path'=>'Packaging.packaging', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Distributor < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'type'=>'string', 'path'=>'Distributor.id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Distributor.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Distributor.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'name' => {'type'=>'string', 'path'=>'Distributor.name', 'min'=>0, 'max'=>1},
            'organizationReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'Distributor.organizationReference', 'min'=>0, 'max'=>Float::INFINITY}
          }

          attr_accessor :id                    # 0-1 string
          attr_accessor :extension             # 0-* [ Extension ]
          attr_accessor :modifierExtension     # 0-* [ Extension ]
          attr_accessor :name                  # 0-1 string
          attr_accessor :organizationReference # 0-* [ Reference(Organization) ]
        end

        attr_accessor :id                  # 0-1 string
        attr_accessor :extension           # 0-* [ Extension ]
        attr_accessor :modifierExtension   # 0-* [ Extension ]
        attr_accessor :identifier          # 0-1 Identifier
        attr_accessor :type                # 0-1 CodeableConcept
        attr_accessor :count               # 0-1 integer
        attr_accessor :distributor         # 0-* [ DeviceDefinition::Packaging::Distributor ]
        attr_accessor :udiDeviceIdentifier # 0-* [ DeviceDefinition::UdiDeviceIdentifier ]
        attr_accessor :packaging           # 0-* [ DeviceDefinition::Packaging ]
      end

      class Version < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Version.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Version.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Version.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'type'=>'CodeableConcept', 'path'=>'Version.type', 'min'=>0, 'max'=>1},
          'component' => {'type'=>'Identifier', 'path'=>'Version.component', 'min'=>0, 'max'=>1},
          'value' => {'type'=>'string', 'path'=>'Version.value', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :type              # 0-1 CodeableConcept
        attr_accessor :component         # 0-1 Identifier
        attr_accessor :value             # 1-1 string
      end

      class Property < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'value' => ['Quantity', 'CodeableConcept', 'string', 'boolean', 'integer', 'Range', 'Attachment']
        }
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Property.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Property.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Property.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'valid_codes'=>{'urn:iso:std:iso:11073:10101'=>['528391', '528404', '528425', '528402', '528409', '528390', '528457', '528401', '528455', '528403', '528405', '528388', '528397', '528408', '528426', '528392', '528399'], 'urn:oid:2.16.840.1.113883.6.276'=>['38017', '38663', '42347', '46352', '47264', '62163', '62260', '62423', '62414', '64587', '64992']}, 'type'=>'CodeableConcept', 'path'=>'Property.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/device-property-type'}},
          'valueQuantity' => {'type'=>'Quantity', 'path'=>'Property.value[x]', 'min'=>1, 'max'=>1},
          'valueCodeableConcept' => {'type'=>'CodeableConcept', 'path'=>'Property.value[x]', 'min'=>1, 'max'=>1},
          'valueString' => {'type'=>'string', 'path'=>'Property.value[x]', 'min'=>1, 'max'=>1},
          'valueBoolean' => {'type'=>'boolean', 'path'=>'Property.value[x]', 'min'=>1, 'max'=>1},
          'valueInteger' => {'type'=>'integer', 'path'=>'Property.value[x]', 'min'=>1, 'max'=>1},
          'valueRange' => {'type'=>'Range', 'path'=>'Property.value[x]', 'min'=>1, 'max'=>1},
          'valueAttachment' => {'type'=>'Attachment', 'path'=>'Property.value[x]', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                   # 0-1 string
        attr_accessor :extension            # 0-* [ Extension ]
        attr_accessor :modifierExtension    # 0-* [ Extension ]
        attr_accessor :type                 # 1-1 CodeableConcept
        attr_accessor :valueQuantity        # 1-1 Quantity
        attr_accessor :valueCodeableConcept # 1-1 CodeableConcept
        attr_accessor :valueString          # 1-1 string
        attr_accessor :valueBoolean         # 1-1 boolean
        attr_accessor :valueInteger         # 1-1 integer
        attr_accessor :valueRange           # 1-1 Range
        attr_accessor :valueAttachment      # 1-1 Attachment
      end

      class Link < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Link.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Link.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Link.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'relation' => {'valid_codes'=>{'http://hl7.org/fhir/devicedefinition-relationtype'=>['gateway', 'replaces', 'previous']}, 'type'=>'Coding', 'path'=>'Link.relation', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/devicedefinition-relationtype'}},
          'relatedDevice' => {'type'=>'CodeableReference', 'path'=>'Link.relatedDevice', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :relation          # 1-1 Coding
        attr_accessor :relatedDevice     # 1-1 CodeableReference
      end

      class Material < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Material.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Material.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Material.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'substance' => {'type'=>'CodeableConcept', 'path'=>'Material.substance', 'min'=>1, 'max'=>1},
          'alternate' => {'type'=>'boolean', 'path'=>'Material.alternate', 'min'=>0, 'max'=>1},
          'allergenicIndicator' => {'type'=>'boolean', 'path'=>'Material.allergenicIndicator', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                  # 0-1 string
        attr_accessor :extension           # 0-* [ Extension ]
        attr_accessor :modifierExtension   # 0-* [ Extension ]
        attr_accessor :substance           # 1-1 CodeableConcept
        attr_accessor :alternate           # 0-1 boolean
        attr_accessor :allergenicIndicator # 0-1 boolean
      end

      class Guideline < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Guideline.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Guideline.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Guideline.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'useContext' => {'type'=>'UsageContext', 'path'=>'Guideline.useContext', 'min'=>0, 'max'=>Float::INFINITY},
          'usageInstruction' => {'type'=>'markdown', 'path'=>'Guideline.usageInstruction', 'min'=>0, 'max'=>1},
          'relatedArtifact' => {'type'=>'RelatedArtifact', 'path'=>'Guideline.relatedArtifact', 'min'=>0, 'max'=>Float::INFINITY},
          'indication' => {'type'=>'CodeableConcept', 'path'=>'Guideline.indication', 'min'=>0, 'max'=>Float::INFINITY},
          'contraindication' => {'type'=>'CodeableConcept', 'path'=>'Guideline.contraindication', 'min'=>0, 'max'=>Float::INFINITY},
          'warning' => {'type'=>'CodeableConcept', 'path'=>'Guideline.warning', 'min'=>0, 'max'=>Float::INFINITY},
          'intendedUse' => {'type'=>'string', 'path'=>'Guideline.intendedUse', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :useContext        # 0-* [ UsageContext ]
        attr_accessor :usageInstruction  # 0-1 markdown
        attr_accessor :relatedArtifact   # 0-* [ RelatedArtifact ]
        attr_accessor :indication        # 0-* [ CodeableConcept ]
        attr_accessor :contraindication  # 0-* [ CodeableConcept ]
        attr_accessor :warning           # 0-* [ CodeableConcept ]
        attr_accessor :intendedUse       # 0-1 string
      end

      class CorrectiveAction < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'CorrectiveAction.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'CorrectiveAction.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'CorrectiveAction.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'recall' => {'type'=>'boolean', 'path'=>'CorrectiveAction.recall', 'min'=>1, 'max'=>1},
          'scope' => {'valid_codes'=>{'http://hl7.org/fhir/device-correctiveactionscope'=>['model', 'lot-numbers', 'serial-numbers']}, 'type'=>'code', 'path'=>'CorrectiveAction.scope', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/device-correctiveactionscope'}},
          'period' => {'type'=>'Period', 'path'=>'CorrectiveAction.period', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :recall            # 1-1 boolean
        attr_accessor :scope             # 0-1 code
        attr_accessor :period            # 1-1 Period
      end

      class ChargeItem < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'ChargeItem.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'ChargeItem.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'ChargeItem.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'chargeItemCode' => {'type'=>'CodeableReference', 'path'=>'ChargeItem.chargeItemCode', 'min'=>1, 'max'=>1},
          'count' => {'type'=>'Quantity', 'path'=>'ChargeItem.count', 'min'=>1, 'max'=>1},
          'effectivePeriod' => {'type'=>'Period', 'path'=>'ChargeItem.effectivePeriod', 'min'=>0, 'max'=>1},
          'useContext' => {'type'=>'UsageContext', 'path'=>'ChargeItem.useContext', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :chargeItemCode    # 1-1 CodeableReference
        attr_accessor :count             # 1-1 Quantity
        attr_accessor :effectivePeriod   # 0-1 Period
        attr_accessor :useContext        # 0-* [ UsageContext ]
      end

      attr_accessor :id                        # 0-1 id
      attr_accessor :meta                      # 0-1 Meta
      attr_accessor :implicitRules             # 0-1 uri
      attr_accessor :language                  # 0-1 code
      attr_accessor :text                      # 0-1 Narrative
      attr_accessor :contained                 # 0-* [ Resource ]
      attr_accessor :extension                 # 0-* [ Extension ]
      attr_accessor :modifierExtension         # 0-* [ Extension ]
      attr_accessor :description               # 0-1 markdown
      attr_accessor :identifier                # 0-* [ Identifier ]
      attr_accessor :udiDeviceIdentifier       # 0-* [ DeviceDefinition::UdiDeviceIdentifier ]
      attr_accessor :regulatoryIdentifier      # 0-* [ DeviceDefinition::RegulatoryIdentifier ]
      attr_accessor :partNumber                # 0-1 string
      attr_accessor :manufacturer              # 0-1 Reference(Organization)
      attr_accessor :deviceName                # 0-* [ DeviceDefinition::DeviceName ]
      attr_accessor :modelNumber               # 0-1 string
      attr_accessor :classification            # 0-* [ DeviceDefinition::Classification ]
      attr_accessor :conformsTo                # 0-* [ DeviceDefinition::ConformsTo ]
      attr_accessor :hasPart                   # 0-* [ DeviceDefinition::HasPart ]
      attr_accessor :packaging                 # 0-* [ DeviceDefinition::Packaging ]
      attr_accessor :version                   # 0-* [ DeviceDefinition::Version ]
      attr_accessor :safety                    # 0-* [ CodeableConcept ]
      attr_accessor :shelfLifeStorage          # 0-* [ ProductShelfLife ]
      attr_accessor :languageCode              # 0-* [ CodeableConcept ]
      attr_accessor :property                  # 0-* [ DeviceDefinition::Property ]
      attr_accessor :owner                     # 0-1 Reference(Organization)
      attr_accessor :contact                   # 0-* [ ContactPoint ]
      attr_accessor :link                      # 0-* [ DeviceDefinition::Link ]
      attr_accessor :note                      # 0-* [ Annotation ]
      attr_accessor :material                  # 0-* [ DeviceDefinition::Material ]
      attr_accessor :productionIdentifierInUDI # 0-* [ code ]
      attr_accessor :guideline                 # 0-1 DeviceDefinition::Guideline
      attr_accessor :correctiveAction          # 0-1 DeviceDefinition::CorrectiveAction
      attr_accessor :chargeItem                # 0-* [ DeviceDefinition::ChargeItem ]

      def resourceType
        'DeviceDefinition'
      end
    end
  end
end