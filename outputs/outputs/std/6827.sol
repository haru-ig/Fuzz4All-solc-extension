pragma solidity ^0.8.0;
contract C is B {

	function test() public pure returns (B memory) {
		return B(mem(1));
	}
	function mem(uint _size) public pure returns (uint[] memory) {
		uint[] memory memoryArr = new uint[](_size);
		for(uint i = 0; i < _size; i++)
			memoryArr[i] = i;
		return memoryArr;
	}
}
