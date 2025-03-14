pragma solidity ^0.8.0;
contract SimpleCaller {
    address payable payee;
    receive() external payable {}
    constructor() {}
}
