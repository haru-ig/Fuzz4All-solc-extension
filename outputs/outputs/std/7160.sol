pragma solidity ^0.8.0;
contract BitwiseXOR {
	uint a;
	uint b;
	a=0xff00;
	a^=b;
	a=0xff00;
	a^=b;
	a=0xffff;
	b=0xff00;
	a^=b;
}
