pragma solidity ^0.8.0;
contract Converter {
    constructor() {
        return;
    }
    function toInt16(uint24 a,uint256 b) internal pure returns (uint256) {
        return uint224(uint256(uint256(a)/(uint256(b)*100000) + 0.5));
    }
    function toInt8(uint8 a,uint8 b) internal pure returns (uint256) {
        uint8 x;
        x:
        switch(a){
            case 0: x = 0; break x;
            x: x = uint8(Math.pow(b,2) + (a-uint8(Math.pow(b,2)))/(b*b) + (uint8(Math.pow(b,2)))/(2*b);
        }
        return x;
    }
    function toFloat8(uint256 a,uint256 b) internal pure returns (float256) {
        uint256 d = b*b;
        float256 result;
        result:
        uint256 s1 = (a*d)/(8*b);
        uint256 s2 = (a^d)/(d*b);
        s1 += (uint256(uint256(!(s1 >= 1.5*s2)))/(2*uint256(uint256(!(s2 >= 1.5*s1))))*(a*a*2 + b*uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint
