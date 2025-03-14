pragma solidity ^0.8.0;
contract MyContract {
	uint[] public x;
	function set(uint a) public {
		x.push(a);
	    }
	function get() public view returns(uint[] memory) {
		return x;
	    }
	}
