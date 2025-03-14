pragma solidity ^0.8.0;
contract MultiplyXOR {
	uint constant x = 0xf337;
	mapping(uint => uint) public t = [
		(x << 32) + 0xfe00,
		(x << 32) + 0xff00,
		(x << 32) + 0xff
	];
	uint constant z = 0xfe00;
	uint constant y = (z << 16) + 0xff00;
	function test(uint a, uint b) public pure {
		t[a] *= b;
		t[a] *= 0xff0000;
		t[a] *= 1 << 8;
		t[a] *= 0x7fd;
		t[a] *= 0x7fd2;
		t[a] *= 0xfffffffffffffffffffffffefffffffffffffffeffffffffffffffe8000;
		t[a] *= 0x00339444c264f6595f5e1ed808a40c4ec280e900;
		t[a] *= 0x339444c264f65981b7c5e1ed808a40c;
		t[a] *= 0xfe0000000000000000deadbead0;
	}
}
