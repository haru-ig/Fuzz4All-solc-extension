pragma solidity ^0.8.0;
mapping(address => mapping (address => uint)) public balances;
contract FallbackExample2{
    constructor() {
        balances[msg.sender][address(this)] += 4;
    }
    fallback() payable external {
        balances[msg.sender][address(this)] += 0xda0;
    }
}
