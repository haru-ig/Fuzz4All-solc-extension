pragma solidity ^0.8.0;
contract test276 {
    uint a;
    uint[8] b = new uint[](8);
    constructor() public {
        a = 1;
    }
    function test276() public {
        a = 2;
        b[1] = 3;
    }
}
