pragma solidity ^0.8.0;
contract MutatingContract {
    MutatingContract public mutators;
    uint256 public array;
    constructor() {
        mutators = new MutatingContract();
    }
    function callMutators() public {
        array = mutators.incArray();
    }
}
