pragma solidity ^0.8.0;
contract Mutator {
    constructor(address foo) {
        foo;
    }
    fallback() external {
        selfdestruct(foo);
    }
    uint public foo;
}
