pragma solidity ^0.8.0;
contract MyContract {
        uint x;
        uint y = uint(-1);
	function set(uint a) public {
		x = a;
	}
	function test() public view returns(uint) {
		return y;
	    }
	}
