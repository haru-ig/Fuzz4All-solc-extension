pragma solidity ^0.8.0;
contract MyContract {
        bool x;
        mapping(uint => bool) y;
	function set(uint a) public {
		y[a] = true;
	}
	function get() public view returns(bool) {
		return y[0];
	    }
	}
