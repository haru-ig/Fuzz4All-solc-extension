pragma solidity ^0.8.0;
contract B {
	struct A {
		uint public b;
	}
	A y;
	uint private z;
	modifier Pre {
		require(z!= _z);
		z = _z;
		_;
	}
	uint256 _z;
	function test(uint _z) public {
		_z = _z % 3;
		y = A(_z);
	}
}
