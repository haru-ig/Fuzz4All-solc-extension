pragma solidity ^0.8.0;
contract MyContract {
	struct S {
		uint x;
		mapping (uint => uint) map;
		}
	S s;
	constructor() {
		s.x;
		s.x = 1;
		}
	function f() public {
		s.map[s.x];
		}
	}
