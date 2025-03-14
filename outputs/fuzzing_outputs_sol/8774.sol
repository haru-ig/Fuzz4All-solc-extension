pragma solidity ^0.8.0;
contract TestCaller2 {
    uint public constant value = 9;
    constructor() {require(value > 0);}
    fallback() public pure { }
    receive() payable {}
}
