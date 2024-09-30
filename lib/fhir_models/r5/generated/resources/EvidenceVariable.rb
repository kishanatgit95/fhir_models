module FHIR
  module R5
    class EvidenceVariable < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      MULTIPLE_TYPES = {
        'versionAlgorithm' => ['string', 'Coding']
      }
      SEARCH_PARAMS = ['composed-of', 'context', 'context-quantity', 'context-type', 'context-type-quantity', 'context-type-value', 'date', 'depends-on', 'derived-from', 'description', 'identifier', 'name', 'predecessor', 'publisher', 'status', 'successor', 'title', 'topic', 'url', 'version']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'EvidenceVariable.id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'EvidenceVariable.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'EvidenceVariable.implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'type'=>'code', 'path'=>'EvidenceVariable.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'type'=>'Narrative', 'path'=>'EvidenceVariable.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'EvidenceVariable.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'EvidenceVariable.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'EvidenceVariable.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'url' => {'type'=>'uri', 'path'=>'EvidenceVariable.url', 'min'=>0, 'max'=>1},
        'identifier' => {'type'=>'Identifier', 'path'=>'EvidenceVariable.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'version' => {'type'=>'string', 'path'=>'EvidenceVariable.version', 'min'=>0, 'max'=>1},
        'versionAlgorithmString' => {'type'=>'string', 'path'=>'EvidenceVariable.versionAlgorithm[x]', 'min'=>0, 'max'=>1},
        'versionAlgorithmCoding' => {'valid_codes'=>{'http://hl7.org/fhir/version-algorithm'=>['semver', 'integer', 'alpha', 'date', 'natural']}, 'type'=>'Coding', 'path'=>'EvidenceVariable.versionAlgorithm[x]', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/version-algorithm'}},
        'name' => {'type'=>'string', 'path'=>'EvidenceVariable.name', 'min'=>0, 'max'=>1},
        'title' => {'type'=>'string', 'path'=>'EvidenceVariable.title', 'min'=>0, 'max'=>1},
        'shortTitle' => {'type'=>'string', 'path'=>'EvidenceVariable.shortTitle', 'min'=>0, 'max'=>1},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/publication-status'=>['draft', 'active', 'retired', 'unknown']}, 'type'=>'code', 'path'=>'EvidenceVariable.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/publication-status'}},
        'experimental' => {'type'=>'boolean', 'path'=>'EvidenceVariable.experimental', 'min'=>0, 'max'=>1},
        'date' => {'type'=>'dateTime', 'path'=>'EvidenceVariable.date', 'min'=>0, 'max'=>1},
        'publisher' => {'type'=>'string', 'path'=>'EvidenceVariable.publisher', 'min'=>0, 'max'=>1},
        'contact' => {'type'=>'ContactDetail', 'path'=>'EvidenceVariable.contact', 'min'=>0, 'max'=>Float::INFINITY},
        'description' => {'type'=>'markdown', 'path'=>'EvidenceVariable.description', 'min'=>0, 'max'=>1},
        'note' => {'type'=>'Annotation', 'path'=>'EvidenceVariable.note', 'min'=>0, 'max'=>Float::INFINITY},
        'useContext' => {'type'=>'UsageContext', 'path'=>'EvidenceVariable.useContext', 'min'=>0, 'max'=>Float::INFINITY},
        'purpose' => {'type'=>'markdown', 'path'=>'EvidenceVariable.purpose', 'min'=>0, 'max'=>1},
        'copyright' => {'type'=>'markdown', 'path'=>'EvidenceVariable.copyright', 'min'=>0, 'max'=>1},
        'copyrightLabel' => {'type'=>'string', 'path'=>'EvidenceVariable.copyrightLabel', 'min'=>0, 'max'=>1},
        'approvalDate' => {'type'=>'date', 'path'=>'EvidenceVariable.approvalDate', 'min'=>0, 'max'=>1},
        'lastReviewDate' => {'type'=>'date', 'path'=>'EvidenceVariable.lastReviewDate', 'min'=>0, 'max'=>1},
        'effectivePeriod' => {'type'=>'Period', 'path'=>'EvidenceVariable.effectivePeriod', 'min'=>0, 'max'=>1},
        'author' => {'type'=>'ContactDetail', 'path'=>'EvidenceVariable.author', 'min'=>0, 'max'=>Float::INFINITY},
        'editor' => {'type'=>'ContactDetail', 'path'=>'EvidenceVariable.editor', 'min'=>0, 'max'=>Float::INFINITY},
        'reviewer' => {'type'=>'ContactDetail', 'path'=>'EvidenceVariable.reviewer', 'min'=>0, 'max'=>Float::INFINITY},
        'endorser' => {'type'=>'ContactDetail', 'path'=>'EvidenceVariable.endorser', 'min'=>0, 'max'=>Float::INFINITY},
        'relatedArtifact' => {'type'=>'RelatedArtifact', 'path'=>'EvidenceVariable.relatedArtifact', 'min'=>0, 'max'=>Float::INFINITY},
        'actual' => {'type'=>'boolean', 'path'=>'EvidenceVariable.actual', 'min'=>0, 'max'=>1},
        'characteristic' => {'type'=>'EvidenceVariable::Characteristic', 'path'=>'EvidenceVariable.characteristic', 'min'=>0, 'max'=>Float::INFINITY},
        'handling' => {'valid_codes'=>{'http://hl7.org/fhir/variable-handling'=>['continuous', 'dichotomous', 'ordinal', 'polychotomous']}, 'type'=>'code', 'path'=>'EvidenceVariable.handling', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/variable-handling'}},
        'category' => {'type'=>'EvidenceVariable::Category', 'path'=>'EvidenceVariable.category', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Characteristic < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'instances' => ['Quantity', 'Range'],
          'duration' => ['Quantity', 'Range']
        }
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Characteristic.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Characteristic.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Characteristic.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'linkId' => {'type'=>'id', 'path'=>'Characteristic.linkId', 'min'=>0, 'max'=>1},
          'description' => {'type'=>'markdown', 'path'=>'Characteristic.description', 'min'=>0, 'max'=>1},
          'note' => {'type'=>'Annotation', 'path'=>'Characteristic.note', 'min'=>0, 'max'=>Float::INFINITY},
          'exclude' => {'type'=>'boolean', 'path'=>'Characteristic.exclude', 'min'=>0, 'max'=>1},
          'definitionReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/EvidenceVariable', 'http://hl7.org/fhir/StructureDefinition/Group', 'http://hl7.org/fhir/StructureDefinition/Evidence'], 'type'=>'Reference', 'path'=>'Characteristic.definitionReference', 'min'=>0, 'max'=>1},
          'definitionCanonical' => {'type'=>'canonical', 'path'=>'Characteristic.definitionCanonical', 'min'=>0, 'max'=>1},
          'definitionCodeableConcept' => {'type'=>'CodeableConcept', 'path'=>'Characteristic.definitionCodeableConcept', 'min'=>0, 'max'=>1},
          'definitionExpression' => {'type'=>'Expression', 'path'=>'Characteristic.definitionExpression', 'min'=>0, 'max'=>1},
          'definitionId' => {'type'=>'id', 'path'=>'Characteristic.definitionId', 'min'=>0, 'max'=>1},
          'definitionByTypeAndValue' => {'type'=>'EvidenceVariable::Characteristic::DefinitionByTypeAndValue', 'path'=>'Characteristic.definitionByTypeAndValue', 'min'=>0, 'max'=>1},
          'definitionByCombination' => {'type'=>'EvidenceVariable::Characteristic::DefinitionByCombination', 'path'=>'Characteristic.definitionByCombination', 'min'=>0, 'max'=>1},
          'instancesQuantity' => {'type'=>'Quantity', 'path'=>'Characteristic.instances[x]', 'min'=>0, 'max'=>1},
          'instancesRange' => {'type'=>'Range', 'path'=>'Characteristic.instances[x]', 'min'=>0, 'max'=>1},
          'durationQuantity' => {'type'=>'Quantity', 'path'=>'Characteristic.duration[x]', 'min'=>0, 'max'=>1},
          'durationRange' => {'type'=>'Range', 'path'=>'Characteristic.duration[x]', 'min'=>0, 'max'=>1},
          'timeFromEvent' => {'type'=>'EvidenceVariable::Characteristic::TimeFromEvent', 'path'=>'Characteristic.timeFromEvent', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class DefinitionByTypeAndValue < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          MULTIPLE_TYPES = {
            'value' => ['CodeableConcept', 'boolean', 'Quantity', 'Range', 'Reference', 'id']
          }
          METADATA = {
            'id' => {'type'=>'string', 'path'=>'DefinitionByTypeAndValue.id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'DefinitionByTypeAndValue.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'DefinitionByTypeAndValue.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/usage-context-type'=>['gender', 'age', 'focus', 'user', 'workflow', 'task', 'venue', 'species', 'program']}, 'type'=>'CodeableConcept', 'path'=>'DefinitionByTypeAndValue.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://terminology.hl7.org/ValueSet/usage-context-type'}},
            'method' => {'local_name'=>'local_method', 'valid_codes'=>{'http://hl7.org/fhir/definition-method'=>['systematic-assessment', 'non-systematic-assessment', 'mean', 'median', 'mean-of-mean', 'mean-of-median', 'median-of-mean', 'median-of-median']}, 'type'=>'CodeableConcept', 'path'=>'DefinitionByTypeAndValue.method', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/definition-method'}},
            'device' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/DeviceMetric'], 'type'=>'Reference', 'path'=>'DefinitionByTypeAndValue.device', 'min'=>0, 'max'=>1},
            'valueCodeableConcept' => {'type'=>'CodeableConcept', 'path'=>'DefinitionByTypeAndValue.value[x]', 'min'=>1, 'max'=>1},
            'valueBoolean' => {'type'=>'boolean', 'path'=>'DefinitionByTypeAndValue.value[x]', 'min'=>1, 'max'=>1},
            'valueQuantity' => {'type'=>'Quantity', 'path'=>'DefinitionByTypeAndValue.value[x]', 'min'=>1, 'max'=>1},
            'valueRange' => {'type'=>'Range', 'path'=>'DefinitionByTypeAndValue.value[x]', 'min'=>1, 'max'=>1},
            'valueReference' => {'type'=>'Reference', 'path'=>'DefinitionByTypeAndValue.value[x]', 'min'=>1, 'max'=>1},
            'valueId' => {'type'=>'id', 'path'=>'DefinitionByTypeAndValue.value[x]', 'min'=>1, 'max'=>1},
            'offset' => {'valid_codes'=>{'http://hl7.org/fhir/characteristic-offset'=>['UNL', 'LNL']}, 'type'=>'CodeableConcept', 'path'=>'DefinitionByTypeAndValue.offset', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/characteristic-offset'}}
          }

          attr_accessor :id                   # 0-1 string
          attr_accessor :extension            # 0-* [ Extension ]
          attr_accessor :modifierExtension    # 0-* [ Extension ]
          attr_accessor :type                 # 1-1 CodeableConcept
          attr_accessor :local_method         # 0-* [ CodeableConcept ]
          attr_accessor :device               # 0-1 Reference(Device|DeviceMetric)
          attr_accessor :valueCodeableConcept # 1-1 CodeableConcept
          attr_accessor :valueBoolean         # 1-1 boolean
          attr_accessor :valueQuantity        # 1-1 Quantity
          attr_accessor :valueRange           # 1-1 Range
          attr_accessor :valueReference       # 1-1 Reference()
          attr_accessor :valueId              # 1-1 id
          attr_accessor :offset               # 0-1 CodeableConcept
        end

        class DefinitionByCombination < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'type'=>'string', 'path'=>'DefinitionByCombination.id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'DefinitionByCombination.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'DefinitionByCombination.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'code' => {'valid_codes'=>{'http://hl7.org/fhir/characteristic-combination'=>['all-of', 'any-of', 'at-least', 'at-most', 'statistical', 'net-effect', 'dataset']}, 'type'=>'code', 'path'=>'DefinitionByCombination.code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/characteristic-combination'}},
            'threshold' => {'type'=>'positiveInt', 'path'=>'DefinitionByCombination.threshold', 'min'=>0, 'max'=>1},
            'characteristic' => {'type'=>'EvidenceVariable::Characteristic', 'path'=>'DefinitionByCombination.characteristic', 'min'=>1, 'max'=>Float::INFINITY}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :code              # 1-1 code
          attr_accessor :threshold         # 0-1 positiveInt
          attr_accessor :characteristic    # 1-* [ EvidenceVariable::Characteristic ]
        end

        class TimeFromEvent < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          MULTIPLE_TYPES = {
            'event' => ['CodeableConcept', 'Reference', 'dateTime', 'id']
          }
          METADATA = {
            'id' => {'type'=>'string', 'path'=>'TimeFromEvent.id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'TimeFromEvent.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'TimeFromEvent.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'description' => {'type'=>'markdown', 'path'=>'TimeFromEvent.description', 'min'=>0, 'max'=>1},
            'note' => {'type'=>'Annotation', 'path'=>'TimeFromEvent.note', 'min'=>0, 'max'=>Float::INFINITY},
            'eventCodeableConcept' => {'valid_codes'=>{'http://hl7.org/fhir/evidence-variable-event'=>['study-start', 'treatment-start', 'condition-detection', 'condition-treatment', 'hospital-admission', 'hospital-discharge', 'operative-procedure']}, 'type'=>'CodeableConcept', 'path'=>'TimeFromEvent.event[x]', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/evidence-variable-event'}},
            'eventReference' => {'type'=>'Reference', 'path'=>'TimeFromEvent.event[x]', 'min'=>0, 'max'=>1},
            'eventDateTime' => {'type'=>'dateTime', 'path'=>'TimeFromEvent.event[x]', 'min'=>0, 'max'=>1},
            'eventId' => {'type'=>'id', 'path'=>'TimeFromEvent.event[x]', 'min'=>0, 'max'=>1},
            'quantity' => {'type'=>'Quantity', 'path'=>'TimeFromEvent.quantity', 'min'=>0, 'max'=>1},
            'range' => {'type'=>'Range', 'path'=>'TimeFromEvent.range', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                   # 0-1 string
          attr_accessor :extension            # 0-* [ Extension ]
          attr_accessor :modifierExtension    # 0-* [ Extension ]
          attr_accessor :description          # 0-1 markdown
          attr_accessor :note                 # 0-* [ Annotation ]
          attr_accessor :eventCodeableConcept # 0-1 CodeableConcept
          attr_accessor :eventReference       # 0-1 Reference()
          attr_accessor :eventDateTime        # 0-1 dateTime
          attr_accessor :eventId              # 0-1 id
          attr_accessor :quantity             # 0-1 Quantity
          attr_accessor :range                # 0-1 Range
        end

        attr_accessor :id                        # 0-1 string
        attr_accessor :extension                 # 0-* [ Extension ]
        attr_accessor :modifierExtension         # 0-* [ Extension ]
        attr_accessor :linkId                    # 0-1 id
        attr_accessor :description               # 0-1 markdown
        attr_accessor :note                      # 0-* [ Annotation ]
        attr_accessor :exclude                   # 0-1 boolean
        attr_accessor :definitionReference       # 0-1 Reference(EvidenceVariable|Group|Evidence)
        attr_accessor :definitionCanonical       # 0-1 canonical
        attr_accessor :definitionCodeableConcept # 0-1 CodeableConcept
        attr_accessor :definitionExpression      # 0-1 Expression
        attr_accessor :definitionId              # 0-1 id
        attr_accessor :definitionByTypeAndValue  # 0-1 EvidenceVariable::Characteristic::DefinitionByTypeAndValue
        attr_accessor :definitionByCombination   # 0-1 EvidenceVariable::Characteristic::DefinitionByCombination
        attr_accessor :instancesQuantity         # 0-1 Quantity
        attr_accessor :instancesRange            # 0-1 Range
        attr_accessor :durationQuantity          # 0-1 Quantity
        attr_accessor :durationRange             # 0-1 Range
        attr_accessor :timeFromEvent             # 0-* [ EvidenceVariable::Characteristic::TimeFromEvent ]
      end

      class Category < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'value' => ['CodeableConcept', 'Quantity', 'Range']
        }
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Category.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Category.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Category.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'name' => {'type'=>'string', 'path'=>'Category.name', 'min'=>0, 'max'=>1},
          'valueCodeableConcept' => {'type'=>'CodeableConcept', 'path'=>'Category.value[x]', 'min'=>0, 'max'=>1},
          'valueQuantity' => {'type'=>'Quantity', 'path'=>'Category.value[x]', 'min'=>0, 'max'=>1},
          'valueRange' => {'type'=>'Range', 'path'=>'Category.value[x]', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                   # 0-1 string
        attr_accessor :extension            # 0-* [ Extension ]
        attr_accessor :modifierExtension    # 0-* [ Extension ]
        attr_accessor :name                 # 0-1 string
        attr_accessor :valueCodeableConcept # 0-1 CodeableConcept
        attr_accessor :valueQuantity        # 0-1 Quantity
        attr_accessor :valueRange           # 0-1 Range
      end

      attr_accessor :id                     # 0-1 id
      attr_accessor :meta                   # 0-1 Meta
      attr_accessor :implicitRules          # 0-1 uri
      attr_accessor :language               # 0-1 code
      attr_accessor :text                   # 0-1 Narrative
      attr_accessor :contained              # 0-* [ Resource ]
      attr_accessor :extension              # 0-* [ Extension ]
      attr_accessor :modifierExtension      # 0-* [ Extension ]
      attr_accessor :url                    # 0-1 uri
      attr_accessor :identifier             # 0-* [ Identifier ]
      attr_accessor :version                # 0-1 string
      attr_accessor :versionAlgorithmString # 0-1 string
      attr_accessor :versionAlgorithmCoding # 0-1 Coding
      attr_accessor :name                   # 0-1 string
      attr_accessor :title                  # 0-1 string
      attr_accessor :shortTitle             # 0-1 string
      attr_accessor :status                 # 1-1 code
      attr_accessor :experimental           # 0-1 boolean
      attr_accessor :date                   # 0-1 dateTime
      attr_accessor :publisher              # 0-1 string
      attr_accessor :contact                # 0-* [ ContactDetail ]
      attr_accessor :description            # 0-1 markdown
      attr_accessor :note                   # 0-* [ Annotation ]
      attr_accessor :useContext             # 0-* [ UsageContext ]
      attr_accessor :purpose                # 0-1 markdown
      attr_accessor :copyright              # 0-1 markdown
      attr_accessor :copyrightLabel         # 0-1 string
      attr_accessor :approvalDate           # 0-1 date
      attr_accessor :lastReviewDate         # 0-1 date
      attr_accessor :effectivePeriod        # 0-1 Period
      attr_accessor :author                 # 0-* [ ContactDetail ]
      attr_accessor :editor                 # 0-* [ ContactDetail ]
      attr_accessor :reviewer               # 0-* [ ContactDetail ]
      attr_accessor :endorser               # 0-* [ ContactDetail ]
      attr_accessor :relatedArtifact        # 0-* [ RelatedArtifact ]
      attr_accessor :actual                 # 0-1 boolean
      attr_accessor :characteristic         # 0-* [ EvidenceVariable::Characteristic ]
      attr_accessor :handling               # 0-1 code
      attr_accessor :category               # 0-* [ EvidenceVariable::Category ]

      def resourceType
        'EvidenceVariable'
      end
    end
  end
end