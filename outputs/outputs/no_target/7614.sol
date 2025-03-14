pragma solidity ^0.8.0;
contract X {
	modifier f(uint16 o, uint b) {
		assert(o > b);
		(o, b);
		emit Log("o > b:" + o + "," + b);
		emit Log2("o > b:" + uint16(o > b));
		emit LogWithParam("o > b:" + o + "," + b);
		emit LogWithParam2("o > b:" + uint16(o > b));
		assert(int(o) > int(b));
		return;
	}
	uint m(uint a, uint b) public pure returns (uint c) { c = a + b; emit Log("m:" + a + "," + b + "," + c); return }
	uint m2(uint a, uint b) public pure returns (uint256 c) { c = a + b; emit Log("m:" + a + "," + b + "," + c); return }
	uint i(uint a, uint b) public pure returns (int256 c) { c = int(a + b); emit Log("i:" + a + "," + b + "," + c); return }
	uint i2(uint a, uint b) public pure returns (uint256 c) { c = uint256(a + b); emit Log("i:" + a + "," + b + "," + c); return }
	function nfc(uint16 a, uint16 b) public f(a, b) f(a, uint16(b)) public pure returns (uint256 c) { emit Log("nfc:" + a + "," + b + "," + c); return }
	function nfc2(uint a, uint b) public f(a, uint16(b)) public return (uint c) { emit Log("nfc:" + a + "," + uint16(b) + "," + c); return }
	function nfc3(uint a, uint b) public f(a + uint(1), b) public pure returns (uint c) { emit Log("nfc:" + 1 + "," + b + "," + c); return }
	function nfc4(uint16 a, uint16 b) public f(a, b) public pure returns (uint c) { emit Log("nfc:" + uint16(a) + "," + uint16(b) + "," + c); return }
	function nfc5(uint16 a, uint16 b) public f(a, b) public pure returns (uint c) { emit Log(convertToString(a) + ",_" + convertToString(b) + "," + c); return }
	function nfc6(uint a, uint b) public f(a, b) public pure returns (uint c) { emit Log("nfc:" + uint(a) + "," + convertToString(b) + "," + c); return }
	function nfc7(uint a,
