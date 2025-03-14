pragma solidity ^0.8.0;
contract MyContract
	{
	struct MyStruct2
		{
		address? arrayAddress;
		uint? number;
		}
	MyStruct2 s;
	event LogA(address source);
	function f() public {
		s.arrayAddress;
		s.number;
		emit LogA(s.arrayAddress);
		}
	}

pragma solidity ^0.8.0;
contract MyContract
	{
	address arrayAddress;
	uint number;
	event LogA(address source);
	function f() public {
		arrayAddress;
		number;
		emit LogA(arrayAddress);
		}
	}
