pragma solidity ^0.8.0;
contract Base {
    constructor () payable {
        Lib.foo();
    }
}
