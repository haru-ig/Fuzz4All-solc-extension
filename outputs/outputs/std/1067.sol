pragma solidity ^0.8.0;
contract ArrayMut {
	function array(uint64[7] storage _r) public pure {
		_r[1] = 1;
		_r[3] = 2;
		_r[4] = 0;
	}
}

contract ArrayMut {
	function f(uint64[7] storage _r) public pure returns (address) {
		return _r[1];
	}
}
contract ArrayMut {
	function f(uint64[7] memory _r) public pure returns (address) {
		return _r[1].to32();
	}
}

contract ArrayMut {
	function main() public pure {
		uint64[] memory m = new uint64[](1);
		m[0] = -1;
		m[1] = 1;
		array(m);
		array(m);

		uint64[] memory a;
		array(a);

		uint64[] storage s;
		array(s);

		uint64[3] memory b;
		array(b);

		uint64[3] memory c;
		uint64[4] memory d;
		d[1] = 1;
		c[1] = 1;
		b[3] = 0;
		array(b);
		array(d);
		array(c);

		uint64[7] storage da;
		uint64[7] memory dc;
		uint64[] memory dx;
		array(da);
		array(dc);
		array(dx);

		uint64[1] memory da32;
		uint64[1] memory da8;
		array(da32);
		array(da8);

		uint64[4] memory da32g;
		uint64[4] memory da8g;
		array(da32g);
		array(da8g);

		uint64[7] memory dab8g;
		array(dab8g);
	}
}
