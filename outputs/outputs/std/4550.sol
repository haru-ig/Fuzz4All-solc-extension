pragma solidity ^0.8.0;
contract MyContract {
    mapping(uint => bool) x;
	constructor(uint _init) {
        x[_init] = true;
    }
	function set(uint a) public {
        if (!x[a]) {
            x[a] = true;
        }
    }
	function get() public view returns(bool) {
        return x[0];
    }
	}

pragma solidity ^0.8.0;
contract MyContract {
    mapping(uint => bool) x;
	constructor(uint _init) {
        x[_init] = true;
    }
	function get() public view returns(bool) {
        return x[0];
    }
	}
