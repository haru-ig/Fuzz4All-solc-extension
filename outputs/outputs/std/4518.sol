pragma solidity ^0.8.0;
contract MyContract {
	struct S {
	 uint x;
	 }
	S s;
	constructor() {
		s.x * s.x;
		s.x == 0 * 0;
		}
	function f() public {
		s.x;
		s.x = 0;
		}
	}
