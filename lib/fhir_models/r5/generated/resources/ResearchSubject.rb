module FHIR
  module R5
    class ResearchSubject < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'ResearchSubject.id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'ResearchSubject.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'ResearchSubject.implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'type'=>'code', 'path'=>'ResearchSubject.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'type'=>'Narrative', 'path'=>'ResearchSubject.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'ResearchSubject.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'ResearchSubject.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'ResearchSubject.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'type'=>'Identifier', 'path'=>'ResearchSubject.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/publication-status'=>['draft', 'active', 'retired', 'unknown']}, 'type'=>'code', 'path'=>'ResearchSubject.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/publication-status'}},
        'progress' => {'type'=>'ResearchSubject::Progress', 'path'=>'ResearchSubject.progress', 'min'=>0, 'max'=>Float::INFINITY},
        'period' => {'type'=>'Period', 'path'=>'ResearchSubject.period', 'min'=>0, 'max'=>1},
        'study' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/ResearchStudy'], 'type'=>'Reference', 'path'=>'ResearchSubject.study', 'min'=>1, 'max'=>1},
        'subject' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Group', 'http://hl7.org/fhir/StructureDefinition/Specimen', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/Medication', 'http://hl7.org/fhir/StructureDefinition/Substance', 'http://hl7.org/fhir/StructureDefinition/BiologicallyDerivedProduct'], 'type'=>'Reference', 'path'=>'ResearchSubject.subject', 'min'=>1, 'max'=>1},
        'assignedComparisonGroup' => {'type'=>'id', 'path'=>'ResearchSubject.assignedComparisonGroup', 'min'=>0, 'max'=>1},
        'actualComparisonGroup' => {'type'=>'id', 'path'=>'ResearchSubject.actualComparisonGroup', 'min'=>0, 'max'=>1},
        'consent' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Consent'], 'type'=>'Reference', 'path'=>'ResearchSubject.consent', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Progress < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Progress.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Progress.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Progress.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/research-subject-state-type'=>['Milestone', 'Enrollment']}, 'type'=>'CodeableConcept', 'path'=>'Progress.type', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/research-subject-state-type'}},
          'subjectState' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/research-subject-state'=>['candidate', 'eligible', 'follow-up', 'ineligible', 'not-registered', 'off-study', 'on-study', 'on-study-intervention', 'on-study-observation', 'pending-on-study', 'potential-candidate', 'screening', 'withdrawn']}, 'type'=>'CodeableConcept', 'path'=>'Progress.subjectState', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/research-subject-state'}},
          'milestone' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/research-subject-milestone'=>['SignedUp', 'Screened', 'Randomized']}, 'type'=>'CodeableConcept', 'path'=>'Progress.milestone', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/research-subject-milestone'}},
          'reason' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/state-change-reason'=>['adverseEvent', 'death', 'notEligible', 'eligibleButNo', 'enrolled', 'exclusion', 'followUpComplete', 'inclusion', 'informedConsentSigned', 'intOrObsComplete', 'nonCompliance', 'preReg', 'refuseConsent', 'screenFailure', 'studyClosed', 'studyTerminated', 'subjectRefusal', 'unwillingOrUnable', 'withdrawnConsent']}, 'type'=>'CodeableConcept', 'path'=>'Progress.reason', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://terminology.hl7.org/ValueSet/state-change-reason'}},
          'startDate' => {'type'=>'dateTime', 'path'=>'Progress.startDate', 'min'=>0, 'max'=>1},
          'endDate' => {'type'=>'dateTime', 'path'=>'Progress.endDate', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :type              # 0-1 CodeableConcept
        attr_accessor :subjectState      # 0-1 CodeableConcept
        attr_accessor :milestone         # 0-1 CodeableConcept
        attr_accessor :reason            # 0-1 CodeableConcept
        attr_accessor :startDate         # 0-1 dateTime
        attr_accessor :endDate           # 0-1 dateTime
      end

      attr_accessor :id                      # 0-1 id
      attr_accessor :meta                    # 0-1 Meta
      attr_accessor :implicitRules           # 0-1 uri
      attr_accessor :language                # 0-1 code
      attr_accessor :text                    # 0-1 Narrative
      attr_accessor :contained               # 0-* [ Resource ]
      attr_accessor :extension               # 0-* [ Extension ]
      attr_accessor :modifierExtension       # 0-* [ Extension ]
      attr_accessor :identifier              # 0-* [ Identifier ]
      attr_accessor :status                  # 1-1 code
      attr_accessor :progress                # 0-* [ ResearchSubject::Progress ]
      attr_accessor :period                  # 0-1 Period
      attr_accessor :study                   # 1-1 Reference(ResearchStudy)
      attr_accessor :subject                 # 1-1 Reference(Patient|Group|Specimen|Device|Medication|Substance|BiologicallyDerivedProduct)
      attr_accessor :assignedComparisonGroup # 0-1 id
      attr_accessor :actualComparisonGroup   # 0-1 id
      attr_accessor :consent                 # 0-* [ Reference(Consent) ]

      def resourceType
        'ResearchSubject'
      end
    end
  end
end