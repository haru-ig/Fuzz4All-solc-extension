pragma solidity ^0.8.0;
contract Square12_FunctionReturnsUint128 {
	function setResult(uint128 arg) public pure returns (uint128) {
		uint128 result = (arg * arg);
		return (result);
	}
}
contract Square27_FunctionReturnsArray {
	function setResult(uint[] memory arg) public pure returns (uint[] memory) {
		uint[] memory result = new uint[](5);
		for(uint i = 0; i < 5; i++) {
			result[i] = arg[i] * arg[i];
		}
		return (result);
	}
}
contract Multiply2154_FunctionReturnsArray {
	uint[5] memory my_arr = [
		uint(0x001D4CF0000000000),
		uint(0x00099D64C5C40891D),
		uint(0x00131F750B1DDB0CC),
		uint(0xC74C32559BCF732C),
		uint(-0x9E3779B723D0A140)
	];
	uint8[3] memory my_arr_u8 = [
		uint8(0x1D),
		uint8(0x4C),
		uint8(0x09)
	];
	function setResult(uint128[10] memory arg) public pure returns (uint128[] memory) {
		for(uint i = 0; i < arg.length; i++) {
			uint32 a = uint32((arg[i] << 256) + 5145723);
			uint32 b = uint32(51);
			a = (a - b) + 53;
			uint32 c = a * a;
			a = c & a * 0x7FFFFFFF00000001;
			c = a + a - a;
			a = c & a * c;
			c = a - a /
