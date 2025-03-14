pragma solidity ^0.8.0;
contract Mutated18{
    uint[2] a;
    constructor() {
        a[0] = 2;
        a[1] = 3;
    }

    function mutated18() public {
        uint[3] memory c;
        (c[0], c[1], c[2]) = (4, 5, 6);
    }
}
