pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutated {
	struct state {
		uint b;
	}
	state public currentState;
	function add3(uint val) public {
	  currentState.b += val;
	}
	function add2() public {
	  add3(1);
	  add3(2);
	  add3(5);
	}
}
