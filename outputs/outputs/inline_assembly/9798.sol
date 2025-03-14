pragma solidity ^0.8.0;
contract SemanticallyEquivalentYulContractSingleParameter {
    uint internal contractCounter;
    constructor (uint _contractCounter) {
        contractCounter = _contractCounter;
    }
    function a() public {
    contractCounter = contractCounter + 1;
    }
    function b() public {
    contractCounter = contractCounter + 1;
    }
}
