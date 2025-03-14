pragma solidity ^0.8.0;
contract FallbackExample {
    address payable payee;
    mapping(address => uint256) balances;
    receive() external payable {
        balances[msg.sender] += msg.value;
    }
}
