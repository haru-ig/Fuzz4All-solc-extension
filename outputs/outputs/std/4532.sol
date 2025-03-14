pragma solidity ^0.8.0;
contract MyContract {
        mapping(uint => uint) x;
	function set(uint a) public {
		x[a]++;
	}
	function setv(uint a) public {
		x[a]++;
	    }
	function get() public view returns(uint) {
		return x[0];
	    }
	}
