pragma solidity ^0.8.0;
library l {
	struct s {
		uint a;
		uint b;
	}
	function get() public returns (s memory) {
		s storage a;
		a = mem[32];
		return a;
	}
}
