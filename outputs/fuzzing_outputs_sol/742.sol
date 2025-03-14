pragma solidity ^0.8.0;
contract Caller {
    address payable public receiver;
    constructor(address payable _receiver) public {
        receiver = _receiver;
    }
    receive() external payable {
        receiver.transfer(msg.value);
    }
}
