pragma solidity ^0.8.0;
contract Multiply155_MethodCallsOperator {
	uint public number;
	constructor(uint x) { number = x; }

	function subtract(uint arg) public pure returns (uint) {
		uint i = 0;
		uint product = arg;
		while(i < 21*3) {
			product -= arg;
			i++;
		}
		return product;
	}
}
contract Multiply156_MethodCallsOperator {
	function subtract(uint256 arg) public pure returns (uint) {
		return --arg;
	}
}
