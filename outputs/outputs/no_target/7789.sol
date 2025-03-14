pragma solidity ^0.8.0;


contract TestLib is TestLib {
    function log1(uint8 o) public pure {
        o = 13;
    }
    function log2(uint8 o) public pure {
        o = o + 13;
    }
    function log3(uint8 o) public pure {
        o = o ^ uint8(22);
    }
    function log4(uint8 o) public pure {
        (o, o) = (o << 8, o >> 8);
    }
 }
contract TestCheckLib is TestLib {
    uint8 constant MATH = 2**24 - 1;
    function min(uint8 a, uint8 b) internal pure returns (uint8) {
        return a < b? a : b;
    }
    function max(uint8 a, uint8 b) internal pure returns (uint8) {
        return a >= b? a : b;
    }
    function pow(uint8 a, uint8 b) internal pure returns (uint8) {
        uint8 r = 1;
        while (b > 0) {
            if ((b % 2) == 1) {
                r = min(r, a);
                a = a * a;
            }
            b /= 2;
        }
        return r;
    }
    function mulTogether(uint8 a, uint8 b) internal pure returns (uint8) {
        return (a * b) % MATH;
    }
    function min256(uint8 a, uint8 b) internal pure returns(uint8) {
      return min(uint8(a), uint8(b));
    }

}
