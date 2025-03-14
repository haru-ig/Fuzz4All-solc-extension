pragma solidity ^0.8.0;
contract MyContract {
    mapping(uint=>bool) x;
	constructor(uint _init) {
        x[_init] = _init > 2;
    }
    function set(uint a) external {
        if (x[a]) {
            x[a] = true;
        }
        else {
            x[a] = false;
        }
    }
    function get() public view returns(bool) {
        return x[0];
    }
	}

pragma solidity ^0.8.0;
contract MyContract {
    mapping(uint=>bool) x;

	constructor(uint _init) {
        x[_init] = _init > 2;
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


pragma solidity ^0.8.0;
contract MyContract {
	constructor(uint256 _init) {
        x[0] = false;
        x[1] = true;
        x[2] = false;
		x[3] = true;
    }
    function set(uint256 a) external returns(uint256) {
        return x[1];
    }
	function del(uint256 a) external returns(uint256) {
        return x[a];
    }
	function add(uint256 a, uint256 b) public view returns(uint256) {
        if (x[2]) {
            return a + b;
        }
        else {
            return a - b;
        }
    }
}




pragma solidity ^0.8.0;
contract MyContract {
	uint internal state;

	constructor() {
		state = 3;
	}

	function set() public {
		x = 1;
        state++;
