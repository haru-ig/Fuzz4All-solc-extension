pragma solidity ^0.8.0;
contract Sum25_FunctionReturnsArray {
	function setResult(uint[] memory arg) public pure returns (uint[] memory) {
		uint[] memory result = new uint[](5);
		for(uint i = 0; i < 5; i += 2) {
			result[i/2] += arg[i];
			result[i/2 + 1] += arg[i+1];
		}
		return (result);
}
contract Sum250_FunctionReturnsArray {
	function setResult(uint128[] memory arg) public pure returns (uint128[] memory) {
		uint128[] memory result = new uint128[](5);
		for(uint8 i = 0; i < 5; i += 2) {
			result[i/2] += arg[i];
			result[i/2 + 1] += arg[i+1];
		}
		return (result);
}
