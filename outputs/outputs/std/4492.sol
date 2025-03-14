pragma solidity ^0.8.0;
contract MyContract {
	struct S {
		uint x;
		}
	S s;
	constructor() {
		s.x = 0;
		}
	function f() public {
		s.x = 0;
		}
	}

pragma solidity ^0.8.0;
contract MyContract {
	function f() public pure returns (string memory) {
		return "hello";
		}
	}
