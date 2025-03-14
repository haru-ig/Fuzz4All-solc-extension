pragma solidity ^0.8.0;
contract BitwiseXOR_1 {
	function test() public pure {
		uint a;
		uint b;
		a=0xfffffff;
		b=0xfffffff;
		a^=b;
		a=b;
		a=0x00000;
		b=0x00000;
		a^=b;
		a=b;
		a=0b1;
		b=0b1;
		a^=b;
		a=b;
		a=0b11;
		b=0b11;
		a^=b;
		a=b;
		a=0b100;
		b=0b100;
		a^=b;
		a=b;
		a=0b1000;
		b=0b1000;
		a^=b;
		a=b;
		a=0b10000;
		b=0b10000;
		a^=b;
		a=b;
		a=0b100000;
		b=0b100000;
		a^=b;
		a=b;
	}
}


pragma solidity ^0.8.0;
contract BitwiseXOR_2 {
	function test() public pure {
		uint a;
		uint b;
		a=0x1;
		b=0x0;
		a^=b;
		a=b;
	}
}

pragma solidity ^0.8.0;
contract BitwiseXOR {
	function test() public pure {
		uint8 a;
		uint16 b;
		uint32 c;
		uint64 d;
		uint a32;
		uint a32
