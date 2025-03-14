pragma solidity ^0.8.0;
contract FallbackMutator is Mutator {
    constructor() Mutator(msg.sender) { }
    function execute() external payable {
        sendValueTo(address(this), msg.value);
    }
}
