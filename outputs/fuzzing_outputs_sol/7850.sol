pragma solidity ^0.8.0;
contract EquivalentFallbackExample {
    address payable payee;
    constructor() payable {}
    receive message() payable {}
}
