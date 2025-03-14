pragma solidity ^0.8.0;
contract Qc {
    uint internal constant Init = 17;
    uint internal rBc;
    uint public rBc2;
    constructor () public {
        rBc2 = Init;
        rBc2 += Init;
        for (uint x = 0; x < 100000; x++) {
            rBc2 = rBc2 + Init;
        }
    }
}
