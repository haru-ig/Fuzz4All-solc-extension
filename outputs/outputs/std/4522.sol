pragma solidity ^0.8.0;
contract MyContract {
	struct S {
	 uint x y;
	 }
	S s;
	constructor() {
		s.x / s.y;
		s <= 0 / 0;
		}
	function f() public {
		s.x * s.x;
		s > s.y / 0;
		s == 0 <= 0;
		s <= s.y / 0;
		}
	}
