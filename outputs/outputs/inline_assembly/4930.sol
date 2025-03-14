pragma solidity ^0.8.0;
contract complexMutated {
	uint public a;
	constructor() public {
		a = 1000;
	}
	function setA(uint _b) public {
		a = _b;
	}
	function add5() public {
		a += 500;
	}
	function sub5() public {
		a -= 500;
	}
}

pragma solidity ^0.8.0;
contract inline {
	uint public a;
	constructor() public {
		a = 2500000000;
	}
	function getA() public view returns (uint) {
		return a;
	}
	function add5() public {
		a += 500;
	}
}
