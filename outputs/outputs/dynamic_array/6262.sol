pragma solidity ^0.8.0;
library l {
	struct s {
		uint a;
		uint b;
	}
	function get() public returns (s memory) {
		return l.s(0,0);
	}
}
