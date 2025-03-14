pragma solidity ^0.8.0;
pragma yul (using InlineAssembler);
uint64 constant init = 1;
contract QBFinal {
    uint64 rAB;
    uint64 rAB2;
    constructor() public {
        rAB2 = rAB;
        do {
            rAB2 = rAB2 * rAB2 * rAB2 * init + rAB2 * rAB;
            rAB2 = rAB + rAB2;
        } while (rAB < rAB2);
    }
}
