pragma solidity ^0.8.0;
contract MyContract {
	mapping(uint256 => uint256) x;
	constructor(uint _init) {
        x[0] = _init>2;
        }
	function set(uint256 a) public {x[0] *= a;}
	function get() public view returns(uint256) {return x[0];}
	}

pragma solidity ^0.8.0;
contract MyContract {
	mapping(uint => bool) z;
    constructor(uint _init) {}
    function set(bool a) public {z[0] = a;}
	function get() public view returns(bool) {return Z[0];}
	}
