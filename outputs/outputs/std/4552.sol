pragma solidity ^0.8.0;
contract MyContract {
    mapping(uint=>bool) x;
	constructor(uint _init) {
        x[_init] = _init>2;
    }
	function set(uint a) public {
        if (x[a]) {
            x[a] = false;
        }
        else {
            x[a] = true;
        }
    }
	function get() public view returns(bool) {
        return x[0];
    }
	}
