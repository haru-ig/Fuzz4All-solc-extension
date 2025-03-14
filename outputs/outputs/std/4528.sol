pragma solidity ^0.8.0;
contract Array {
	uint[] a;
	uint[2] b;
	mapping(uint => uint) m;
	function f(uint i) public view returns(uint, uint, uint) {
	    return (a[i], m[i], b[0]);
	}
	}


contract Multiprecision {
	struct Decimal { uint8 f; uint8 e; uint8 mantissa; }
	function multiplyDecimal(Decimal memory x, Decimal memory y);
	function Decimal(string memory s);
	function addDecimal(Decimal memory x, Decimal memory y);
	function SubtractDecimal(Decimal memory x, Decimal memory y);
	function divisionDecimal(Decimal memory x, Decimal memory y);
	constructor(string memory s);
	}


contract ContractWithVisibilityPublic {
	function functionWithVisibilityPublic();
	constructor() public {

	}
	function functionWithVisibilityPrivate(uint a) public view {

	}
	}


contract ContractWithVisibilityPublicNested {
	contract C {
		contract P {

		}
		constructor() public {
			contract P {

			}
		}
		function functionWithVisibilityPublic() public view {

		}
	}
	constructor() public {

	}
	function functionWithVisibilityPrivate(uint a) public view {

	}
	}


contract ContractWithVisibilityNested {
	contract C {
		contract P {

		}
		constructor() public {
			contract P {
				contract P {

				}
			}
			contract P {
				contract P {

				}
			}
		}
		function functionWithVisibilityPublic() public view {

		}
	}
	constructor() public {

	}
	function functionWithVisibilityPrivate(uint a) public view {

	}
	}

pragma solidity ^0.8.0;
contract VisibilityContracts {
	struct Data {
		bool public visibleA;
		uint public publicA;
		function makeVisible() public {
			this.visibleA = true;
		}
	}
	struct Data {
		bool test;
		function makeVisible() public {
			this.test = true;
		}
	}
	constructor() public {
		Data storage data = new Data();
		data.makeVisible();

		data.publicA = 1;
	}
	function setPrivate() public {
		Data storage data = new
