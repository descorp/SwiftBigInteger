//
//  RealLifeTests.swift
//  BigIntegerTests
//
//  Created by Vladimir Abramichev on 28/11/2017.
//  Copyright © 2017 Vladimir Abramichev. All rights reserved.
//

import XCTest

class RealLifeTests: XCTestCase {
    
    func testChainOperations() {
        var a = BigInteger(value: 100)
        a = a - 1
        XCTAssertEqual(a.description, "99")
        
        a = a + 2
        XCTAssertEqual(a.description, "101")
        
        a = a * 2
        XCTAssertEqual(a.description, "202")

        a = BigInteger(value: 100000)
        a = a - 1
        XCTAssertEqual(a.description, "99999")
        
        a = a + 2
        XCTAssertEqual(a.description, "100001")
        
        a = a * 2
        XCTAssertEqual(a.description, "200002")
        
        a = BigInteger(value: 100000000)
        a = a - 1
        XCTAssertEqual(a.description, "99999999")
        
        a = a + 2
        XCTAssertEqual(a.description, "100000001")
        
        a = a * 2
        XCTAssertEqual(a.description, "200000002")
    }
    
    func testFibonaccy10() {
        let number = 92
        let actualResult = "7540113804746346429"
        let result = fibonacci(of: number)
        
        XCTAssertEqual(String(result), actualResult)
    }
    
    func testFibonaccy200() {
        let number = BigInteger(value: 200)
        let actualResult = "280571172992510140037611932413038677189525"
        let result = fibonacci(of: number)
        
        XCTAssertEqual(result.description, actualResult)
    }
    
    func testFibonaccy19200() {
        let number = BigInteger(value: 19200)
        let start = CFAbsoluteTimeGetCurrent()
        let actualResult = "16338335032623402188119184133120777016953027596243360662007155571618574677081748248164160051106662932326945931624820177914052014478653264085300513632512359733322420592356145482947346518941938078512193349258880577449340387124067309021529455883534000630538161111286458843058631856972730258006224657245776703736051130253168576667727458207419714881328666863531275237102845170614165658453055054939693258449200375403478328784743540760463227287599338525882260581969475712582612062790873886004071274493698192029334463886464512221303305415894794135624497282244375397294316063103391147225978246187877802620974208478711248893910232991000429757695137812801035455656146120227137217448219670676426136992304087676842985695735819601541900566723017193232930252324461363189308770210477963170633619376568432392442626362127502565823319276625316607065003881868649428388531762109719639658125537987465844728271693505057320906691585041455128058549407996833871928076692581962728497832796131302195865874532215887641009829783449214122264059909369552719142915252789986827529087125135342225099524908572851518463462525971977544713286205314677856484621802257506580210173865285534995727108619726622011003360974906190231231801355344788372634239696221854660900149108745454432959859474102362015767177903518475196902652806499982164167828327202994886926554892895187680208841940636345565003345710235052274347678789324373098906277574210097249305808573071464820750276122744579453093041092208896291526973300450011221974172058983887373872592079006845630788980858116327598781076912613264957653984855501210613226901880833218041841134374121396492347247946647462827224891253702408986032928346681992061603538809928078017228984533956010109220267480143359580175279710673572705073614965381513547230703683104503369207279732603339041974488471530168498702967615287685084843901943058554117877255107626593788247867526520343581955770602512738600801246379813669871793565960842244838402130588052747268340168536455415535786940912258603132923467144599351356752140666400564465712660214155010985826562468133325089449142867669231155312175321939369157699700754703531339973052686927227973312098457278220405622619536137874057460132295753786856111852026234095135930159685320689704918086552228280062853554294376047357451084168697918367679782157544172021123210190786831277003609725805531739227780468279135025869289603260637030205610278155592256283039733362460051843991348646023489375037011036038609229447869652931561026418427383276993665216184554527320201997891189951697407055451058473675271462781816168786980195064711374366032336274419136135968309633162254145819593353157566479027136016838304130276032766148993466313601329928887999712768741060404944711604147042770159844151706896223232375359843350535109691774034422508657140685187835946206961169722492430361596451026089944196673226515963468419327825662537781914258488126866917075170457841581183870268168447083332486618257710839413609835103937887394265161761836821090526779263103008306769373747701823736297012242905466193861166212436463971474306679223570027679161675290612885027996133212458393910050902012219259326128594990877931633869690477473974276612866667854240727732730627355204380012735937894475642398402096856338497892456038365917219363270354882581093034089860339903093480733801913569462486141263877422835562730872621006667908625031442073225945952111694819334611400722009888974861331105253059801785814113631793911062175722956574664416555960690651958860347789143622369086731401582674595059430819910984956666990483374614664948502063239431284920639015132443924900692780820304538063047583806720092291638298252728146336397581329882982855305544145059566417486575431578457510167036045013608821962119524969499918374848688779159752914172279631665672771363112534600044358185836078985188931731489636892206671997122137671650010442578797263019803250189408722261626115452774603114409995649055572918051365342899174716979273209529556974817340034884617317154592535094816838439577714280822093396925186434447636166424559323340961249305022694400"
        let result = fibonacci(of: number)
        let time = CFAbsoluteTimeGetCurrent() - start
        
        XCTAssertEqual(result.description, actualResult)
        //XCTAssertTrue(time < 10.0) //May not happen on CI
    }
}

var known = Dictionary<BigInteger, BigInteger>()
var knownI = Dictionary<Int, Int>()

func fibonacci(of num: BigInteger) -> BigInteger {
    if num < 2 {
        return num
    }
    
    if let value = known[num] {
        return value
    }
    
    let result = fibonacci(of: num - 1) + fibonacci(of: num - 2)
    known[num] = result
    return result
}

func fibonacci(of num: Int) -> Int {
    if num < 2 {
        return num
    }
    
    if let value = knownI[num] {
        return value
    }
    
    let result = fibonacci(of: num - 1) + fibonacci(of: num - 2)
    knownI[num] = result
    return result
}
