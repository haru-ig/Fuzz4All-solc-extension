pragma solidity ^0.8.0;
contract MyContract
	{
	struct MyStruct
		{
		address arrayAddress;
		}
	MyStruct s;
	event LogA(address source);
	function f() public {
		s.arrayAddress;
		s.arrayAddress;
		emit LogA(s.arrayAddress);
		}
	}
