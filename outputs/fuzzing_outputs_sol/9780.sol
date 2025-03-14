pragma solidity ^0.8.0;
contract Mutated {
    constructor(address _to) {
       msg.sender == _to;
    }
    receive() external payable { }
}
