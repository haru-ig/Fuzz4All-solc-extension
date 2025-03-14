pragma solidity ^0.8.0;
contract Qc2 {
    uint internal constant Init = 17;
    uint internal rBc;
    uint public rBc2;
    constructor () public {
        rBc2 = Init;
        rBc = 0;
        for (uint x = 0; x < 10000; x++) {
            rBc = rBc + 1;
            rBc2 = rBc2 + Init;
        }
        rBc2 = rBc2 + rBc;
    }
}
