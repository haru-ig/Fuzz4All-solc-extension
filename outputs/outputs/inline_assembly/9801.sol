pragma solidity ^0.8.0;
contract SemanticsEquivalentYulContractWithParameters {
    uint internal contractCounter;
    constructor (uint i) {
        contractCounter = i;
    }
    function a() public {
        contractCounter = contractCounter + 1;
    }
    function b() public {
        contractCounter = contractCounter + (uint256) msg.value;
    }
}
