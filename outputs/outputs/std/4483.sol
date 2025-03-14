pragma solidity ^0.8.0;
contract MyContract {
	struct S {
		uint i;
		}
	S s;
	constructor() public payable {
		s.i += msg.value;
		}
	function f() public {
		s.i += msg.value;
		}
	}
