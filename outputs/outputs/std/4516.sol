pragma solidity ^0.8.0;
contract MyContract {
	struct S {
		uint x;
		uint y;
		}
	S s;
	constructor() {
		s.x;
		s.x = 0;
		s.y;
		s.y = 0;
		}
	function f() public {
		s.x;
		s.x = 0;
		s.y;
		s.y = 0;
		}
	}
