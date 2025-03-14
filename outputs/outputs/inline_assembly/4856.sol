pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutator5 {
	bool public state;
	constructor() {
		state = true;
	}
	function modify5() public view {
		state = false;
	}
}
