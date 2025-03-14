pragma solidity ^0.8.0;
contract Check_0027 {
    function good() pure returns (uint160 x) {
        uint256 z = 0xffffffff00000000000000;
        uint160 x2 = uint160(0x7ff00000000000000000000000000000007fff);
        x = 1;
        uint256 c = c2(x, z);
    }
    function c2(uint160 x, uint160 z) pure returns (uint256 w) {
        w = 0;
        uint256 t1 = 0;
        uint256 t2 = uint256(uint160(z^uint256(z))));
        uint256 z1 = 0xfffffffffffffffffff;
        uint256 u1 = 1;
        while ((x!= 0) && (x!= z1)) {
           x = x / 2;
        }
    }
}
