pragma solidity ^0.8.0;
contract MyContract {
        bool y;
        mapping(uint => bool) x;
	function set(uint a) public {
		return x[a];
	    }
	function get() public view returns(bool) {
		return x[0];
	    }
	}

pragma solidity ^0.8.0;
contract Foo {
    uint16 constant bar = 9501;
}

pragma solidity ^0.8.0;
contract Foo {
    uint16 constant bar = 9501;
}
