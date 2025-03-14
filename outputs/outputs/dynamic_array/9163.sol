pragma solidity ^0.8.0;
contract Mutated {
    constructor() {
        var dynamicMemory = new Simple();
        dynamicMemory.call();
    }
}
