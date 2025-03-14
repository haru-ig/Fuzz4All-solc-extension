pragma solidity ^0.8.0;
contract MyContract {
        bool x;
        mapping(uint => bool) y;
	function assignOneElement(address addr) public {
		y[0] = true;
	}
	function assignManyElements(uint a) public {
	    address addr;
	    for(uint i = 0; i <= a; i++) {
                b(addr);
	    }
	}

	}
