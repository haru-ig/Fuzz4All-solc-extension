pragma solidity ^0.8.0;
contract MyContract
	{
	struct MyStruct
		{
		address arrayAddress;
		}
	MyStruct s = MyStruct(address(0));
	function f() public {
		s = MyStruct(address(0));
		s.arrayAddress;
		}
	}
