pragma solidity ^0.8.0;
contract X {
    uint8 i;
    uint8 x;
    function f() public {
        i = x + x;
        x += uint8(127);
        uint8 y = i + x;
        uint8 z;
        if (z == y) {
        uint8 tmp = (2 ** 63) - uint32(1);
        uint8 tmp2 = tmp;
        for (uint256 index = 0; index < 40; index++) {
          uint8 sum;
          uint8 tmp3;
          (sum, tmp2) = add(sum, tmp2);
          (tmp3, tmp2) = add(tmp3, tmp2);
        }
        }
    }
    function add(uint8 a, uint8 b) internal pure returns (uint8, uint8) {
        uint8 c = a + b;
        return (c, c);
    }
}
