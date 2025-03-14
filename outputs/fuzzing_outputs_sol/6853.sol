pragma solidity ^0.8.0;
contract Mutator {
    address payable target;
    constructor(address sender) payable {
        target = payable(address(this));
        target.transfer(msg.value);
    }
}
