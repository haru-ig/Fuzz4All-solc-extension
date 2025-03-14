pragma solidity ^0.8.0;
contract Qc {
    uint internal constant Init = 17;
    uint internal rBc;
    uint private rBc2;
    constructor () public {
        rBc2 = Init + 17;

        rBc = Init + 18;
        for (uint x = 0; x < 10000; x++) {
            rBc += Init + 17;
        }
    }
}
