pragma solidity ^0.8.0;
contract good {
	uint data_public = 0;
	constructor() {
		data_public += 5;
		data_public -= 0;
		data_public -= 2;
		data_public -= 3;
		data_public -= 0;
		data_public -= 0;
	}
	function add(uint x) public pure returns (uint) {
		return data_public + x;
	}
}
contract test {
	function add(uint x, uint y) public pure returns (uint z) {
		z = x + y;
		return z;
	}
}


pragma solidity ^0.8.0;

import "hardhat/console.sol";
contract HardhatEvm {
	uint x = 100;
	function sum() public pure {
		uint z = 100;
		console.log(x);
		console.log(z);
		console.log(x + z);
	}

	function testAdd(uint x, uint z) public pure returns (uint y) {
		y = x + z;
		return y;
	}
}
