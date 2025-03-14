pragma solidity ^0.8.0;
contract Caller {
    address payable payee;
    receive() external payable {}
    constructor() {}
}
