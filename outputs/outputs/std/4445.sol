pragma solidity ^0.8.0;
contract MyContract
	{
	struct MyStruct
		{
		address arrayAddress;
		}
	bool b = false;
	MyStruct s = MyStruct(address(0));
	constructor() public {
		s = MyStruct(address(0));
		s.arrayAddress;
		}
	function f() public {
		s = MyStruct(address(0));
		if(b) {
			b = false;
		}
	}
	}
