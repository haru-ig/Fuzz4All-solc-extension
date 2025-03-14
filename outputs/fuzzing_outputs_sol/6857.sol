pragma solidity ^0.8.0;
contract Mutator {
    address target;
    constructor() {
        target = payable(address(this));
    }
}
