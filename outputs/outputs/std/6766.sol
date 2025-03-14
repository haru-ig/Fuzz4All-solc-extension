pragma solidity ^0.8.0;
contract Multiply17_FunctionReturnsArray {
	function setResult(uint[] memory arg) public pure returns (uint[] memory) {
		return arg.multiply(oneByMax());
	}
	function maximumValue() public pure returns (uint) {
		return uint(2**256);
	}
	function oneByMax() public pure returns (uint) {
		return uint(maximumValue()) - uint(minimumValue());
	}
	function minimumValue() public pure returns (uint) {
		return uint(0);
	}
}
