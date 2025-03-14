pragma solidity ^0.8.0;
contract mutator4 {
	 struct mutator4 {
		uint public h;
		uint public i;
	}
	mutator4 public data;
	constructor() {
		data.h = 20;
		data.i = 20;
	}
	function modify4() public {
		data.i = 0;
	}
	function retrieveData() public view returns(uint) {
		return data.h;
	}
}
