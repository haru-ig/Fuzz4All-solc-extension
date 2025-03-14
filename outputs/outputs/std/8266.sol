pragma solidity ^0.8.0;

contract Multiprecision {
	int public a;
	constructor(int) public {
		a = 3;
	}
	function mul(int _x) public pure returns (int _y) { return(_x*_x+1); }
}
