pragma solidity ^0.8.0;
contract Multiprecision {
	uint64 u1 = 2;
	uint64 u2 = 3;
	uint64 u1x = 1;
	uint8 s1 = 1;
	uint8 s2 = 5;
	uint64 v1;
	uint64 v2;
	uint128 v128;
	uint256 v256;
	uint32 v32;
	uint16 v16;
	uint8 v8;
	uint8 r[256];
	uint8[] memory sj;
	uint[] memory vj;
	uint64 [] memory rg;
	uint64 [] memory rw;
	uint128 [] memory v128n;
	uint256 [] memory v256n;
	uint32 [] memory v32n;
	uint16 [] memory v16n;
	uint8 [] memory v8n;
	address [] memory addressf[4] = [0xf12290f3f9827b1636f7f5298c6feeb96a3e8d8f, 0x37159c523aa0472342bb117cf73153eb41367981, 0x506c6a6d5039495f68749a88871c2cd34d3712cf, 0x9a43e18f6688775a640f2bc3b85649dd25f3cead];
	address f;
	address [] memory c;

	bool e;
	uint64 [] memory a;
	uint64 [] memory b;
	uint64 [] memory c;

	function square(uint64 _val) pure public returns (uint64) {
		return _val * _val;
	}

	function addition(uint64 a, uint64 b) pure public returns (uint64) {
		return a + b;
	}

	function subtraction(uint64 a, uint64 b) pure public returns (uint64) {
		return a - b;
	}

	constructor(uint64[] memory _a) {
		rg = new uint64 [] (16);
		rg = _a;
		s1 = 1;
		v1 = 3;
		v2 = 2;
		v128 = 3;
		v256 = 2;
		v32 = 3;
		v16 = 31;
		v8 = 23;
		uint e = 2047;
		uint6
