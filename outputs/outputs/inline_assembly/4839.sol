pragma solidity ^0.8.0;
contract mutator {
	struct mutator {
		uint b;
	}
	mutator public data;
	constructor() {
		data.b = 10;
	}
	modifier setB(uint _b) {
		data.b = _b;
		_;
	}
	function modify() public {
		setB(30);
	}
}
