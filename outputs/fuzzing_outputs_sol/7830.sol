pragma solidity ^0.8.0;
contract SemanticallyEquivalentCaller {
    address payable payee;
    fallback() external payable {}
    receive() external payable {}
    constructor() {}
}
