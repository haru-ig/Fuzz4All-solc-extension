pragma solidity ^0.8.0;
contract third6 {
    uint a;
    uint b;
    uint c;
    uint d;
    uint e;
    constructor() public {
        uint i = c &~d & ~b;
    }
}
contract third7 {
    uint a;
    uint b;
    uint c;
    uint d;
    uint e;
    constructor() public {
        uint i = c &~b | ~d;
    }
}
