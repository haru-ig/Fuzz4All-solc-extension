pragma solidity ^0.8.0;
contract MyContract
	{
	struct MyStruct
		{
		address arrayAddress;
		}
	address s = address(0);
	event LogA(address source);
	function f() public {
		s;
	emit LogA(s);
	}
	}
