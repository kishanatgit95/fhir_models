module FHIR
  module R5

    PRIMITIVES = {
      'time' => {'type'=>'time', 'regex'=>'([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\\.[0-9]{1,9})?'},
      'unsignedInt' => {'type'=>'string', 'regex'=>'[0]|([1-9][0-9]*)'},
      'xhtml' => {'type'=>'string'},
      'boolean' => {'type'=>'boolean', 'regex'=>'true|false'},
      'integer64' => {'type'=>'integer', 'regex'=>'[0]|[-+]?[1-9][0-9]*'},
      'uri' => {'type'=>'string', 'regex'=>'\\S*'},
      'code' => {'type'=>'string', 'regex'=>'[^\\s]+( [^\\s]+)*'},
      'url' => {'type'=>'string', 'regex'=>'\\S*'},
      'string' => {'type'=>'string', 'regex'=>'^[\\s\\S]+$'},
      'base64Binary' => {'type'=>'string', 'regex'=>'(?:[A-Za-z0-9+/]{4})*(?:[A-Za-z0-9+/]{2}==|[A-Za-z0-9+/]{3}=)?'},
      'oid' => {'type'=>'string', 'regex'=>'urn:oid:[0-2](\\.(0|[1-9][0-9]*))+'},
      'instant' => {'type'=>'datetime', 'regex'=>'([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\\.[0-9]{1,9})?(Z|(\\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))'},
      'date' => {'type'=>'date', 'regex'=>'([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?'},
      'uuid' => {'type'=>'string', 'regex'=>'urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}'},
      'integer' => {'type'=>'integer', 'regex'=>'[0]|[-+]?[1-9][0-9]*'},
      'markdown' => {'type'=>'string', 'regex'=>'^[\\s\\S]+$'},
      'decimal' => {'type'=>'decimal', 'regex'=>'-?(0|[1-9][0-9]{0,17})(\\.[0-9]{1,17})?([eE][+-]?[0-9]{1,9}})?'},
      'dateTime' => {'type'=>'datetime', 'regex'=>'([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\\.[0-9]{1,9})?)?)?(Z|(\\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?'},
      'canonical' => {'type'=>'string', 'regex'=>'\\S*'},
      'id' => {'type'=>'string', 'regex'=>'[A-Za-z0-9\\-\\.]{1,64}'},
      'positiveInt' => {'type'=>'string', 'regex'=>'[1-9][0-9]*'}
    }
    TYPES = ['MarketingStatus', 'Timing', 'MonetaryComponent', 'Attachment', 'Availability', 'Dosage', 'UsageContext', 'DataType', 'Period', 'ExtendedContactDetail', 'CodeableReference', 'Address', 'ProductShelfLife', 'ContactPoint', 'Element', 'VirtualServiceDetail', 'BackboneElement', 'CodeableConcept', 'Base', 'RatioRange', 'Meta', 'DataRequirement', 'Signature', 'Distance', 'Age', 'ElementDefinition', 'TriggerDefinition', 'Range', 'PrimitiveType', 'Ratio', 'Identifier', 'Money', 'RelatedArtifact', 'Contributor', 'Quantity', 'Duration', 'HumanName', 'ParameterDefinition', 'Count', 'Annotation', 'Reference', 'SampledData', 'Extension', 'BackboneType', 'ContactDetail', 'Expression', 'Coding', 'Narrative']
    RESOURCES = ['Appointment', 'Linkage', 'Task', 'Observation', 'EventDefinition', 'CoverageEligibilityRequest', 'ArtifactAssessment', 'EpisodeOfCare', 'Binary', 'Specimen', 'SubstanceReferenceInformation', 'Composition', 'Measure', 'Ingredient', 'Goal', 'RiskAssessment', 'Basic', 'FormularyItem', 'DeviceAssociation', 'ImagingStudy', 'SupplyDelivery', 'Claim', 'Library', 'VerificationResult', 'Substance', 'ValueSet', 'CapabilityStatement', 'OrganizationAffiliation', 'ObservationDefinition', 'InventoryReport', 'Communication', 'DeviceDefinition', 'PlanDefinition', 'AdverseEvent', 'CodeSystem', 'Schedule', 'PractitionerRole', 'AuditEvent', 'InsurancePlan', 'ResearchSubject', 'EnrollmentResponse', 'ServiceRequest', 'MeasureReport', 'EvidenceVariable', 'Resource', 'Provenance', 'List', 'Device', 'ImagingSelection', 'SubstanceNucleicAcid', 'MedicationKnowledge', 'Transport', 'RequestOrchestration', 'MolecularSequence', 'MedicinalProductDefinition', 'OperationOutcome', 'ImplementationGuide', 'RelatedPerson', 'ClaimResponse', 'Coverage', 'DeviceUsage', 'HealthcareService', 'SpecimenDefinition', 'Evidence', 'TerminologyCapabilities', 'DomainResource', 'PaymentNotice', 'CarePlan', 'Practitioner', 'TestScript', 'DeviceMetric', 'DocumentReference', 'ImmunizationEvaluation', 'MedicationStatement', 'RegulatedAuthorization', 'EnrollmentRequest', 'ChargeItem', 'BiologicallyDerivedProduct', 'Medication', 'ClinicalUseDefinition', 'Parameters', 'SupplyRequest', 'Immunization', 'CareTeam', 'Contract', 'CompartmentDefinition', 'TestPlan', 'PaymentReconciliation', 'Bundle', 'FamilyMemberHistory', 'Citation', 'NutritionIntake', 'DeviceDispense', 'Requirements', 'Subscription', 'TestReport', 'OperationDefinition', 'MedicationRequest', 'GenomicStudy', 'ActorDefinition', 'VisionPrescription', 'GuidanceResponse', 'MetadataResource', 'AdministrableProductDefinition', 'PackagedProductDefinition', 'EncounterHistory', 'StructureDefinition', 'Permission', 'Consent', 'StructureMap', 'SearchParameter', 'AllergyIntolerance', 'ClinicalImpression', 'BiologicallyDerivedProductDispense', 'Location', 'ManufacturedItemDefinition', 'Procedure', 'ResearchStudy', 'ActivityDefinition', 'SubstanceProtein', 'ConceptMap', 'Patient', 'NutritionProduct', 'MessageHeader', 'NutritionOrder', 'SubstancePolymer', 'AppointmentResponse', 'QuestionnaireResponse', 'ChargeItemDefinition', 'CommunicationRequest', 'MessageDefinition', 'DeviceRequest', 'SubstanceDefinition', 'InventoryItem', 'Invoice', 'Endpoint', 'Account', 'Person', 'MedicationDispense', 'DetectedIssue', 'CoverageEligibilityResponse', 'Organization', 'EvidenceReport', 'Flag', 'GraphDefinition', 'SubscriptionStatus', 'Group', 'ExampleScenario', 'BodyStructure', 'ConditionDefinition', 'CanonicalResource', 'SubscriptionTopic', 'Questionnaire', 'Condition', 'DiagnosticReport', 'Slot', 'ExplanationOfBenefit', 'NamingSystem', 'SubstanceSourceMaterial', 'ImmunizationRecommendation', 'MedicationAdministration', 'Encounter']

  end
end