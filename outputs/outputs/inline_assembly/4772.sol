pragma solidity ^0.8.0;


pragma experimental ABIEncoderV2;
contract contract_test{
	struct test {
		uint foo;
		uint bar;
		uint quz;
		uint pillar;
	}

	test memory tmp;

	modifier test{

		tmp.foo = 33;
		tmp.bar = 55;
		tmp.quz = 77;
		tmp.pillar = 999;
		_;
	}

	constructor(uint32 x1, uint8 x2) test{
		tmp.foo = x1;
		tmp.bar = x2;
	}

	function testit() view public returns (uint, uint, uint){
		return (tmp.foo, tmp.bar, tmp.quz);
	}
	function testit2() view public returns (uint, uint, uint){
		return (tmp.bar, tmp.foo, tmp.quz);
	}

	function testit3() view public returns (uint, uint, uint){
		return (tmp.foo, tmp.bar, tmp.quz);
	}

	function testit4() {
		test{
			test{
				test{
					test{
						test{
							test{
								_,
								_,
								_,
							}
						}
					}
				}
			}
		}
	}
}
```
