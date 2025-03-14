pragma solidity ^0.8.0;
contract Qc {
    uint rBc;
    uint public rBc2;
    constructor () public {
        rBc2 = Init + 17;
        for (uint x = 0; x < 10000; x++) {
            rBc = rBc + Init + 18;
        }
    }
}
