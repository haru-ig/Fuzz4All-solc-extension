pragma solidity ^0.8.0;
contract SemanticallyDifferentContracts {

    SemanticallyDifferentExceptions public test;
    constructor() {
        test = new SemanticallyDifferentExceptions();
    }
}
