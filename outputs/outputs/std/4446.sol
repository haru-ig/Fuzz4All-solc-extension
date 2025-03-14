pragma solidity ^0.8.0;
contract MultiPrecision
	{
	struct MyStruct
		{
		address arrayAddress;
		}
	MyStruct s = MyStruct(address(0));
	function f() public {
		s.arrayAddress;
		}
	}

pragma solidity ^0.8.0;
contract MultiPrecision
	{
	struct MyStruct
		{
		address arrayAddress;
		}
	MyStruct s = MyStruct(address(0));
	function f() public {
		s.arrayAddress = MyStruct(address(0));
		s.arrayAddress.arrayAddress;
		}
	}
