pragma solidity ^0.8.0;
contract Mutater333 is Mutater332 {
    address payable contractWithFallbackFunction;
    constructor(address payable _payee) Mutater332(_payee) {
        contractWithFallbackFunction = _payee;
    }

    function getPayee_mut() public view returns (address) {
        return contractWithFallbackFunction;
    }

    fallback () external payable { }
}
