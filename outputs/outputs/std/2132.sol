pragma solidity ^0.8.0;
contract Mutated_3_5_0 {
    constructor() public{
        address msgSender = msg.sender;
        address mut mmsgSender = msgSender;
        mmsgSender = address(0);
    }
}
