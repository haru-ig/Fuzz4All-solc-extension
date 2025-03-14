pragma solidity ^0.8.0;
contract MutatedMixedContactsExample509 {
    uint8 x;
    mapping (uint8 => uint8[]) m1;
    mapping(uint8 => uint8) m2;
    constructor() public {

        x = 1;
        m1[4] = [1, 2, 3];
        m1[8] = [1, 2, 3];
        m1[9] = [1, 2, 3];
        m2[9] = 4;
        m2[7] = 5;
        m2[4] = 6;

        m2[1] = 1;
        m2[2] = 2;
        m2[3] = 3;
        m2[4] = 4;
        m2[5] = 5;
        m2[7] = 6;
    }
}
contract MutatedMixedContactsExample523 {
    uint8 x;
    mapping (uint8 => uint8[]) m1;
    mapping(uint8 => uint8) m2;
    uint c;
