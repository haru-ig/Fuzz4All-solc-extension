pragma solidity ^0.8.0;
contract Divide25_FunctionReturnsArray {
	function setResult(uint[] memory arg) public pure returns (uint[] memory) {
		uint[] memory result = new uint[](3);
		result[0] = arg[1] / arg[0];
		result[1] = arg[2] / arg[0];
		result[2] = result[1];
		return (result);
	}
}
contract Divide7_FunctionReturnsArray {
	function setResult(uint128[] memory arg) public pure returns (uint128[] memory) {
		return div(arg, arg.length);
	}
}
