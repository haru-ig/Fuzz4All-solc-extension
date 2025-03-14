pragma solidity ^0.8.0;
contract Mutated {
    uint64 rAB;
    uint64 rAB2;
    constructor() public {
        rAB2 = rAB;
        rAB2 = rAB * rAB * 2 + rAB;
    }
    function update() public {
        rAB = init + rAB2;
        rAB2 = (rAB + rAB2) * 3;
    }
}
