pragma solidity ^0.8.0;
contract B {
    uint256 public value;
    uint256 x;
    constructor(uint256 z) {
        value = z;
    }
    function change_x(uint256 z) public {
        x = z;
    }
}
contract A {
    	uint256 z;
    	constructor(uint256 z_) public {
    		z = z_;
    	}
    	function x() view public returns (uint256) {
    		return x(z);
    	}
    	function x(uint256 _z) public view pure returns (uint256) {
    		uint256 y = (((((((_z - (((((((_z * 7) ^ ((_z / 2)) * 5)) ^ (_z * (7 ^ 6)))) ^ (_z^2))) ^ 10) ^ (_z ^ 30)) ^ (_z & ((10 ^ 1) - 1))) ^ _z ^ 36) ^ _z * ((10 ^ 4) - 1))) ^ _z ^ 79) ^ _z + 90) >>> 10;
    		return ((z >> ((((((((((y % (10 ^ 1)) - 7) * (y ^ (9 + 7) ^ 6)) ^ 8) * y) * (10 ^ (-13 - (y ^ 8) ^ (_z ^ 8)) ^ 9))) ^ (y ^ 12)) ^ (y ^ 16)) ^ (y ^ 20))) ^ 20)) >>> 924 << 185) ^ ((((((((y & (10 ^ 3)) - 19)) * ((y << (-8 + 1)) ^ 7)) ^ (y ^ 18)) ^ 28) ^ 62) ^ (y ^ 30))) ^ 9))) >>> 32) ^ (y >>> 23);
    	}
}
contract Bug12497_B {
    function f(uint t1, uint t2)
        public pure returns (uint)
    {
        uint t3 = (t1 & t2) | (~t1 & t2);
        return (((t1 & t2) ^ (t1 & ((1 << 31) ^ (t3 ^ ((1 << 31) | 2147483647))) ^ (t3 & ~((1 << 31) ^ (t3 ^ ((1 << 31) | 2147483647)))))))) >>> 255;
