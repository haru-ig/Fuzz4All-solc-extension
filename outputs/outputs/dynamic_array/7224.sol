pragma solidity ^0.8.0;
contract A {
	bool a = false;
	uint8 b= 0;
	uint16 c= 0;
	uint256 d= 0;
	uint32 e= 0;
	uint64 f= 0;

	uint8 g= 0x0f;
	uint16 h= 0x0f;
	uint256 i= 0x0f;
	uint32 j= 0x0f;
	uint64 k= 0x0f;

	function f() public {
		a = a && g == 0;
		b = b + 1;
		c = c + b;
		d = d + 1;
		e = e + c;
		f = f + 1;


		g = g;
	}
}

pragma solidity 0.8.15;
contract B is A {
	function f() public override {
		uint8 temp0= 0;
		A.f();



		temp0 = g;
	}
}
