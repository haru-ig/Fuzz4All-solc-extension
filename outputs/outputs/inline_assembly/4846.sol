pragma solidity ^0.8.0;
contract mutator4 {
	struct mutator4 {
		uint h;
		uint i;
	}
	mutator4 public data;
	constructor() {
		data.h = 20;
		data.i = 20;
	}
	function modify4() public returns(uint) {
		var v___i = data.i;
		data.i;
		data.h = 0;
		return v___i;
	}
}
