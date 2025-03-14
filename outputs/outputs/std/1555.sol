pragma solidity ^0.8.0;
contract MututedMutatedMutated {
    uint256[10] private values;
    function myInit(uint256 a, uint256 b) private {
        values[0] = a;
        values[1] = b;
        values[2] = (a + uint256((b * values[0]) ^ (b * b)));
        values[3] = (a ^ (b * (uint256(10) + b * (values[0] / values[1]))));
        values[4] = (a + uint256((b * values[0]) ^ (b * b)));
        values[5] = (a ^ (b * (uint256(10) + b * (values[0] / values[1]))));
        values[6] = (a * 2 + ((values[0] >> 8) * 256 + b * (values[1] >> 8))));
        values[7] = (a * 2 + ((values[0] >> 8) * 256 + b * (values[1] >> 8))));
        values[8] = (a | (b & ((0xff << 240) * 8)));
        values[9] = (a | (b & ((0xff << 240) * 8)));
    }
}
