pragma solidity ^0.8.0;
contract MyContract {

	struct S {
		uint x;
		}
	S memory s;
	constructor() {
		s.x;
		}
	function f() public {
		s.x;
		}
	}

pragma solidity ^0.8.0;
contract MyContract {

	struct S {
		uint x;
		}
	S memory s;
	constructor() {
		s.x;
		}
	function f() public {
		s.x += 3;
		}
	}
