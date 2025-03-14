pragma solidity ^0.8.0;
contract Multiprecision {
	uint a;
	uint b;
	uint c;
	uint d;
	uint e;
	uint[3] arr;
	constructor() {
		e = 2; b = 3 * 7; c = 4/27; d = 3/5; a = 1/3;
	}
	function compute(uint32 num1) public {
		uint32 num2 =  num1 * d * c / b;
		uint32 num3 =  num2 / a;
		uint32 num4 =  num2 - num3;
		e = (num1 + num4) - num3;
	}
}
