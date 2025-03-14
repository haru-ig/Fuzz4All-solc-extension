pragma solidity ^0.8.0;
contract Array {
	uint[] storage array = [
		1,
		0x6078,
		toBase10(30),
		0xFF,
		4,
		toBase10(456),
		7,
		toHexadecimal(128),
		314,
		(2**255)-1,
		0xFFFBFBFBFB,
		0x01234
	];
	function maxOf(uint[] memory arr) public pure returns(uint) {
        uint max = arr[0];
		for (uint i=1; i<arr.length; i++) {
			if (max<arr[i]) max = arr[i];
		}
        return max;
	}
	function minOf(uint[] memory arr) public pure returns(uint) {
        uint min = arr[0];
		for (uint i=1; i<arr.length; i++) {
			if (min>arr[i]) min = arr[i];
		}
        return min;
	}
	function sumOf(uint[] memory arr) public pure returns(uint) {
        uint sum = 0;
		for (uint i=0; i<arr.length; i++) {
			sum += arr[i];
		}
        return sum;
	}
	function set(uint a) public {
        array[1] = 128;
        array[2] = 30;
        array[4] = 456;
        array[5] = 7;
        array[2] *= 8;
        array[5] ^= 128;
        array[4] += 2;
        array[2] *= 0x10204;
        array[1] *= 3;
        array[5] *= 0xAF;
		array[5] += 40;
		array[5] ^= 0x123;
		array[5] += toHexadecimal(7);
        array[5] += 128;
        array[0] = toBase10(128);
        array[5] += 75;
		array[toBase10(456)] += 7;
    }
	function get(uint a) public pure returns(uint) {
        if (a>=0x400000 || a>=convertBase10(a)) revert();
        return (array[a]);
	}
	function convertBase10(uint x) public pure returns(uint) {
        return (x / 10);
