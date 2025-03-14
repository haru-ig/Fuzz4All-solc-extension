pragma solidity ^0.8.0;
contract MyContract
	{
	struct MyStruct
		{
		MyStruct(address arrayAddress);
		address arrayAddress;
		}
	MyStruct s;
	event LogA(address source);
	function f() public {
		s = MyStruct(address(0));
		s.arrayAddress;
		emit LogA(s.arrayAddress);
		}
	}
