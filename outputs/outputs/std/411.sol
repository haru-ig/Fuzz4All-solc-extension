pragma solidity ^0.8.0;

contract Test {
    uint[2441] private x;
    constructor() public {
        x[0] = 17;
    }
    function test() public pure {
        x[0] = x[0] / 4294967296;
    }
}
