pragma solidity ^0.8.0;
contract MyContract {
    byte x;
	constructor() {
        x = 1;
    }
	function set() public {
        x = 0;
    }
	function get() public view returns(byte) {
        return x;
    }
	}
