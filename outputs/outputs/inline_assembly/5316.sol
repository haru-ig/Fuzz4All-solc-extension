pragma solidity ^0.8.0;
uint64 constant init = 1;
contract QBFinal {
    uint64 rAB;
    uint64 rAB2;
    constructor() public {
        rAB2 = rAB;
        rAB2 = rAB * rAB * init + rAB * rAB2;
    }
    function update() public {
        rAB += rAB2;
        rAB2 = rAB + rAB2;
    }
}
