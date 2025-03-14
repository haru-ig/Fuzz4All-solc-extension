pragma solidity ^0.8.0;
contract MyContract {
	struct S {
		uint x;
	}
	constructor() {
		S memory m;
		S storage s = m;
		s.x;
		}
	function f() public {
		s.x;
		}
	}
