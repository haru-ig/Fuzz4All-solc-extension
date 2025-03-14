pragma solidity ^0.8.0;
contract R4 {
        uint256 a;
        uint256 b;
		uint256 c;
		uint32 maxUint;
        uint256 minUint;
        uint256 maxUintPlusOne;
    constructor(uint256 _x, uint32 _y) public {
        a = _x;
        b = _y;
        c = maxUintPlusOne;
    }
    function add2(uint32 _x) public returns (uint32){
        return a + a*a + a*a*a + a*a*a*a + b + _x;
    }
    function subtract(uint256 _x) public returns (uint32){
        uint32 temp = a;
        a = b;
        b = temp;
	    return a - _x;
    }
    function multiply(uint32 _x) public returns (uint32){
        return a + a*a + a*a*a + a*a*a*a + b + b*b + c + _x;
    }
    function multiply_by_uint(uint256 _x) public returns (uint32) {
        return a + a*a + a*a*a + a*a*a*a + b + b*b + c + _x;
    }
    function multiply_by_uint32(uint32 _x) public returns (uint32) {
        return a + a*a + a*a*a + a*a*a*a + b + b*b + c + _x;
    }
}
