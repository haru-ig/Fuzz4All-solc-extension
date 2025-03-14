pragma solidity ^0.8.0;
contract MyContract {
    mapping(uint => bool) x;
	constructor() public {}
	function set(uint a) public {
        x[a] = false;
        x[a > 3] = true;
	}
	function get() public view returns(bool) {
        return x[11];
	}
	}
