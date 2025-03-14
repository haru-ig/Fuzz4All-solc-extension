pragma solidity ^0.8.0;
contract Mutator {
    address target;
    constructor(address sender) payable {
        target = payable(address(this));
    }
}
