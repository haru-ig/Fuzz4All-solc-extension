pragma solidity ^0.8.0;
contract MyContract
	{
	struct MyStruct
		{
		address[] array;
		}
	MyStruct s;
	event LogA(address[] source);
	function f() public {
		s.array;
		s.array;
		emit LogA(m[s.array]);
		}
	function m(address[] memory a) public pure returns(address[]) {
		return a;
		}
	}
