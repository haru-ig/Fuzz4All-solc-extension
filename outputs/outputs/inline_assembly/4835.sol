pragma solidity ^0.8.0;
contract mutator2 {
	struct mutator2 {
		uint h;
		uint i;
	}
	mutator2 public data;
	constructor() {
		data.h = 20;
		data.i = 20;
	}
	function modify2() public {
		data.h = 20;
		data.i = 10;
	}
}
contract mutator3 {
	struct mutator3 {
		uint h;
		uint i;
	}
	mutator3 public data;
	constructor() {
		data.h = 20;
		data.i = 20;
	}
	function modify3() public {
		data.i = 10;
		data.h = 20;
	}
}
