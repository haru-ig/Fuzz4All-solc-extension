pragma solidity ^0.8.0;
contract MutatedData3
	{
	uint data;
	uint datax;
	constructor() public {data = 300;}
	function MutatedDataAddress(uint a, uint b) public MutatedDataUint(a)MutatedDataUint(b) MutatedDataUint(-10) MutatedDataUint(5000)
	{
	   datax = a + b;
	}
	}
