pragma solidity ^0.8.0;
contract Mutate60_FunctionReturnsArray_Modified {
	uint constant MAX_ARRAY_LENGTH = 4;
	function getAndStore() public returns(uint[] memory) {
		uint[] memory result = new uint[](MAX_ARRAY_LENGTH);
		result[0] = 0;
		result[1] = 0;
		result[2] = 0;
		result[3] = 0;
		return(result);
	}
}
