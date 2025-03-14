pragma solidity ^0.8.0;
contract Mutate70_ArrayInReturn {
	function getAndStore() public returns (uint[]) {
		uint[] memory result = new uint[](4);
		result[0] = 0;
		result[1] = 0;
		result[2] = 0;
		result[3] = 0;
		return(result);
	}
}
