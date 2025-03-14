pragma solidity ^0.8.0;
contract C {
	A[] public a;
	A[] public b;
	modifier Mmod(uint _a) {
		require(_a % 3 == 0, "Modulus Violation");
		_;
	}
	modifier Pre {
		require(_x % 2 == 1);
		_;
	}
	uint public x = 0;
	A y;
	modifier Premod {
		require(_x % 2 == 0);
		_;
	}
	uint256 _x;
	function foo() external {
		uint128 c;
		assembly {
			c := mload(add(a, 0x20)) % 3
		}
		c = _x % 3;
		y.b = _x;
	}
}
