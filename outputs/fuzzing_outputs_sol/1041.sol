pragma solidity ^0.8.0;
contract Seller {
    address payable receiver;
    constructor() public {
        receiver = msg.sender;
    }
    fallback() public {
        if (msg.value > 0){
            receiver.transfer(msg.value);
        }
    }
    receive() external pure {}
    receive() external {
    }
    receive() external payable {}
    receive() external {
    }
    receive() external{
    }
    receive() external payable {
    }
}
