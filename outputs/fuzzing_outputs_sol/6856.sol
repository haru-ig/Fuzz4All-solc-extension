pragma solidity ^0.8.0;
contract Mutator {
    address payable target;
    constructor() view payable {
        target = new address[](0);
    }
}
