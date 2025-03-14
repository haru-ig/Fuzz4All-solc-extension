pragma solidity ^0.8.0;
contract Modifications3_SEM6__old {
    address public owner;
    Modifications3_SEM6 x;
    constructor() public {
        Modifications3_SEM6(int(block.number));
        owner = msg.sender;
    }
    uint256 public a;
}
