pragma solidity ^0.8.0;
contract Equivalent
{
    function equal_05 () external pure returns(bool) {
        return false;
    }
    function equal_06 () external pure returns(bool) {
        return 0x13 >= 0x2b;
    }
    function equal_07 () external pure returns(bool) {
        uint256 y = -8*0xA;
        uint z = 0x7;
        bool x = y < z;
        bool y2 = 0 < z;
        bool z2 = 0 < z;
        bool z3 = 51 < z;
        bool z4 = 10 == z;
        bool z5 = 0x36 >= z;
        bool y3 = 0 <= z2;
    }
    function equal_08 () external pure returns(bool) {
        uint256 x;
        bool lessThan(uint256 x,uint256 y) pure internal returns (bool) {
            return x < y;
        }
        bool greaterThan(uint256 x,uint256 y) pure virtual internal returns (bool) {
            return x > y;
        }
        bool equal(uint256 x,uint256 y) pure virtual internal returns (bool) {
            return x == y;
        }
        uint a = 0x28;
        uint b = 0x61;
        uint c = 0x97;
        bool res1 = lessThan(a,b);
        bool res2 = equal(a,b);
        bool res3 = greaterThan(a,c);
        bool res4 = lessThan(c,b);
    }
}
