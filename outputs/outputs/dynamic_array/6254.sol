pragma solidity ^0.8.0;
library l {
	struct s {
		uint a;
		uint b;
	}

	function get() external returns (s memory) {}
}
