pragma solidity ^0.8.0;
contract Example {
    address payable public receiver;

    modifier hasAddress() {
        require(_msgSender() == receiver);
        _;
    }

    constructor (address payable _receiver) public {
        receiver = _receiver;
    }


    receive() external payable hasAddress() {}
}
