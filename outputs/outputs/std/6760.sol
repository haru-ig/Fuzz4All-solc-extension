pragma solidity ^0.8.0;
contract SummationBase {
	uint public value;
	function addOne() internal pure {
		value += 1;
	}
}
contract Summation0_1756_functionReturnsArrayReturnsArray {
	uint8 private static uint8;
	function addOne() pure public returns (uint8) {
		return (uint8(AddOne(uint8)));
	}
	function AddOne(uint8 a) pure internal returns (uint8) {
		return (uint8(a + 1));
	}
}
contract Summation0_0_functionReturnsArrayReturnsArray {
	uint8 functionReturn8() external pure returns (uint8) {
		return (uint8(AddOne(uint8(0)))));
	}
	uint8 private static uint8;
	function addOne(uint8 a) pure public returns (uint8) {
		return (uint8(a + 1));
	}
}
contract Summation13_functionReturnsArrayReturnsArray {
	uint8 functionReturn8() external pure returns (uint8) {
		return (uint8(AddOne));
	}
	uint8 private static uint8;
	function AddOne(uint8 a) pure internal returns (uint8) {
		return (uint8(a + 1));
	}
}
contract Summation50_1946_functionReturnsArrayReturnsArray {
	uint[] memory arrayOfValues;
	function AddAll(uint[] memory a) public pure returns (uint) {
		uint result = 0;
		for(uint i = 0; i < a.length; i++) {
			result += a[i];
		}
		return (result);
	}
}
contract Summation35_1946_functionReturnsArrayReturnsArray {
	uint128[] memory arrayOfValues;
	function AddAll(uint128[] memory a) public pure returns (uint128) {
		uint128 result = 0;
		for(uint i = 0; i < a.length; i++) {
			result += a[i];
		}
		return (result);
	}
}
