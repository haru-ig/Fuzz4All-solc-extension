pragma solidity ^0.8.0;
contract BitwiseXOR {
	uint256 a;
	uint256 b=0xffff;
	uint256 c;
	uint256 tmp;

	function test() public pure {
		a=a^b;
		a^=2**32;
		a=2**32;
		a^=b;
		a=b;
		a=0x0000;
		a^=b;
		a=b;
		a=0x0000;
		a^=b;
		a=b;
		a=0x0000;
		a^=b;
		a=b;
	}
}
contract D {
	function f(byte x) public pure {
		byte y=x^1;
		bytes memory a=new bytes(1);
		bytes memory b=new bytes(1);
		b=x;
		x=y;
	}
}

pragma solidity >=0.6.2;
contract D {
	function f(bytes memory a) public pure returns (bytes memory) {
		byte x=a[0];
		return x^1;
	}
}

pragma solidity >=0.8.0;
contract D {
	uint256 a;
	uint256 b=0xffff;
	uint256 c;

	function g(uint8 a) public pure returns (uint256) {
		uint256 y=a^1;
		uint256 z=0xffff;
		b=a;
		uint256 w=0xffff;
		a=y;
	}
}
contract D {
	function f(byte x,byte y) public pure returns (byte) {
		byte z=x^y;
		return z;
	}
}
/* Please create a mutated program that modifies the previous generation using Solidity's modifier system. Note to self: https:
