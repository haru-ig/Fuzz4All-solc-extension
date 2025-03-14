pragma solidity ^0.8.0;
contract SemanticallyEquivalentYulContractWithPointers {
    uint internal contractCounter;
    pointer memory counterAddress;
    constructor (uint i) {
        counterAddress = &contractCounter;
        contractCounter = i;
    }
    function a(uint i) public {
    }
    function b() public {
        uint p = counterAddress;
        counterAddress = &counterAddress[2];
        p = p;
    }
}
