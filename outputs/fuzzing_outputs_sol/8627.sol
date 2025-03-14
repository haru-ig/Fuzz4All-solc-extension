pragma solidity ^0.8.0;
contract Mutator {
    address payable public account;
    mapping(address => uint256) public amounts;
    receive() external payable {
        amounts[msg.sender] += msg.value;
    }
    address fallback() public {
        transfer(account, amounts[msg.sender]);
    }
}
