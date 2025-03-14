pragma solidity ^0.8.0;
contract mutator5 {
	struct mutator5 {
		uint h;
		uint i;
	}
	mutator5 public data;
	constructor() {
		data.h = 20;
		data.i = 20;
	}
	modifier canModify() {
		require(msg.from == address(this));
		_;
	}
	function modify5() public canModify {
		data.h = 0;
	}
}
