pragma solidity ^0.8.0;
contract Mutated1
	{
	uint data;
	uint data2;
	uint data3;
	function setNumber() public { data = 100; }
	function MutatedDataAddress(uint a, uint b, uint c) public
	{
	   a = (a - (1e7-1));
	   b = (b - (1e7-1));
	   c = (c - (1e7-1));
	   a = (a - b);
	   b = (b + c);
	   c = (b - a);
	   b = (b - c);
	}
	function MutatedDataUint2(uint b, uint c) public {b = (c - (b - data));}
	function MutatedDataUint3(uint a, uint b, uint c) public {a = (data + (b - (a + c)));}
	}

pragma solidity ^0.8.0;
contract Mutated2
	{
	function setNumber(uint data) public { this.data = data; }
	function MutatedDataUint(uint data) public { this.data3 = (data - data);this.data2 = (this.data3); }
	}
