pragma solidity ^0.8.0;
contract B {
	struct A {
		uint b;
	}
	uint public a = 3;
	modifier Mmod(uint _a) {
		require(a % _a == 0, "Modulus Violation");
		_;
	}
	uint public x = 0;
	A y;
	modifier Pre {
		require(x!= _x);
		_x *= _x;
		x = _x;
		_;
	}
	uint16 _x;
	function foo(uint _x) external {
		y.b += _x;
	}
}


pragma solidity ^0.8.0;
contract B {
	struct A {
		uint b;
	}
	uint public a = 3;
	modifier Mmod(uint _a) {
		require(a % _a == 0, "Modulus Violation");
		_;
	}
	uint public x = 0;
	A y;
	modifier Pre {
		require(x!= _x);
		_x *= _x;
		x = _x;
		_;
	}
	uint32 _x;
	function foo(uint _x) external {
		y.b += _x;
	}
}

pragma solidity ^0.8.0;
contract B {
	struct A {
		uint b;
	}
	uint public a = 3;
	modifier Mmod(uint _a) {
		require(a % _a == 0, "Modulus Violation");
		_;
	}
	uint public x = 0;
	A y;
	modifier Pre {
		require(x!= _x);
		_x *= _x;
		x = _x;
		_;
	}
	uint512 _x;
	function foo(uint _x) external {
		y.b += _x;
	}
}
