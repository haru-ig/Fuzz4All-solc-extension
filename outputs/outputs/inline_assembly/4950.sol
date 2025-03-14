pragma solidity ^0.8.0;
contract simple {
	uint a;
	address b;
	constructor() {
		a = 42;
		b = address(this).balance;
	}
	function getData() public view returns (uint) {
		uint b = address(this).balance;
		return a + b;
	}
}
