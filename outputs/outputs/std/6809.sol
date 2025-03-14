pragma solidity ^0.8.0;
contract C {
	struct A {
		uint b;
	}
	A x;
	function foo() public {
		bool z;
		do {
			z = true;
		} while (uint256(z) < x.b);
	}
}
contract D {
	address public addr;
	struct A {
		uint b;
	}
	bytes b;
	struct B {
		uint bb;
	}
	mapping (address => bool) isMap;
	mapping (uint => bool) isMap;
	bytes memory a = 0x00;
	string memory a2 = '0x00';
	modifier Mmod(uint _a) {
		address x = msg.sender;
		uint x1 = x.call{ value: 4321120000000000000 }("");
		uint r = x1 % _a;

		bool test = r%_a!=0;
		bool condition = true;
		if (a2!='0x00'){
			condition = bytes1(a=='0x'+a2)?1:2;
		}
		bool b = false;
		if (b) {
			test = true;
		}

		return condition && test;
	}
	modifier preMod(uint k) {
		uint xx;
		xx = 2;
		assert(k%xx==0);
		_;
	}
	function foo() external {
		require(b==0 || b==0x11);
		bool x;
		require(x!= b);
		require(b==0x0 || b==bytes1(0x0));
		assert(b!= bytes1(a=='0x'+a2));
		A a;
		A a;
		a.b = uint256(a);
	}
}
