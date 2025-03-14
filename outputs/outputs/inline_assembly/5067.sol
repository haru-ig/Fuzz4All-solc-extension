pragma solidity ^0.8.0;
contract Efficiency extends Equivalent {
	uint public y = 1;
	constructor() public{
		y += 2;
	}
}
contract Optimizer {
	uint256 public x = 0;
	uint256 public y = 0;
	constructor() public{
		optimizeAndExecute();
	}
	function optimizeAndExecute() public{
		uint256 z;
		x ^= 1;
		z = x;
		x = 1;
		y ^= 2;
		z |= y;
		y = 2;
		z ^= x;
		x = 0;
	}
}
