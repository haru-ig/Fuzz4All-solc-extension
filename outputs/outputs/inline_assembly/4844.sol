pragma solidity ^0.8.0;
contract mutator4 {
	struct mutator4 {
		uint h;
		uint i;
	}
	mutator4[] public data;
	constructor() {
		data.length = 20;
		data[0].h = 20;
		data[0].i = 20;
	}
	function mutator4_modify() public {
		data = data.length <= 1? [] : []++;
		data[0].h = 20;
		data[0].i = 10;
		data.length++;
	}
	function mutator4_array_modify() public {
		for (uint i = 0; i < data.length; i++) {
			data[i].h = 20;
			data[i].i = 10;
		}
	}
}
