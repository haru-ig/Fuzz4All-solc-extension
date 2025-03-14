pragma solidity ^0.8.0;
contract Mutator {
    mapping(address payable => uint256) public amounts;
    fallback () external payable {
        amounts[msg.sender] += msg.value;
    }
}
