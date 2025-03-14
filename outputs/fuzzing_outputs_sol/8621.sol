pragma solidity ^0.8.0;
contract Mutator {
    mapping(address => uint256) public amounts;
    receive() external payable {
        amounts[msg.sender] += msg.value;
    }
}
