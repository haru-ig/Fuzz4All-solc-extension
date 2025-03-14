pragma solidity ^0.8.0;
contract Mutated
	{
	uint data;
	uint data2;
	function initializeData(uint _a) public { data = (417759*(10**17)); }
	function setNumber() public { data = data + 1; }
	function dataAddress(uint _a) public { data = _a + 3; }
	function dataUint() public { data = data * 2; }
}
