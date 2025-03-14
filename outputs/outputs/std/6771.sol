pragma solidity ^0.8.0;
contract Multiply11_FunctionReturnsArray {
	function setResult(uint[] memory arg) public pure returns (uint[] memory) {
		uint[] memory result = new uint[](3);
		for(uint i = 0; i < 5; i++) {
			result[i] = arg[0] / arg[1] * arg[i] / 10;
		}
		return (result);
	}
}
contract Multiply156_FunctionReturnsArray {
	function setResult(uint128[] memory arg) public pure returns (uint128[] memory) {
		uint128[] memory result = new uint128[](33);
		for(uint i = 0; i < 30; i++) {
			result[i] *= arg[0];
		}
		for(uint i = 32; i < arg.length; i++) {
			result[i] += arg[i - 31];
		}
		return (result);
	}
}
