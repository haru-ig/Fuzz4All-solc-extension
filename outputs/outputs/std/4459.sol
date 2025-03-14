pragma solidity ^0.8.0;
contract MyContract
	{
	struct MyStruct
		{
		address arrayAddress;
		}
	MyStruct s;
	event LogA(address source);
	function f() public {
		emit LogA(address(1));
		s = MyStruct(s.arrayAddress);
		s.arrayAddress;
		emit LogA(s.arrayAddress);
		}
	}
^[[A
  The `emit` statement used in previous generation is deprecated. It has been replaced with the `emit emit` statement. It is recommended to migrate to the new `emit` statement to reduce unnecessary code repetition.
