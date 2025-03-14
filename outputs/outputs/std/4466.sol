pragma solidity ^0.8.0;
contract MyContract
	{
	struct MyStruct2
		{
		address arrayAddress;
		uint number;
		}
	MyStruct2 s;
	event LogA(address source);
	function f() public {
		s.arrayAddress;
		s.number;
		emit LogA(s.arrayAddress);
		}
	}
