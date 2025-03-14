pragma solidity ^0.8.0;
contract MutatedSolidity {
    uint public x;
    uint public y;
    uint public z;
    uint[4] public array32x4_19;
    uint[4] public array32y4_20;
    uint[8] public array32z8_21;
    function modifyX() public {
        array32x4_19[0] = x = 1;
        array32x4_19[1] = x + 1;
        array32x4_19[2] = x + 2;
        array32x4_19[3] = x + 3;
        array32y4_20[0] = y = 2*array32x4_19[0] + 4*array32y4_20[0];
        array32y4_20[1] = y + 2*array32x4_19[1] + 4*array32y4_20[1];
        array32y4_20[2] = y + 3*array32x4_19[1] + 4*array32y4_20[2];
        array32y4_20[3] = y + 4*array32x4_19[1] + 4*array32y4_20[3];
        array32z8_21[0] = z = 2*array32x4_19[0] + 4*array32y4_20[0] + 8*array32z8_21[0];
        array32z8_21[1] = z + 2*array32x4_19[1] + 4*array32y4_20[1] + 8*array32z8_21[1];
        array32z8_21[2] = z + 3*array32x4_19[1] + 4*array32y4_20[2] + 8*array32z8_21[2];
        array32z8_21[3] = z + 4*array32x4_19[1] + 4*array32y4_20[3
