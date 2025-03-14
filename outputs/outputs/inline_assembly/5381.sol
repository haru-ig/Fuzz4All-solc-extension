pragma solidity ^0.8.0;
contract Qc{
    uint internal constant Init = 17;
    uint internal rBc;
    uint public rBc1;
    constructor () public {
        rBc = Init;
        rBc1 += Init;
        for (uint x = 0; x < 10000; x++) {
            rBc += Init;
        }
    }
}
