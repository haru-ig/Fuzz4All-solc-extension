pragma solidity ^0.8.0;
contract EquivalentFallbackExample {
    address payable payee;
    address payable[1] calldata payers;
    constructor(address payable _payee) payable {
        payers[0] = _payee;
    }
    receive() external payable {}
}
