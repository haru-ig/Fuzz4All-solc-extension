pragma solidity ^0.8.0;
contract MyContract {
	struct S {
		uint i;
		}
	S s;
	constructor() {
		s.i = -1;
		}
	}



pragma solidity >=0.6.0;
contract MyContract {
	struct S {
		uint i;
		}
	S s;
	constructor() {
		s.i;
		}
	function f() public {
		s.i += 123;
		}
	}
