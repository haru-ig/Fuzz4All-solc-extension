pragma solidity ^0.8.0;
contract Qc {
    uint internal constant Init = 11;
    uint internal z = Init;
    event Log(uint);
    constructor () public {
        Log(z);
        z = z + 1;
        Log(z);

    }
}
