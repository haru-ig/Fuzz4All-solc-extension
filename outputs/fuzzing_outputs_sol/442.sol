pragma solidity ^0.8.0;
contract Mutator {
    address payable receiver;

    constructor() {
        receiver = msg.value;
    }

    function payE() public payable {
        receiver.transfer(msg.value);
    }
}
