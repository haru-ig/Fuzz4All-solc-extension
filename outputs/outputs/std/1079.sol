pragma solidity ^0.8.0;
contract ArrayGet {
  function array() public pure {
		uint64 a = 0;
		uint64 b;
		uint64 c;
		b = a;
		b *= 10;
		c = 4 * a / 5;
		c *= 7;
		c /= 300000000;
		a = a / 7;
		a &= 1;
		a |= a;
		a = b;
		b >>= 2;
		b = 101;
		b += 2;
		b = b << 2;
		b -= c;
		b |= a;
		b >>= 6;
		b = a / c * (b + 1 + 10 / a);
		b = a / 5 > b;
		b ^= a & a;
		b += b & 1;
		b *= b;
		b >>= 12345;
		b -= a;
		b ^= a - b;
		for (uint256 i = 2; i <= 1000; i += 2) {
			b <<= 2;
			b = b * 4;
			b >>= 16;
		}
		for (uint8 i = 0; i < 4; i++) {
			if (uint8(b & 2**i) == uint8(0)) return;
		}
		for (uint64 i = 7, j = 40891; i <= 8; i += 2, j += 24) {
			b += b < j;
		}
		for (uint64 i = 2; i <= 1000; i += 2) {
			b *= 5;
			b /= 8;
			b >>= 19;
			b ^= b < -1 + j + b;
		}
		a = a >> 2 / 4;
		a >>= 1;
		a &= -~4091 - 1;
		a |= a << a - a - 1;
		for (uint256 i = 3; i <= 31; i += 1) {
			if (a & 2**i) return;
		}
  }
}
