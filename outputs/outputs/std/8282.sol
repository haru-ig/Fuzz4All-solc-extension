pragma solidity ^0.8.0;
contract Multiprecision {
	uint public _a;
	constructor(uint _x) public {
		_a = -_x;
	}
	function mul(uint _x) public pure returns (uint _y) { _y = (_x-7)*7; }
}
