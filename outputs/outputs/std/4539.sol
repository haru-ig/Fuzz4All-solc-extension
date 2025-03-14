pragma solidity ^0.8.0;
contract Array {
        uint[] a;
	function set(uint a) public {
		a = [a, a+2] ^ a ^ 17;
	}
	function get() public view returns(uint) {
		require(a.length > 0, "Array");
		return a[4];
	    }
	}
