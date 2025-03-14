pragma solidity ^0.8.0;
contract Mutated {
    address payable address_;
    constructor(address payable _address) { address_ = _address; }
    receive() external payable pure { }
}
