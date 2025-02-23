module FHIR
  module R4B
    class DetectedIssue < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      MULTIPLE_TYPES = {
        'identified' => ['dateTime', 'Period']
      }
      SEARCH_PARAMS = ['author', 'code', 'identified', 'identifier', 'implicated', 'patient']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'DetectedIssue.id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'DetectedIssue.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'DetectedIssue.implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'DetectedIssue.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'type'=>'Narrative', 'path'=>'DetectedIssue.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'DetectedIssue.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'DetectedIssue.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'DetectedIssue.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'type'=>'Identifier', 'path'=>'DetectedIssue.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/observation-status'=>['registered', 'preliminary', 'final', 'amended', 'corrected', 'cancelled', 'entered-in-error', 'unknown']}, 'type'=>'code', 'path'=>'DetectedIssue.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/observation-status'}},
        'code' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v3-ActCode'=>['_AdministrationDetectedIssueCode', '_AppropriatenessDetectedIssueCode', '_InteractionDetectedIssueCode', 'FOOD', 'TPROD', 'DRG', 'NHP', 'NONRX', 'OBSA', 'AGE', 'ADALRT', 'DOSEHINDA', 'DOSELINDA', 'GEALRT', 'PEALRT', 'COND', 'HGHT', 'LACT', 'PREG', 'WGHT', 'CREACT', 'GEN', 'GEND', 'LAB', 'REACT', 'ALGY', 'INT', 'RREACT', 'RALG', 'RAR', 'RINT', 'PREVINEF', 'COMPLY', 'DUPTHPY', 'DUPTHPCLS', 'DUPTHPGEN', 'ABUSE', 'FRAUD', 'PLYDOC', 'PLYPHRM', 'DACT', 'DOSE', 'DOSECOND', 'DOSEDUR', 'DOSEDURH', 'DOSEDURHIND', 'DOSEDURL', 'DOSEDURLIND', 'DOSEH', 'DOSEHIND', 'DOSEHINDSA', 'DOSEHINDW', 'DOSEIVL', 'DOSEIVLIND', 'DOSEL', 'DOSELIND', 'DOSELINDSA', 'DOSELINDW', 'MDOSE', 'TIME', 'ALRTENDLATE', 'ALRTSTRTLATE', '_DrugActionDetectedIssueCode', '_TimingDetectedIssueCode', 'ENDLATE', 'STRTLATE', '_ActSuppliedItemDetectedIssueCode', '_SupplyDetectedIssueCode', 'ALLDONE', 'FULFIL', 'NOTACTN', 'NOTEQUIV', 'NOTEQUIVGEN', 'NOTEQUIVTHER', 'TIMING', 'INTERVAL', 'MINFREQ', 'HELD', 'TOOLATE', 'TOOSOON', 'HISTORIC', 'PATPREF', 'PATPREFALT']}, 'type'=>'CodeableConcept', 'path'=>'DetectedIssue.code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/detectedissue-category'}},
        'severity' => {'valid_codes'=>{'http://hl7.org/fhir/detectedissue-severity'=>['high', 'moderate', 'low']}, 'type'=>'code', 'path'=>'DetectedIssue.severity', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/detectedissue-severity'}},
        'patient' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient'], 'type'=>'Reference', 'path'=>'DetectedIssue.patient', 'min'=>0, 'max'=>1},
        'identifiedDateTime' => {'type'=>'dateTime', 'path'=>'DetectedIssue.identified[x]', 'min'=>0, 'max'=>1},
        'identifiedPeriod' => {'type'=>'Period', 'path'=>'DetectedIssue.identified[x]', 'min'=>0, 'max'=>1},
        'author' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Device'], 'type'=>'Reference', 'path'=>'DetectedIssue.author', 'min'=>0, 'max'=>1},
        'implicated' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'DetectedIssue.implicated', 'min'=>0, 'max'=>Float::INFINITY},
        'evidence' => {'type'=>'DetectedIssue::Evidence', 'path'=>'DetectedIssue.evidence', 'min'=>0, 'max'=>Float::INFINITY},
        'detail' => {'type'=>'string', 'path'=>'DetectedIssue.detail', 'min'=>0, 'max'=>1},
        'reference' => {'type'=>'uri', 'path'=>'DetectedIssue.reference', 'min'=>0, 'max'=>1},
        'mitigation' => {'type'=>'DetectedIssue::Mitigation', 'path'=>'DetectedIssue.mitigation', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Evidence < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Evidence.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Evidence.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Evidence.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'code' => {'valid_codes'=>{'http://snomed.info/sct'=>['404684003', '109006', '122003', '127009', '129007', '134006', '140004', '144008', '147001', '150003', '151004', '162004', '165002', '168000', '171008', '172001', '175004', '177007', '179005', '181007', '183005', '184004', '188001', '192008', '193003', '195005', '198007', '199004', '208008', '216004', '219006', '222008', '223003', '228007', '241006', '242004', '253005', '257006', '264008', '276008', '279001', '281004', '282006', '290006', '292003', '297009', '299007', '303002', '308006', '310008', '313005', '317006', '320003', '324007', '330007', '335002', '341009', '349006', '355001', '357009', '359007', '360002', '364006', '366008', '368009', '369001', '378007', '382009', '383004', '385006', '387003', '398002', '407000', '408005', '409002', '426008', '431005', '437009', '440009', '442001', '443006', '447007', '450005', '452002', '460001', '467003', '470004', '479003', '486006', '488007', '490008', '496002', '504009', '517007', '518002', '520004', '527001', '536002', '539009', '547009', '548004', '554003', '555002', '563001', '568005', '586008', '590005', '596004', '599006', '600009', '607007', '610000', '613003', '615005', '616006', '626004', '631002', '640003', '643001', '646009', '649002', '651003', '652005', '655007', '658009', '664002', '666000', '675003', '682004', '701003', '703000', '714002', '715001', '718004', '733007', '734001', '736004', '750009', '755004', '756003', '758002', '775008', '776009', '781000', '786005', '787001', '788006', '792004', '799008', '801006', '805002', '811004', '813001', '815008', '816009', '818005', '825003', '827006', '832007', '834008', '841002', '842009', '843004', '844005', '845006', '849000', '857002', '862001', '865004', '871005', '874002', '875001', '888003', '890002', '899001', '903008', '904002', '908004', '919001', '928000', '931004', '932006', '934007', '943003', '961007', '962000', '964004', '965003', '975000', '978003', '981008', '984000', '987007', '991002', '998008', '1003002', '1020003', '1023001', '1027000', '1031006', '1033009', '1034003', '1038000', '1045000', '1046004', '1051005', '1055001', '1059007', '1070000', '1073003', '1074009', '1077002', '1079004', '1085006', '1089000', '1102005', '1107004', '1108009', '1111005', '1112003', '1116000', '1124005', '1125006', '1126007', '1131009', '1134001', '1135000', '1139006', '1140008', '1141007', '1145003', '1150009', '1151008', '1152001', '1155004', '1168007', '1184008', '1194003', '1196001', '1197005', '1201005', '1207009', '1208004', '1212005', '1214006', '1232006', '1239002', '1240000', '1259003', '1261007', '1264004', '1271009', '1280009', '1282001', '1284000', '1286003', '1287007', '1297003', '1308001', '1310004', '1317001', '1318006', '1323006', '1332008', '1335005', '1343000', '1345007', '1351002', '1356007', '1361009', '1363007', '1367008', '1370007', '1372004', '1376001', '1378000', '1380006', '1383008', '1384002', '1386000', '1387009', '1388004', '1393001', '1395008', '1402001', '1412008', '1415005', '1418007', '1419004', '1426004', '1447000', '1469007', '1474004', '1475003', '1478001', '1479009', '1482004', '1486001', '1488000', '1489008', '1492007', '1493002', '1499003', '1512006', '1515008', '1518005', '1519002', '1521007', '1523005', '1525003', '1531000', '1532007', '1534008', '1538006', '1539003', '1542009', '1544005', '1551001', '1556006', '1563006', '1567007', '1588003', '1592005', '1593000', '1606009', '1608005', '1639007', '1647007', '1648002', '1654001', '1657008', '1658003', '1663004', '1667003', '1670004', '1671000', '1674008', '1679003', '1682008', '1685005', '1686006', '1694004', '1698001', '1703007', '1705000', '1708003', '1714005', '1717003', '1723008', '1724002', '1734006', '1735007', '1739001', '1742007', '1744008', '1748006', '1755008', '1761006', '1763009', '1767005', '1769008', '1771008', '1776003', '1777007', '1778002', '1779005', '1794009', '1816003', '1821000', '1822007', '1824008', '1826005', '1828006', '1829003', '1833005', '1835003', '1837006', '1845001', '1847009', '1848004', '1852004', '1855002', '1856001', '1857005', '1860003', '1865008', '1869002', '1881003', '1892002', '1896004', '1897008', '1899006', '1903004', '1908008', '1909000', '1922008', '1926006', '1939005', '1943009', '1953005', '1954004', '1955003', '1959009', '1961000', '1963002', '1965009', '1967001', '1973000', '1977004', '1979001', '1980003', '1981004', '1989002', '2004005', '2012002', '2024009', '2028007', '2032001', '2036003', '2040007', '2041006', '2043009', '2055003', '2058001', '2061000', '2065009', '2066005', '2070002', '2073000', '2087000', '2089002', '2091005', '2094002', '2102007', '2107001', '2109003', '2114004', '2116002', '2120003', '2121004', '2128005', '2129002', '2132004', '2134003', '2136001', '2138000', '2145000', '2149006', '2158004', '2167004', '2169001', '2170000', '2176006', '2177002', '2186007', '2198002', '2202000', '2204004', '2213002', '2216005', '2217001', '2219003', '2224000', '2228002', '2229005', '2231001', '2237002', '2239004', '2241003', '2243000', '2245007', '2251002', '2256007', '2261009', '2268003', '2284002', '2295008', '2296009', '2301009', '2303007', '2304001', '2307008', '2308003', '2312009', '2314005', '2326000', '2339001', '2341000', '2351004', '2355008', '2359002', '2365002', '2366001', '2367005', '2374000', '2385003', '2388001', '2390000', '2391001', '2396006', '2398007', '2403008', '2415007', '2418009', '2419001', '2420007', '2432006', '2435008', '2437000', '2438005', '2439002', '2443003', '2452007', '2463005', '2469009', '2471009', '2472002', '2473007', '2477008', '2492009', '2495006', '2496007', '2506003', '2513003', '2518007', '2521009', '2523007', '2526004', '2528003', '2532009', '2534005', '2538008', '2541004', '2554006', '2556008', '2560006', '2562003', '2576002', '2581006', '2582004', '2583009', '2584003', '2585002', '2589008', '2591000', '2593002', '2602008', '2606006', '2615004', '2618002', '2622007', '2624008', '2625009', '2630008', '2634004', '2638001', '2640006', '2651006', '2655002', '2657005', '2663001', '2665008', '2683000', '2689001', '2694001', '2704003', '2707005', '2713001', '2724004', '2725003', '2733002', '2736005', '2740001', '2749000', '2751001', '2761008', '2764000', '2770006', '2772003', '2775001', '2776000', '2782002', '2783007', '2786004', '2790002', '2805007', '2806008', '2807004', '2808009', '2815001', '2816000', '2818004', '2819007', '2825006', '2828008', '2829000', '2835000', '2836004', '2838003', '2850009', '2853006', '2856003', '2858002', '2884008', '2893009', '2897005', '2899008', '2901004', '2902006', '2904007', '2910007', '2912004', '2917005', '2918000', '2919008', '2929001', '2935001', '2946003', '2951009', '2955000', '2965006', '2967003', '2973002', '2978006', '2981001', '2989004', '2990008', '2992000', '2994004', '2999009', '3002002', '3004001', '3006004', '3009006', '3013004', '3014005', '3018008', '3019000', '3021005', '3023008', '3032005', '3033000', '3038009', '3044008', '3053001', '3059002', '3067005', '3071008', '3072001', '3073006', '3084004', '3089009', '3094009', '3095005', '3097002', '3098007', '3109008', '3110003', '3119002', '3129009', '3135009', '3140001', '3144005', '3158007', '3160009', '3163006', '3168002', '3185000', '3199001', '3200003', '3208005', '3214003', '3217005', '3218000', '3219008', '3228009', '3229001', '3230006', '3238004', '3239007', '3253007', '3254001', '3259006', '3261002', '3263004', '3272007', '3274008', '3275009', '3276005', '3277001', '3282008', '3283003', '3286006', '3289004', '3291007', '3298001', '3303004', '3304005', '3305006', '3308008', '3310005', '3321001', '3323003', '3327002', '3331008', '3344003', '3345002', '3355003', '3358001', '3368006', '3376008', '3381004', '3387000', '3391005', '3398004', '3415004', '3419005', '3421000', '3424008', '3426005', '3427001', '3434004', '3439009', '3441005', '3446000', '3449007', '3456001', '3458000', '3461004', '3464007', '3468005', '3469002', '3472009', '3474005', '3480002', '3482005', '3483000', '3487004', '3500002', '3502005', '3503000', '3506008', '3507004', '3511005', '3514002', '3519007', '3528008', '3529000', '3530005', '3531009', '3533007', '3539006', '3542000', '3544004', '3545003', '3548001', '3549009', '3558002', '3560000', '3570003', '3571004', '3577000', '3585009', '3586005', '3589003', '3590007', '3591006', '3598000', '3611003', '3633001', '3634007', '3639002', '3640000', '3641001', '3642008', '3644009', '3649004', '3650004', '3652007', '3657001', '3662000', '3677008', '3680009', '3681008', '3696007', '3699000', '3703002', '3704008', '3705009', '3716002', '3720003', '3723001', '3733009', '3738000', '3744001', '3747008', '3750006', '3751005', '3752003', '3754002', '3755001', '3756000', '3759007', '3760002', '3762005', '3763000', '3783004', '3797007', '3798002', '3815005', '3820005', '3827008', '3830001', '3841004', '3845008', '3855007', '3885002', '3886001', '3899003', '3900008', '3902000', '3903005', '3908001', '3909009', '3913002', '3914008', '3928002', '3939004', '3944006', '3947004', '3950001', '3951002', '3972004', '3975002', '3978000', '3987009', '3993001', '3999002', '4003003', '4006006', '4009004', '4016003', '4017007', '4022007', '4026005', '4030008', '4038001', '4039009', '4040006', '4041005', '4046000', '4062006', '4063001', '4069002', '4070001', '4075006', '4082005', '4088009', '4089001', '4103001', '4106009', '4107000', '4113009', '4120002', '4124006', '4127004', '4129001', '4135001', '4136000', '4142001', '4160001', '4168008', '4170004', '4174008', '4175009', '4178006', '4181001', '4183003', '4184009', '4195003', '4197006', '4199009', '4208000', '4210003', '4223005', '4224004', '4225003', '4229009', '4232007', '4237001', '4240001', '4241002', '4242009', '4248008', '4249000', '4260009', '4262001', '4264000', '4269005', '4273008', '4275001', '4278004', '4283007', '4287008', '4294006', '4300009', '4301008', '4306003', '4307007', '4313003', '4316006', '4320005', '4324001', '4325000', '4338008', '4340003', '4349002', '4354006', '4356008', '4359001', '4364002', '4367009', '4373005', '4374004', '4381006', '4386001', '4390004', '4397001', '4399003', '4403007', '4406004', '4409006', '4410001', '4412009', '4414005', '4416007', '4418008', '4426000', '4434006', '4439001', '4441000', '4445009', '4448006', '4451004', '4461006', '4463009', '4464003', '4465002', '4468000', '4470009', '4473006', '4477007', '4478002', '4481007', '4483005', '4490000', '4494009', '4495005', '4499004', '4501007', '4506002', '4510004', '4512007', '4519003', '4522001', '4523006', '4526003', '4528002', '4529005', '4530000', '4547004', '4550001', '4554005', '4556007', '4557003', '4559000', '4565000', '4568003', '4575002', '4576001', '4586000', '4592006', '4598005', '4602007', '4619009', '4633009', '4637005', '4639008', '4641009', '4645000', '4646004', '4654002', '4659007', '4661003', '4665007', '4667004', '4669001', '4673003', '4676006', '4688008']}, 'type'=>'CodeableConcept', 'path'=>'Evidence.code', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/manifestation-or-symptom'}},
          'detail' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'Evidence.detail', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :code              # 0-* [ CodeableConcept ]
        attr_accessor :detail            # 0-* [ Reference(Resource) ]
      end

      class Mitigation < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Mitigation.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Mitigation.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Mitigation.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'action' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v3-ActCode'=>['_ActDetectedIssueManagementCode', '_ActAdministrativeDetectedIssueManagementCode', '_AuthorizationIssueManagementCode', 'EMAUTH', '21', '1', '19', '2', '22', '23', '3', '4', '5', '6', '7', '14', '15', '16', '17', '18', '20', '8', '10', '11', '12', '13', '9', '_ActFinancialDetectedIssueManagementCode']}, 'type'=>'CodeableConcept', 'path'=>'Mitigation.action', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/detectedissue-mitigation-action'}},
          'date' => {'type'=>'dateTime', 'path'=>'Mitigation.date', 'min'=>0, 'max'=>1},
          'author' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole'], 'type'=>'Reference', 'path'=>'Mitigation.author', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :action            # 1-1 CodeableConcept
        attr_accessor :date              # 0-1 dateTime
        attr_accessor :author            # 0-1 Reference(Practitioner|PractitionerRole)
      end

      attr_accessor :id                 # 0-1 id
      attr_accessor :meta               # 0-1 Meta
      attr_accessor :implicitRules      # 0-1 uri
      attr_accessor :language           # 0-1 code
      attr_accessor :text               # 0-1 Narrative
      attr_accessor :contained          # 0-* [ Resource ]
      attr_accessor :extension          # 0-* [ Extension ]
      attr_accessor :modifierExtension  # 0-* [ Extension ]
      attr_accessor :identifier         # 0-* [ Identifier ]
      attr_accessor :status             # 1-1 code
      attr_accessor :code               # 0-1 CodeableConcept
      attr_accessor :severity           # 0-1 code
      attr_accessor :patient            # 0-1 Reference(Patient)
      attr_accessor :identifiedDateTime # 0-1 dateTime
      attr_accessor :identifiedPeriod   # 0-1 Period
      attr_accessor :author             # 0-1 Reference(Practitioner|PractitionerRole|Device)
      attr_accessor :implicated         # 0-* [ Reference(Resource) ]
      attr_accessor :evidence           # 0-* [ DetectedIssue::Evidence ]
      attr_accessor :detail             # 0-1 string
      attr_accessor :reference          # 0-1 uri
      attr_accessor :mitigation         # 0-* [ DetectedIssue::Mitigation ]

      def resourceType
        'DetectedIssue'
      end
    end
  end
end