pragma solidity ^0.8.0;

contract MyContract {
	uint256 x = 10;
	string s = "String";

	constructor() {

	}

	event Log(uint256 y);

	function myevent() public {
		emit Log(x);
	}

	function f() public returns (uint256 y) {
		y = x;
		return y;
	}

	function getMyNum() public constant returns (uint256) {
		if (x < 10 && s.length() < 10) {
			return (uint256)100;
		}
		return x;
	}
}
