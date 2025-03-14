pragma solidity ^0.8.0;
contract Mutator1 {
	uint256 constant ONE = 1;

	function mutate(uint256 x, uint256 y) public {
		a = ONE + x;
		b = ONE + y;
	}

	modifier restrict(uint256 x) {
		a = x - 1;
		b = ONE;
		c = ONE + x;
		require( c >= ONE || c % ONE == 0, "I was called with a fucking crazy number" );
		require( c <= THREE, "I'm calling you with a fucking number not between 1 and 3" );
		_;
	}

}
