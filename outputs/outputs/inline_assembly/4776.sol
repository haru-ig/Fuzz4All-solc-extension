pragma solidity ^0.8.0;
contract mutator636{
	function check(uint32 a) public view onlyMutator() returns (uint32) {
		assembly {
			let eq := a eq 0xffffffff, lt := a lt 0xffffffff
			let s1 := eq if eq else if lt
			let s2 := s2 if lt
		}
	}
}
contract mutator447{
	uint8 _w;
	uint32 _h;
	uint8 _q;
	constructor() {
		_w = 8;
		_h = 0xffffffff;
		_q = 9;
		_h ^= _q << _w;
		_w--;
		require(_w >= 0x80, "_w is lower than 0x80");
	}
}
contract mutator3{
	uint32 _h;
	uint8 _w;
	uint8 _u;
	uint8 _t;
	uint8 _v;
	uint8 _s;
	uint8 _z;
	uint8 _y;
	uint8 _x;
	uint8 _o;
	uint8 _n;
	uint8 _l;
	uint8 _d;
	uint8 _c;
	uint8 _b;
	uint8 _a;
	uint8 _r;
	uint8 _q;
	uint8 _p;
	uint8 _o;
	uint8 _n;
	uint8 _l;
	uint8 _h;
	uint8 _p;
	function contract() public {
		require(_h == 0x7ffffFFF, "_h is 0xFFFFFFFF");
	}
	constructor() {
		_h = 0xFFFFFFFF;
		_w = 8;
		_u = 9;
		_t = 0x80;
		_v = 9;
		_s = 9;
		_z = 9;
		_y = 9;
		_x = 8;
		_o = 8;
		_n = 16;
		_l = 9;
		_d = 0x40;
		_c = 9;
		_b = 9;
	}
}
contract mutator1089{
	uint32 _h;
	uint8 _w;
	uint8 _u
