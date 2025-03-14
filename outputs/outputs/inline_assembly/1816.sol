pragma solidity ^0.8.0;
contract Example {
	uint256 public x;
	uint32 public x1;
	uint64 public x2;
	uint128 public x3;
	uint256 public x4;
	constructor() public {
		x = 0;
		x1 = 0;
		x2 = 0;
		x3 = 0;
		x4 = 0;
	}
	function set(uint256 _x, uint32 _x1, uint64 _x2, uint128 _x3) public {
		x = _x;
		x1 = _x1;
		x2 = _x2;
		x3 = _x3;
	}
}
