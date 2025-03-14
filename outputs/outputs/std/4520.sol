pragma solidity ^0.8.0;
contract MyContract {
	struct S {
	 uint x;
	 }
	constructor() { }
	function f() public returns(S memory) {
		s.x;
		s.x = 0;
		return s;
		}
	}

pragma solidity ^0.8.0;
contract MyContract {
	struct S{
	 uint x;
	 }
	S s;
	constructor() { }
	function f() public returns(S memory) {
		s.x;
		s.x = 0;
		return s;
	fallback();

	{
		s.x;
		s.x = 0;

		}
	return s;
	}
	}
