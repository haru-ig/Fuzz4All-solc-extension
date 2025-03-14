pragma solidity ^0.8.0;
contract MyContract
	{
	struct MyStruct
		{
		address arrayAddress;
		}
	MyStruct s = MyStruct(address(0));
	function f() public {
		s.arrayAddress;
		s = MyStruct(address(0));
	}
	}



pragma solidity ^0.8.0;
contract MyContract
	{
	struct MyStruct
		{
		address arrayAddress;
		}
	MyStruct public s;
	function f() public {
		MyStruct public t;
		s.arrayAddress;
		t = MyStruct(address(0));
		t.arrayAddress;
		}
	}
