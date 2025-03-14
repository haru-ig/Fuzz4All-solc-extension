pragma solidity ^0.8.0;
contract MyContract
	{
	MyStruct s;
	event LogA(address source);
	function f() public {
		s.arrayAddress;
		s.arrayAddress;
		emit LogA(s.arrayAddress);
		}
	}

pragma solidity ^0.8.0;
