pragma solidity ^0.8.0;
contract Test2 {
    function test01() public returns (uint) {
        uint x;
        (x, x) = (32, -1);
        uint y;
        uint x = y;
        return x;
    }
    function test02() public returns (uint) {
        uint  z = 3 * 999_999999999;
        uint x = z;
        if (x < 1)  x = -x;
        else    x = -x;
        x = z + x;
        x = z * 641 + (x >> 1);

        return x;
    }
}
