pragma solidity ^0.8.0;
contract MyContract {
	struct S {
		uint x;
		}
	S s;
	constructor() public {}
	function f() public view {
		s.x;
		s.x = 0;
			}
	}
