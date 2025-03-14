pragma solidity ^0.8.0;
contract Mutator {
    Mutater332 public mutated;

    constructor(Mutater332 _mutated) {
        mutated = _mutated;
    }
    function setPayee(address _payee) public {
        mutated.setPayee(_payee);
    }
}
