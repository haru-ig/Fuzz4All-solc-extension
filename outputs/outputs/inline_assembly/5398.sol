pragma solidity ^0.8.0;
contract Qc {
    uint internal constant Init = 17;
    uint internal lastBc;
    uint public rBc;
    uint public rBc2;
    constructor () public {
        rBc2 = Init + 17;
        for (uint x = 0; x < 10000; x++) {
            rBc = rBc + Init + 17;
        }
        rBc2 = Init + 11;
    }
}
