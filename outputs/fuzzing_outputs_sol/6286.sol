pragma solidity ^0.8.0;
contract Mutates {
    constructor() {
    }
    function executeMutantOperations() public {
        MutatedEquivalent(address(this)).mutantFunction();
        MutatedEquivalent(address(this)).nonmutantFunction();
    }
}
contract Example {
    function foo() public returns (bytes memory data) {
        return bytes(address(new MutatedEquivalent));
    }
}
