pragma solidity ^0.8.0;
contract Test{
    constructor() public payable{}
    receive() external payable payable{}
    fallback() public {
    }
}
