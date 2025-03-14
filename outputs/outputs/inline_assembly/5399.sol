pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Qc {
    uint constant Init = 17;
    uint _rBc;
    uint internal rBc2;
    constructor () public {
        rBc2 = Init + 17;
        for (uint x = 0; x < 10000; x++) {
            uint rBc;
            _rBc = rBc + Init + 17;
        }
    }
}
