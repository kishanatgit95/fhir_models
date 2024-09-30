module FHIR
  module R5
    class NutritionProduct < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['code', 'identifier', 'lot-number', 'serial-number', 'status']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'NutritionProduct.id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'NutritionProduct.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'NutritionProduct.implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'type'=>'code', 'path'=>'NutritionProduct.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'type'=>'Narrative', 'path'=>'NutritionProduct.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'NutritionProduct.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'NutritionProduct.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'NutritionProduct.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'code' => {'valid_codes'=>{'http://snomed.info/sct'=>['762766007', '2159007', '2254005', '3161008', '3692009', '3718001', '4700006', '4963003', '5691000', '5932006', '6083003', '6249003', '6524003', '7434003', '7661006', '7791007', '8153000', '8514004', '10827009', '10944007', '11526002', '13577000', '13781002', '14125007', '14139007', '14263006', '14971004', '15331006', '16313001', '19839007', '22559002', '22836000', '22968009', '23182003', '24515005', '25743006', '25761002', '26645004', '27138006', '27378009', '28230009', '28421003', '28647000', '28942008', '29263009', '30022007', '31121009', '34744002', '35609001', '35748005', '36434002', '37575004', '37927000', '38909000', '39102003', '39694009', '39862002', '41459008', '41810000', '41834005', '43708003', '43835003', '43984007', '44027008', '44970006', '45997006', '46329000', '47617006', '47703008', '50479000', '50593009', '50825000', '51386004', '51905005', '51963001', '52518006', '52541003', '52560005', '52625008', '52736009', '53410008', '53527002', '53875002', '54041009', '54821000', '56740002', '58732000', '58753009', '59533004', '59882007', '59888006', '60260004', '63004003', '63045006', '63330006', '63676001', '63766005', '67296003', '67324005', '67990004', '70113000', '70288006', '70587000', '70813002', '72511004', '72840006', '73916008', '74242007', '74727008', '75665004', '75799006', '75871008', '77404006', '77722008', '80259003', '80393001', '80743002', '82450006', '82566005', '83595008', '83797003', '84035007', '84791008', '85214009', '85668006', '86233005', '87136001', '88546006', '89707004', '89811004', '90136002', '90677004', '91166002', '91606004', '95984008', '102258003', '102259006', '102260001', '102261002', '102262009', '102263004', '102264005', '102270004', '102271000', '102697003', '102698008', '102699000', '102746004', '102747008', '102748003', '102750006', '102751005', '108950008', '109015005', '109017002', '109240008', '112000000', '112001001', '115343006', '115358003', '116127001', '116274004', '125706008', '126076005', '126077001', '126078006', '126079003', '126080000', '126081001', '126082008', '127384006', '129559002', '129560007', '129561006', '225748000', '226017009', '226018004', '226019007', '226021002', '226022009', '226023004', '226024005', '226025006', '226026007', '226031009', '226032002', '226033007', '226036004', '226037008', '226038003', '226040008', '226041007', '226046002', '226047006', '226053006', '226054000', '226057007', '226061001', '226062008', '226064009', '226367006', '226368001', '226465004', '226466003', '226467007', '226468002', '226469005', '226470006', '226471005', '226472003', '226473008', '226474002', '226475001', '226476000', '226477009', '226478004', '226479007', '226480005', '226481009', '226482002', '226483007', '226484001', '226486004', '226487008', '226488003', '226489006', '226491003', '226492005', '226493000', '226495007', '226496008', '226497004', '226498009', '226499001', '226500005', '226501009', '226502002', '226503007', '226504001', '226505000', '226506004', '226507008', '226508003', '226509006', '226510001', '226511002', '226512009', '226513004', '226514005', '226515006', '226516007', '226517003', '226518008', '226519000', '226520006', '226521005', '226522003', '226523008', '226524002', '226525001', '226526000', '226527009', '226528004', '226529007', '226530002', '226531003', '226532005', '226533000', '226534006', '226535007', '226536008', '226537004', '226538009', '226539001', '226540004', '226541000', '226542007', '226543002', '226544008', '226546005', '226547001', '226548006', '226549003', '226550003', '226551004', '226552006', '226553001', '226554007', '226555008', '226556009', '226557000', '226558005', '226559002', '226560007', '226561006', '226562004', '226563009', '226564003', '226565002', '226566001', '226567005', '226568000', '226569008', '226570009', '226571008', '226572001', '226574000', '226575004', '226576003', '226577007', '226578002', '226579005', '226580008', '226581007', '226582000', '226583005', '226584004', '226585003', '226587006', '226589009', '226590000', '226592008', '226593003', '226595005', '226596006', '226597002', '226598007', '226601002', '226604005', '226611009', '226612002', '226613007', '226614001', '226616004', '226617008', '226618003', '226619006', '226620000', '226621001', '226622008', '226639005', '226640007', '226641006', '226642004', '226643009', '226644003', '226645002', '226647005', '226648000', '226649008', '226650008', '226651007', '226652000', '226653005', '226654004', '226655003', '226656002', '226657006', '226658001', '226659009', '226660004', '226661000', '226662007', '226663002', '226664008', '226665009', '226666005', '226667001', '226668006', '226669003', '226670002', '226671003', '226672005', '226673000', '226674006', '226675007', '226676008', '226677004', '226678009', '226679001', '226680003', '226681004', '226682006', '226683001', '226684007', '226685008', '226686009', '226687000', '226688005', '226689002', '226690006', '226691005', '226692003', '226693008', '226694002', '226695001', '226697009', '226699007', '226700008', '226701007', '226702000', '226703005', '226704004', '226705003', '226706002', '226707006', '226708001', '226709009', '226710004', '226711000', '226712007', '226713002', '226714008', '226715009', '226716005', '226717001', '226718006', '226719003', '226720009', '226721008', '226722001', '226723006', '226724000', '226725004', '226726003', '226727007', '226728002', '226729005', '226730000', '226731001', '226732008', '226733003', '226734009', '226735005', '226736006', '226737002', '226738007', '226739004', '226740002', '226741003', '226742005', '226743000', '226744006', '226745007', '226746008', '226747004', '226748009', '226749001', '226750001', '226751002', '226752009', '226753004', '226754005', '226755006', '226756007', '226757003', '226758008', '226759000', '226761009', '226762002', '226763007', '226764001', '226765000', '226766004', '226767008', '226768003', '226769006', '226770007', '226771006', '226774003', '226775002', '226776001', '226777005', '226778000', '226779008', '226780006', '226781005', '226782003', '226783008', '226784002', '226785001', '226786000', '226787009', '226788004', '226789007', '226790003', '226791004', '226793001', '226795008', '226796009', '226797000', '226798005', '226799002', '226800003', '226801004', '226802006', '226803001', '226805008', '226808005', '226809002', '226810007', '226811006', '226812004', '226813009', '226814003', '226815002', '226816001', '226817005', '226818000', '226819008', '226820002', '226821003', '226822005', '226823000', '226824006', '226825007', '226826008', '226827004', '226828009', '226829001', '226830006', '226831005', '226832003', '226834002', '226835001', '226836000', '226837009', '226838004', '226839007', '226840009', '226841008', '226842001', '226843006', '226844000', '226845004', '226846003', '226847007', '226848002', '226849005', '226850005', '226851009', '226852002', '226853007', '226854001', '226855000', '226856004', '226857008', '226858003', '226859006', '226860001', '226861002', '226862009', '226863004', '226864005', '226865006', '226866007', '226867003', '226868008', '226869000', '226870004', '226871000', '226872007', '226873002', '226874008', '226875009', '226876005', '226877001', '226878006', '226879003', '226880000', '226881001', '226882008', '226883003', '226884009', '226885005', '226886006', '226887002', '226888007', '226889004', '226890008', '226891007', '226892000', '226894004', '226895003', '226896002', '226897006', '226898001', '226899009', '226900004', '226901000', '226902007', '226903002', '226904008', '226907001', '226908006', '226909003', '226910008', '226911007', '226912000', '226913005', '226914004', '226915003', '226916002', '226917006', '226918001', '226919009', '226920003', '226921004', '226922006', '226923001', '226924007', '226925008', '226926009', '226927000', '226928005', '226929002', '226930007', '226931006', '226932004', '226933009', '226934003', '226935002', '226936001', '226937005', '226938000', '226939008', '226940005', '226941009', '226942002', '226943007', '226944001', '226945000', '226946004', '226947008', '226948003', '226949006', '226950006', '226951005', '226952003', '226953008', '226954002', '226955001', '226956000', '226957009', '226958004', '226959007', '226960002', '226961003', '226962005', '226963000', '226964006', '226965007', '226966008', '226967004', '226968009', '226969001', '226970000', '226971001', '226972008', '226973003', '226974009', '226975005', '226976006', '226977002', '226978007', '226979004', '226980001', '226981002', '226982009', '226983004', '226984005', '226985006', '226987003', '226988008', '226989000', '226990009', '226991008', '226992001', '226993006', '226994000', '226995004', '226996003', '226997007', '226998002', '226999005', '227000008', '227001007', '227002000', '227003005', '227004004', '227005003', '227006002', '227007006', '227008001', '227009009', '227010004', '227011000', '227012007', '227013002', '227014008', '227015009', '227016005', '227017001', '227018006', '227019003', '227020009', '227021008', '227022001', '227023006', '227024000', '227025004', '227026003', '227027007', '227028002', '227029005', '227030000', '227031001', '227032008', '227033003', '227034009', '227036006', '227038007', '227040002', '227041003', '227042005', '227044006', '227045007', '227046008', '227047004', '227048009', '227049001', '227050001', '227051002', '227052009', '227053004', '227054005', '227055006', '227058008', '227060005', '227061009', '227062002', '227063007', '227064001', '227065000', '227066004', '227067008', '227068003', '227069006', '227070007', '227071006', '227072004', '227073009', '227074003', '227075002', '227076001', '227078000', '227080006', '227081005', '227083008', '227084002', '227085001', '227086000', '227087009', '227088004', '227089007', '227092006', '227093001', '227096009', '227097000', '227098005', '227099002', '227101009', '227103007', '227104001', '227105000', '227106004', '227107008', '227108003', '227109006', '227110001', '227111002', '227114005', '227115006', '227116007', '227117003', '227118008', '227119000', '227120006', '227121005', '227122003', '227123008', '227124002', '227126000', '227127009', '227128004', '227129007', '227130002', '227131003', '227132005', '227133000', '227134006', '227135007', '227136008', '227137004', '227138009', '227139001', '227141000', '227142007', '227143002', '227144008', '227145009', '227147001', '227148006', '227150003', '227151004', '227152006', '227153001', '227154007', '227155008', '227156009', '227157000', '227158005', '227159002', '227160007', '227164003', '227165002', '227167005', '227168000', '227169008', '227170009', '227171008', '227172001', '227173006', '227174000', '227175004', '227176003', '227177007', '227178002', '227179005', '227180008', '227181007', '227182000', '227183005', '227184004', '227185003', '227186002', '227187006', '227188001', '227189009', '227190000', '227191001', '227193003', '227194009', '227195005', '227196006', '227197002', '227198007', '227199004', '227200001', '227201002', '227202009', '227203004', '227204005', '227205006', '227206007', '227207003', '227208008', '227209000', '227210005', '227212002', '227213007', '227214001', '227215000', '227216004', '227217008', '227218003', '227219006', '227220000', '227221001', '227225005', '227226006', '227227002', '227228007', '227229004', '227230009', '227231008', '227232001', '227233006', '227234000', '227235004', '227236003', '227238002', '227239005', '227240007', '227242004', '227244003', '227245002', '227247005', '227249008', '227250008', '227251007', '227253005', '227254004', '227255003', '227258001', '227259009', '227260004', '227261000', '227262007', '227263002', '227264008', '227265009', '227266005', '227268006', '227269003', '227270002', '227271003', '227272005', '227273000', '227274006', '227275007', '227276008', '227277004', '227279001', '227280003', '227281004', '227282006', '227283001', '227284007', '227285008', '227286009', '227287000', '227288005', '227289002', '227290006', '227291005', '227292003', '227294002', '227295001', '227296000', '227297009', '227298004', '227299007', '227300004', '227301000', '227302007', '227303002', '227304008', '227305009', '227306005', '227307001', '227308006', '227309003', '227310008', '227311007', '227312000', '227313005', '227314004', '227315003', '227316002', '227317006', '227318001', '227319009', '227320003', '227321004', '227322006', '227323001', '227324007', '227325008', '227326009', '227327000', '227328005', '227329002', '227330007', '227331006', '227332004', '227333009', '227334003', '227335002', '227336001', '227337005', '227338000', '227339008', '227340005', '227341009', '227342002', '227343007', '227345000', '227346004', '227347008', '227348003', '227349006', '227350006', '227351005', '227352003', '227353008', '227354002', '227355001', '227356000', '227357009']}, 'type'=>'CodeableConcept', 'path'=>'NutritionProduct.code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/edible-substance-type'}},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/nutritionproduct-status'=>['active', 'inactive', 'entered-in-error']}, 'type'=>'code', 'path'=>'NutritionProduct.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/nutritionproduct-status'}},
        'category' => {'valid_codes'=>{'http://snomed.info/sct'=>['255620007', '3718001', '4700006', '7661006', '7791007', '10827009', '13577000', '14263006', '22836000', '23182003', '24515005', '25743006', '28230009', '28647000', '28942008', '39102003', '41834005', '43708003', '44027008', '46329000', '50479000', '50593009', '51905005', '53875002', '54041009', '63045006', '63766005', '67296003', '67324005', '70813002', '72511004', '74242007', '77722008', '80743002', '82450006', '82566005', '83595008', '85668006', '89707004', '89811004', '90677004', '91606004', '102259006', '102260001', '102261002', '102262009', '102263004', '102264005', '102270004', '102271000', '102697003', '102698008', '102699000', '126076005', '126077001', '126078006', '126079003', '126080000', '126081001', '126082008', '127384006', '226017009', '226021002', '226022009', '226023004', '226024005', '226037008', '226041007', '226046002', '226061001', '226062008', '226367006', '226368001', '226491003', '226492005', '226493000', '226495007', '226496008', '226497004', '226498009', '226529007', '226530002', '226531003', '226532005', '226533000', '226534006', '226535007', '226536008', '226537004', '226538009', '226539001', '226540004', '226541000', '226542007', '226543002', '226544008', '226546005', '226547001', '226548006', '226549003', '226550003', '226551004', '226552006', '226553001', '226554007', '226555008', '226556009', '226557000', '226558005', '226559002', '226560007', '226561006', '226562004', '226563009', '226564003', '226565002', '226566001', '226567005', '226568000', '226569008', '226570009', '226571008', '226572001', '226574000', '226575004', '226576003', '226577007', '226578002', '226579005', '226580008', '226581007', '226582000', '226583005', '226584004', '226585003', '226587006', '226589009', '226590000', '226592008', '226593003', '226595005', '226596006', '226597002', '226598007', '226601002', '226604005', '226611009', '226612002', '226613007', '226614001', '226616004', '226617008', '226618003', '226619006', '226620000', '226621001', '226622008', '226639005', '226640007', '226641006', '226642004', '226643009', '226644003', '226645002', '226647005', '226648000', '226649008', '226650008', '226651007', '226652000', '226653005', '226654004', '226655003', '226656002', '226657006', '226658001', '226659009', '226660004', '226661000', '226662007', '226663002', '226664008', '226665009', '226666005', '226667001', '226668006', '226669003', '226670002', '226671003', '226672005', '226673000', '226674006', '226675007', '226676008', '226677004', '226678009', '226679001', '226680003', '226681004', '226682006', '226683001', '226684007', '226685008', '226686009', '226687000', '226688005', '226689002', '226690006', '226691005', '226692003', '226693008', '226694002', '226695001', '226697009', '226699007', '226700008', '226701007', '226702000', '226703005', '226704004', '226705003', '226706002', '226707006', '226708001', '226709009', '226710004', '226711000', '226712007', '226713002', '226714008', '226715009', '226716005', '226717001', '226718006', '226719003', '226720009', '226721008', '226722001', '226723006', '226724000', '226725004', '226726003', '226727007', '226728002', '226729005', '226730000', '226731001', '226732008', '226733003', '226734009', '226735005', '226736006', '226737002', '226738007', '226739004', '226740002', '226741003', '226742005', '226743000', '226744006', '226745007', '226746008', '226747004', '226748009', '226749001', '226750001', '226751002', '226752009', '226753004', '226754005', '226755006', '226756007', '226757003', '226758008', '226759000', '226761009', '226762002', '226763007', '226764001', '226765000', '226766004', '226767008', '226768003', '226769006', '226770007', '226771006', '226774003', '226775002', '226776001', '226777005', '226778000', '226779008', '226780006', '226781005', '226782003', '226783008', '226784002', '226785001', '226786000', '226787009', '226788004', '226789007', '226790003', '226791004', '226793001', '226795008', '226796009', '226797000', '226798005', '226799002', '226800003', '226801004', '226802006', '226803001', '226805008', '226808005', '226809002', '226810007', '226811006', '226812004', '226813009', '226814003', '226815002', '226816001', '226817005', '226818000', '226819008', '226820002', '226821003', '226822005', '226823000', '226824006', '226825007', '226826008', '226827004', '226828009', '226829001', '226830006', '226831005', '226832003', '226834002', '226835001', '226836000', '226837009', '226838004', '226839007', '226840009', '226841008', '226842001', '226843006', '226844000', '226845004', '226846003', '226847007', '226848002', '226849005', '226850005', '226851009', '226852002', '226853007', '226854001', '226855000', '226856004', '226857008', '226858003', '226859006', '226860001', '226861002', '226862009', '226863004', '226864005', '226865006', '226866007', '226867003', '226868008', '226869000', '226870004', '226871000', '226872007', '226873002', '226874008', '226875009', '226876005', '226877001', '226878006', '226879003', '226880000', '226881001', '226882008', '226883003', '226884009', '226885005', '226886006', '226887002', '226888007', '226889004', '226890008', '226891007', '226892000', '226894004', '226895003', '226896002', '226897006', '226898001', '226899009', '226900004', '226901000', '226902007', '226903002', '226904008', '226907001', '226908006', '226909003', '226910008', '226911007', '226912000', '226913005', '226914004', '226915003', '226916002', '226917006', '226918001', '226919009', '226920003', '226921004', '226922006', '226923001', '226924007', '226925008', '226926009', '226927000', '226928005', '226929002', '226930007', '226931006', '226932004', '226933009', '226934003', '226935002', '226936001', '226937005', '226938000', '226939008', '226940005', '226941009', '226942002', '226943007', '226944001', '226945000', '226946004', '226947008', '226948003', '226949006', '226950006', '226951005', '226952003', '226953008', '226954002', '226955001', '226956000', '226957009', '226958004', '226959007', '226960002', '226961003', '226962005', '226963000', '226964006', '226965007', '226966008', '226967004', '226968009', '226969001', '226970000', '226971001', '226972008', '226973003', '226974009', '226975005', '226976006', '226977002', '226978007', '226979004', '226980001', '226981002', '226982009', '226983004', '226984005', '226985006', '226987003', '226988008', '226989000', '226990009', '226991008', '226992001', '226993006', '226994000', '226995004', '226996003', '226997007', '226998002', '226999005', '227000008', '227001007', '227002000', '227003005', '227004004', '227005003', '227006002', '227007006', '227008001', '227009009', '227010004', '227011000', '227012007', '227013002', '227014008', '227015009', '227016005', '227017001', '227018006', '227019003', '227020009', '227021008', '227022001', '227023006', '227024000', '227025004', '227026003', '227027007', '227028002', '227029005', '227030000', '227031001', '227032008', '227033003', '227034009', '227036006', '227038007', '227040002', '227041003', '227042005', '227044006', '227045007', '227046008', '227047004', '227048009', '227049001', '227050001', '227051002', '227052009', '227053004', '227054005', '227055006', '227058008', '227060005', '227061009', '227062002', '227063007', '227064001', '227065000', '227066004', '227067008', '227068003', '227069006', '227070007', '227071006', '227072004', '227073009', '227074003', '227075002', '227076001', '227078000', '227080006', '227081005', '227083008', '227084002', '227085001', '227086000', '227087009', '227088004', '227089007', '227092006', '227093001', '227096009', '227097000', '227098005', '227099002', '227101009', '227103007', '227104001', '227105000', '227106004', '227107008', '227108003', '227109006', '227110001', '227111002', '227114005', '227115006', '227116007', '227117003', '227118008', '227119000', '227120006', '227121005', '227122003', '227123008', '227124002', '227126000', '227127009', '227128004', '227129007', '227130002', '227131003', '227132005', '227133000', '227134006', '227135007', '227136008', '227137004', '227138009', '227139001', '227141000', '227142007', '227143002', '227144008', '227145009', '227147001', '227148006', '227150003', '227151004', '227152006', '227153001', '227154007', '227155008', '227156009', '227157000', '227158005', '227159002', '227160007', '227164003', '227165002', '227167005', '227168000', '227169008', '227170009', '227171008', '227172001', '227173006', '227174000', '227175004', '227176003', '227177007', '227178002', '227179005', '227180008', '227181007', '227182000', '227183005', '227184004', '227185003', '227186002', '227187006', '227188001', '227189009', '227190000', '227191001', '227193003', '227194009', '227195005', '227196006', '227197002', '227198007', '227199004', '227200001', '227201002', '227202009', '227203004', '227204005', '227205006', '227206007', '227207003', '227208008', '227209000', '227210005', '227212002', '227213007', '227214001', '227215000', '227216004', '227217008', '227218003', '227219006', '227220000', '227221001', '227225005', '227226006', '227227002', '227228007', '227229004', '227230009', '227231008', '227232001', '227233006', '227234000', '227235004', '227236003', '227238002', '227239005', '227240007', '227242004', '227244003', '227245002', '227247005', '227249008', '227250008', '227251007', '227253005', '227254004', '227255003', '227258001', '227259009', '227260004', '227261000', '227262007', '227263002', '227264008', '227265009', '227266005', '227268006', '227269003', '227270002', '227271003', '227272005', '227273000', '227274006', '227275007', '227276008', '227277004', '227279001', '227280003', '227281004', '227282006', '227283001', '227284007', '227285008', '227286009', '227287000', '227288005', '227289002', '227290006', '227291005', '227292003', '227294002', '227295001', '227296000', '227297009', '227298004', '227299007', '227300004', '227301000', '227302007', '227303002', '227304008', '227305009', '227306005', '227307001', '227308006', '227309003', '227310008', '227311007', '227312000', '227313005', '227314004', '227315003', '227316002', '227317006', '227318001', '227319009', '227320003', '227321004', '227322006', '227323001', '227324007', '227325008', '227326009', '227327000', '227328005', '227329002', '227330007', '227331006', '227332004', '227333009', '227334003', '227335002', '227336001', '227337005', '227338000', '227339008', '227340005', '227341009', '227342002', '227343007', '227345000', '227346004', '227347008', '227348003', '227349006', '227350006', '227351005', '227352003', '227353008', '227354002', '227355001', '227356000', '227357009', '227358004', '227359007', '227360002', '227361003', '227362005', '227363000', '227364006', '227365007', '227366008', '227367004', '227368009', '227369001', '227370000', '227371001', '227372008', '227373003', '227374009', '227375005', '227376006', '227377002', '227379004', '227380001', '227381002', '227382009', '227383004', '227384005', '227385006', '227386007', '227387003', '227388008', '227389000', '227390009', '227391008', '227392001', '227393006', '227395004', '227396003', '227397007', '227398002', '227399005', '227400003', '227401004', '227402006', '227403001', '227404007', '227405008', '227406009', '227407000', '227408005', '227409002', '227410007', '227411006', '227412004', '227413009', '227414003', '227415002', '227416001', '227417005', '227418000', '227419008', '227420002', '227421003', '227422005', '227423000', '227424006', '227425007', '227426008', '227427004', '227428009', '227429001', '227430006', '227431005', '227432003', '227433008', '227434002', '227435001', '227436000', '227437009', '227438004', '227439007', '227441008', '227442001', '227443006', '227444000', '227445004', '227446003', '227447007', '227448002', '227449005', '227450005', '227451009', '227452002', '227453007', '227454001', '227455000', '227456004', '227457008', '227458003', '227459006', '227460001', '227461002', '227462009', '227463004', '227464005', '227465006', '227466007', '227467003', '227468008', '227469000', '227470004', '227471000', '227472007', '227473002', '227474008', '227475009', '227476005', '227477001', '227478006', '227479003', '227480000', '227481001', '227482008', '227483003', '227484009', '227485005', '227486006', '227487002', '227488007', '227489004', '227490008', '227491007', '227492000', '227493005', '227495003', '227496002', '227497006', '227498001', '227499009', '227500000', '227501001', '227502008', '227503003', '227504009', '227505005', '227506006', '227507002', '227508007', '227509004', '227510009', '227511008', '227512001', '227513006', '227514000', '227515004', '227516003', '227517007', '227518002', '227519005', '227520004', '227521000', '227522007', '227523002', '227524008', '227525009', '227526005', '227527001', '227528006', '227529003', '227530008', '227531007', '227532000', '227533005', '227534004', '227535003', '227536002', '227537006', '227538001', '227539009', '227540006', '227541005', '227542003', '227543008', '227544002', '226465004', '6524003', '16313001', '29263009', '35748005', '53410008', '53527002', '58732000', '67990004', '90136002', '129559002', '129560007', '129561006', '226018004', '226019007', '226025006', '226026007', '226031009', '226032002', '226033007', '226036004', '226038003', '226040008', '226047006', '226053006', '226054000', '226057007', '226064009', '226466003', '226467007', '226468002', '226469005', '226470006', '226471005', '226472003', '226473008', '226474002', '226475001', '226476000', '226477009', '226478004', '226479007', '226480005', '226481009', '226482002', '226483007', '226484001', '226486004', '226487008', '226488003', '226489006', '226499001', '226500005', '226501009', '226502002', '226503007', '226504001', '226505000', '226506004', '226507008', '226508003', '226509006', '226510001', '226511002', '226512009', '226513004', '226514005', '226515006', '226516007', '226517003', '226518008', '226519000', '226520006', '226521005', '226522003', '226523008', '226524002', '226525001', '226526000', '226527009', '226528004', '228980007', '228981006', '228982004', '228983009', '229919008', '229920002', '229945004', '288456005', '288458006', '311455009', '412067002', '412194001', '608772009', '608773004', '769350006', '769352003', '792905007', '816174002', '818989004']}, 'type'=>'CodeableConcept', 'path'=>'NutritionProduct.category', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/nutrition-product-category'}},
        'manufacturer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'NutritionProduct.manufacturer', 'min'=>0, 'max'=>Float::INFINITY},
        'nutrient' => {'type'=>'NutritionProduct::Nutrient', 'path'=>'NutritionProduct.nutrient', 'min'=>0, 'max'=>Float::INFINITY},
        'ingredient' => {'type'=>'NutritionProduct::Ingredient', 'path'=>'NutritionProduct.ingredient', 'min'=>0, 'max'=>Float::INFINITY},
        'knownAllergen' => {'type'=>'CodeableReference', 'path'=>'NutritionProduct.knownAllergen', 'min'=>0, 'max'=>Float::INFINITY},
        'characteristic' => {'type'=>'NutritionProduct::Characteristic', 'path'=>'NutritionProduct.characteristic', 'min'=>0, 'max'=>Float::INFINITY},
        'instance' => {'type'=>'NutritionProduct::Instance', 'path'=>'NutritionProduct.instance', 'min'=>0, 'max'=>Float::INFINITY},
        'note' => {'type'=>'Annotation', 'path'=>'NutritionProduct.note', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Nutrient < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Nutrient.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Nutrient.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Nutrient.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'item' => {'type'=>'CodeableReference', 'path'=>'Nutrient.item', 'min'=>0, 'max'=>1},
          'amount' => {'type'=>'Ratio', 'path'=>'Nutrient.amount', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :item              # 0-1 CodeableReference
        attr_accessor :amount            # 0-* [ Ratio ]
      end

      class Ingredient < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Ingredient.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Ingredient.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Ingredient.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'item' => {'type'=>'CodeableReference', 'path'=>'Ingredient.item', 'min'=>1, 'max'=>1},
          'amount' => {'type'=>'Ratio', 'path'=>'Ingredient.amount', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :item              # 1-1 CodeableReference
        attr_accessor :amount            # 0-* [ Ratio ]
      end

      class Characteristic < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'value' => ['CodeableConcept', 'string', 'Quantity', 'base64Binary', 'Attachment', 'boolean']
        }
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Characteristic.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Characteristic.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Characteristic.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'type'=>'CodeableConcept', 'path'=>'Characteristic.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/measurement-property'}},
          'valueCodeableConcept' => {'type'=>'CodeableConcept', 'path'=>'Characteristic.value[x]', 'min'=>1, 'max'=>1},
          'valueString' => {'type'=>'string', 'path'=>'Characteristic.value[x]', 'min'=>1, 'max'=>1},
          'valueQuantity' => {'type'=>'Quantity', 'path'=>'Characteristic.value[x]', 'min'=>1, 'max'=>1},
          'valueBase64Binary' => {'type'=>'base64Binary', 'path'=>'Characteristic.value[x]', 'min'=>1, 'max'=>1},
          'valueAttachment' => {'type'=>'Attachment', 'path'=>'Characteristic.value[x]', 'min'=>1, 'max'=>1},
          'valueBoolean' => {'type'=>'boolean', 'path'=>'Characteristic.value[x]', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                   # 0-1 string
        attr_accessor :extension            # 0-* [ Extension ]
        attr_accessor :modifierExtension    # 0-* [ Extension ]
        attr_accessor :type                 # 1-1 CodeableConcept
        attr_accessor :valueCodeableConcept # 1-1 CodeableConcept
        attr_accessor :valueString          # 1-1 string
        attr_accessor :valueQuantity        # 1-1 Quantity
        attr_accessor :valueBase64Binary    # 1-1 base64Binary
        attr_accessor :valueAttachment      # 1-1 Attachment
        attr_accessor :valueBoolean         # 1-1 boolean
      end

      class Instance < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Instance.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Instance.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Instance.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'quantity' => {'type'=>'Quantity', 'path'=>'Instance.quantity', 'min'=>0, 'max'=>1},
          'identifier' => {'type'=>'Identifier', 'path'=>'Instance.identifier', 'min'=>0, 'max'=>Float::INFINITY},
          'name' => {'type'=>'string', 'path'=>'Instance.name', 'min'=>0, 'max'=>1},
          'lotNumber' => {'type'=>'string', 'path'=>'Instance.lotNumber', 'min'=>0, 'max'=>1},
          'expiry' => {'type'=>'dateTime', 'path'=>'Instance.expiry', 'min'=>0, 'max'=>1},
          'useBy' => {'type'=>'dateTime', 'path'=>'Instance.useBy', 'min'=>0, 'max'=>1},
          'biologicalSourceEvent' => {'type'=>'Identifier', 'path'=>'Instance.biologicalSourceEvent', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                    # 0-1 string
        attr_accessor :extension             # 0-* [ Extension ]
        attr_accessor :modifierExtension     # 0-* [ Extension ]
        attr_accessor :quantity              # 0-1 Quantity
        attr_accessor :identifier            # 0-* [ Identifier ]
        attr_accessor :name                  # 0-1 string
        attr_accessor :lotNumber             # 0-1 string
        attr_accessor :expiry                # 0-1 dateTime
        attr_accessor :useBy                 # 0-1 dateTime
        attr_accessor :biologicalSourceEvent # 0-1 Identifier
      end

      attr_accessor :id                # 0-1 id
      attr_accessor :meta              # 0-1 Meta
      attr_accessor :implicitRules     # 0-1 uri
      attr_accessor :language          # 0-1 code
      attr_accessor :text              # 0-1 Narrative
      attr_accessor :contained         # 0-* [ Resource ]
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :code              # 0-1 CodeableConcept
      attr_accessor :status            # 1-1 code
      attr_accessor :category          # 0-* [ CodeableConcept ]
      attr_accessor :manufacturer      # 0-* [ Reference(Organization) ]
      attr_accessor :nutrient          # 0-* [ NutritionProduct::Nutrient ]
      attr_accessor :ingredient        # 0-* [ NutritionProduct::Ingredient ]
      attr_accessor :knownAllergen     # 0-* [ CodeableReference ]
      attr_accessor :characteristic    # 0-* [ NutritionProduct::Characteristic ]
      attr_accessor :instance          # 0-* [ NutritionProduct::Instance ]
      attr_accessor :note              # 0-* [ Annotation ]

      def resourceType
        'NutritionProduct'
      end
    end
  end
end