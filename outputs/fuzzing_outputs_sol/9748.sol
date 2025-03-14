pragma solidity ^0.8.0;
contract Mutated {
    address payable receiver;
    constructor (address payable _receiver) {
        receiver = _receiver;
    }

    receive() external payable {}
    fallback() external payable { receiver.transfer(address_.balance); }
}
