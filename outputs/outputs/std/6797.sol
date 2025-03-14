pragma solidity ^0.8.0;
contract Mutate {
	struct C {
		uint a;
	}
	uint c;
	function f() public view returns (uint) {
		return c;
	}
	function g() public {
		c = 6;
	}
}
uint h;
address i;
event j;
function h(uint j) public pure returns (uint) {
	return h;
}
function i(address i) public view returns (uint) {
	return i;
}
