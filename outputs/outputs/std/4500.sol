pragma solidity ^0.8.0;
contract MyContract {
	struct S {
		uint x;
		}
	S s;
	constructor() {
		s;
		s = (s);
		}
	function f() public {
		s;
		s = s;
		}
	}
contract MyContract {
	struct S {
		uint x;
		}
	S s;
	constructor() {
		s.x;
		}
	function f() public view {
		s.x;
		s.x = 0;
		}
	}
contract MyContract {
	struct S {
		uint x;
		}
	S s;
	constructor() {
		s;
		s = s;
		}
	function f() public view {
		s.x;
		s.x = 0;
		}
	}
