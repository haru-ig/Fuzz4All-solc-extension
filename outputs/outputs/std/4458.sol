pragma solidity ^0.8.0;
contract MyContract1
	{
	struct MyStruct
		{
		address arrayAddress;
		}
	MyStruct s;
	event LogA(address source);
	function f() public {
		 s = MyStruct(address(0));
			s.arrayAddress = 0x10;
			s.arrayAddress;
			emit LogA(s.arrayAddress);
			}
	}
