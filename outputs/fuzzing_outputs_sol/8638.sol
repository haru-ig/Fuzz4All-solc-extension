pragma solidity ^0.8.0;

contract Mutator {
    mapping(address => uint256) public amounts;
    mutator[address] public Mutator;
    receive() external payable {
        amounts[msg.sender] += msg.value;
    }
}

pragma solidity >=0.6.0;
