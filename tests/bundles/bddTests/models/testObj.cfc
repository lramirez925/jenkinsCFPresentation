/**
* My BDD Test
*/
component extends="testbox.system.BaseSpec"{
	
/*********************************** LIFE CYCLE Methods ***********************************/

	// executes before all suites+specs in the run() method
	function beforeAll(){
	}

	// executes after all suites+specs in the run() method
	function afterAll(){
	}

/*********************************** BDD SUITES ***********************************/

	function run(){
	
		describe( "My test Suite", function(){
			
			it( "should do something", function(){
				var testObj  = new app.models.testableObj();
				var testVal = testObj.add(2);
                expect( testVal ).toBe(2, "Value equals #testVal#");
			});
			
			it( "should do something else", function(){
                var testObj  = new app.models.testableObj();
				testObj.add(2);
				testObj.add(2);
				var testVal = testObj.subTract(2);
                expect( testVal ).toBe(2, "Value equals #testVal#");
			});
			
		});
		
	}
	
}
