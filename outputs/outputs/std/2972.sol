pragma solidity ^0.8.0;
contract SomeMath {
    uint8 x = 42;
    uint8 y = 34;
    uint8 z = 78;
    uint8 x2 = 4 ** 42;
    uint8 y2 = x2 / 2;
    uint8 z2 = 4 * z * y2;
    function addAndSub(uint x, uint y) public pure returns (uint z) {
        z = x + y;
        x = x - y;
        y = z ^ x;
        z = y - x ^ z ^ x2;
        z = z * y2;
        z = z / 2 + 42;
        x = x * 4;
    }
}
