pragma solidity ^0.8.0;
contract SemiMutatedFallbackExample {
    address payable payee;
    receive() external payable {}
    constructor() {}
}
