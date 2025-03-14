pragma solidity ^0.8.0;
contract MyContract2
	{
	struct MyStruct
		{
		bytes256[] arrayBytes;
		}
	MyStruct s;
	event LogA(address source);
	function f(uint m) public {
		s.arrayBytes[m];
		emit LogA(s.arrayBytes[m]);
		}
	}
