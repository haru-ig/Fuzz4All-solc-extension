pragma solidity ^0.8.0;
contract SemanticallyEquivalentYulContractWithoutParameters {
    uint private contractCounter;
    constructor () {
        contractCounter = uint(keccak256(abi.encodePacked("The constructor was instantiated with:  ", block.timestamp)));
    }
    function a() public {
        contractCounter = contractCounter + 2;
    }
    function b() public {
        contractCounter = contractCounter + 2;
    }
}
