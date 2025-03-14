pragma solidity ^0.8.0;
contract b229_2 {
    uint public z;
    uint public y;

    constructor(uint a) public {
        z = uint(uint(bytes1(0x20)) ^ a);
        y = uint(uint(bytes1(0x20)) ^ a);
    }
}
