pragma solidity ^0.8.0;
contract MyContract {
	struct MyStruct
		{
		address[2] arrAddress;
		}
	MyStruct s;
	event LogA(address source);
	function f() public {
		s = MyStruct([address(0),address(0)]);
		s.arrAddress[0];
		emit LogA(s.arrAddress[0]);
		}
	}
