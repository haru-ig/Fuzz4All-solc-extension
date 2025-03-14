pragma solidity ^0.8.0;
contract Multiprecision {
	int public _a;
	constructor(int) public {
		_a = 3;
	}
	function mul(int _x) public pure returns (int _y) { _y = _x*2; }
}
