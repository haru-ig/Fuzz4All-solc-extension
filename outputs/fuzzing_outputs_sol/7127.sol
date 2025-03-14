pragma solidity ^0.8.0;
import "./Example.sol";
contract Example2 is Example{
    constructor() public{
        addr = payable(msg.sender);
    }
}
