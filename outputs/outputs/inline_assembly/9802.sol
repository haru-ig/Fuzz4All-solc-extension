pragma solidity ^0.8.0;
contract SemanticallyEquivalentYulContractNoParameters {
    uint internal contractCounter;
    constructor() {
        contractCounter = 0;
    }
    function c() public {
        contractCounter = contractCounter + 1;
    }
    function a() public {
        contractCounter = contractCounter + 2;
    }
    function b() public {
        contractCounter = contractCounter + 4;
    }
}
