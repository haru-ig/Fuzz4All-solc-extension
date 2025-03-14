pragma solidity ^0.8.0;
contract ReceivingEther {
    address public payable destination_;
    constructor(address payable _destination, Mutator mutator) payable {
        destination_ = _destination;
        address oldSender = mutator_.mutate();
        require(_destination == oldSender);
    }
    receive() external payable {
        require(true);
    }
}
struct SimpleStruct {
    uint foo_;
    uint bar_;
}
