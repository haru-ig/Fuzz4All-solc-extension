pragma solidity ^0.8.0;
contract ArrayMod {
	function array(uint64[5] memory _r) public view {

		uint64 v = 0;
		uint4 ttmp;
		uint4 _c;
		ttmp = uint4(_r[0]);
		_r[1] = _r[4];
		uint24 _z;
		uint4 _o;
		uint4 _u;
		uint4 _s;
		for (ttmp = uint4(1); ttmp!= 0; ttmp = 0) {
			_o = ttmp >> 0x28;
			_z = uint4(ttmp >> 0);
			_c = uint4(_r[0]);
			_z |= _c & 0x1ff;
			_c >>= 0x18;


			_z &= 0x3;
			if (_z > 0) {
				_o |= 0x20;
			}


			_z >>= 1;
			if (!(((ttmp ^ (_z << 0x28)) & (_c & 0x1f)) == _c)) {
				_o |= 0x10;
			}


			_z >>= 1;
			if (!(((ttmp ^ (_z << 0x28)) & (_c & 0x1f)) == 0)) {
				_o |= 0x08;
			}


			_z >>= 1;
			if (!(((ttmp ^ (_z << 0x28)) & (_c & 0x1f)) == _c)) {
				_o |= 0x04;
			}
			if (_z!= 0) {
				_o |= 0x02;
			}
			_s = uint4(_o);
			_c = uint4(_z);
			_u = uint4(_r[0]);
			_c >>= 0x21;
			_r[0] = uint64(_u) | (uint64(_s) * _c >> 0x28) & 0x1ff;
