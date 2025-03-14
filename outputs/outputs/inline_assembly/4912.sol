pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutated2 {
	uint public a;
	constructor() public {
		a = 20;
	}
	function add1() public pure {
		a ++;
	}
}
pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutated3 {
	uint public a;
	constructor() public {
		a = 20;
	}
	function add1(uint x) public pure {
		a += (x + 2);
	}
}

 pragma solidity 0.8.0;
pragma experimental ABIEncoderV2;
contract mutated4 {
	uint public a;
	constructor() public {
		a = 20;
	}
	function add1() public pure {
		a += 2;
	}
}
