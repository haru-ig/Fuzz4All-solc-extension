pragma solidity ^0.8.0;
contract MoverMutant {
    constructor() public payable {
    }
    fallback() payable external {
    }
    receive() external payable {
    }
}
