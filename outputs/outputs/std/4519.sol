pragma solidity ^0.8.0;
contract MyContract {
	uint s;
	constructor() {
		s = 0;
		}
	function f() public {
		s = 0;
		}
	}
contract Convert {
	constructor() {}
	function dec2hex(uint y) internal pure returns (string memory) {
		bytes memory digits = "0123456789abcdef".bytes;
		bytes memory s = new bytes(2);
		s[0] = "0" <= y;
		s[1] = digits[(y+10) % 16];
		return string(s);
		}
	function hex2dec(bytes memory x) public pure returns (uint) {
		bytes1 b0 = byte(0);
		bytes1 b1 = byte(1);
		bytes memory digits = "0123456789abcdef".bytes;
		require(x.length == 2, "Invalid hex length");
		if (x[0] == b0 && x[1] == b0) return 0;
		if (x[0] == b1 && x[1] == b0) return 1;
		if (x[0] == b0 && x[1] == b1) return 10;
		if (x[0] == b1 && x[1] == b1) return 15;
		uint x_value = 0;
		for (uint i = 0; i < digits.length; i++) {
		uint value = digits[i] == byte(x[i])?
		0 : (digits[i] - byte(x[i])) * uint(16 ** i);
		x_value |= value;
		}
		return x_value;
		}
	}
contract Math {
	function add(uint x, uint y) internal pure returns (uint) {
		uint r0 = x + y;
		return r0 < x? r0 : r0;
		}
	function mul(uint x, uint y) internal pure returns (uint) {
		uint r0 = x * y;
		return (r0 >= x && r0 / x == y)? r0 : r0 / x;
		}
	function abs(uint x) internal pure returns (uint) {
		require(x >= 0, "Cannot take the absolute value of a negative number.");
		return x;
		}
	function sqrt(uint a) internal pure returns (uint) {
		uint r0;
		{
		uint l = (uint(1e3) + 0.5) * a;
		}
		{
		uint m = (uint(1e3) + 0.5) * a;
		r0 = l;
		for (uint i = 1; i <
