pragma solidity ^0.8.0;
contract Multi {
	modifier add1(uint256 x) {
		s[msg.sender] += x;
		s[msg.sender];
		bool b = s.x >= 10;
		if (!b) { b = s.x < 20; }
		require(b);
		_;
		}
	constructor() public add1(10) {
		s.x = 0;
		s.x;
		}
	}
