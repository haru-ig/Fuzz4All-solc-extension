pragma solidity ^0.8.0;
contract mutated {
	uint public a;
	constructor() public {
		a = 20;
	}
	function mul2() public {
		a = a * 2;
	}
}

pragma solidity ^0.8.0;
contract mutated {
	mutated public a;
	constructor() public {
		a = new mutated();
	}
	function setX() public {
		a.add1();
		a.mul2();
	}
}
