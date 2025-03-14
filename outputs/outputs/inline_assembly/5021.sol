pragma solidity ^0.8.0;
contract bad {
	contract sub {
		address addr;
		constructor(address _addr) { addr = _addr; }
	}
	constructor() {
		sub(address(this).balance > address(this).balance + 4);
	}
}
