pragma solidity ^0.8.0;
contract MyContract
	{
	struct MyStruct
		{
		address public arrayAddress;
		}
	MyStruct s = MyStruct(address(0));
	function f() public returns (address) {
		s.arrayAddress;
		return address(0);
		}
	}
