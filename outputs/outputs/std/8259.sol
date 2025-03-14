pragma solidity ^0.8.0;
contract Array {
	uint max;
	uint[] a;
	constructor() {
		max = 10;
		a = new uint[](max);
		for (uint i = 0; i < max; i++)
			a[i] = i;
	}
}

pragma solidity ^0.8.0;
contract Array {
	uint[][] a;
	constructor() {
		a = new uint[2][];
		a[0] = [10, 7];
		a[1] = [23, 1, 18, 15, 6, 19, 9];
	}
}

pragma solidity ^0.8.0;
contract Array {
	uint max;
	uint x;
	uint y;
	uint z;
	uint t;
	uint[] a;
	uint[] b;
	uint[] c;
	uint[] d;
	uint[] e;
	uint[] f;
	address[] g;
	uint i;
	uint dnum;
	uint[5] sarray;
	uint[5, 5] sarray2;
	uint k;
	uint q;
	uint qw;
	uint tarray;
	uint[] uarray;
	uint[4, 3][4] larray;
	uint[3, 2]  larray2;
	uint[4, 2, 2] larray3;
	uint[5, 2][] larray4;
	uint[8] s5;
	contract Array {
		uint h;
	}
	contract Array {
		uint h;
	}
	contract Array {
		uint h;
	}
	contract Array {
		uint h;
	}
	constructor() {
		max = 10;
		x = 15;
		y = 7;
		z = 30;
		t = 8;
		a = new uint[](max);
		for (uint i = 0; i < max; i++)
			a[i] = i + 4;
		b = a.sub(3);
		c = new uint[](max).add(a);
		d = a.sub(2);
		e = b.add(c).mul(192);
		f = d.mul(1);
		g = new address[](8);
		for (uint i = 0; i < 8; i++) {
			g[i] = i;
		}
		e.set(1, 5).set(4, 9);
