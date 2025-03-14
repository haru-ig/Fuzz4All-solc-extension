pragma solidity ^0.8.0;
contract MyContract
	{
	struct MyStruct
		{
		address arrayAddress;
		uint32 arraySize;
		}
	MyStruct s;
	mapping (uint256 => address) addressIndex;
	event LogA(address source);
	function f() public {
		s.arrayAddress;
		s.arraySize;
		addressIndex[1];
		addressIndex[9];
		emit LogA(s.arrayAddress + " " + s.arrayAddress);
		}
	}
