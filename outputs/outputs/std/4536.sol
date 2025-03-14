pragma solidity ^0.8.0;
contract ArrayBasic {
        uint[] memory a;
	    function set(uint x) public {
	        a.push(x);
	    }
	function get() public view returns(uint) {
		return a.length;
	    }
	}
