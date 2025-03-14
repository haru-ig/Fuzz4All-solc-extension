pragma solidity ^0.8.0;
library Lib {
	function log(uint a, uint b) internal pure {
		require(a > 0);
		require(a > b);
		uint c = a + b;
		require(c < a);
		uint d = a - b;
		require(b == 40);
	}
}
contract TestMutated73 {
    function mul(uint _x, uint _y) public pure returns (uint) {
        Lib.log(100, 0);
        Lib.log(600, 100);
    }
}

pragma solidity ^0.8.0;
contract TestMutated74 {
    uint constant a = 56;
    function sub(uint _x, uint _y) public pure returns (uint) {
		if (_x < 0) {
			return -1;
		} else {
			return _x;
		}
	}
    function div(uint _x, uint _y) public pure returns (uint) {
		uint a = 50;
		uint b = 150;
		uint z;
		if (_y == 0) {
			z = 500;
		} else {
			z = _x / _y;
		}
		return z;
	}
    function mul(uint _x, uint _y) public pure returns (uint) {
        if (_y < 0) {
			return 0;
		} else {
			return _x * 100;
		}
	}
}
