pragma solidity ^0.8.0;
contract MyContract {
    uint8 k = 1;
	void set(uint a) public {
       k = (k + 1 < 5);
    }
	function get() public view returns(uint) {
        return k;
    }
	}
