pragma solidity ^0.8.0;
contract MyContract {
        bool y;
        mapping(uint => bool) x;
	function set(uint a) public {
		x[a] = true;
	}
	function get() public view returns(bool) {
		return x[0];
	    }
	}
