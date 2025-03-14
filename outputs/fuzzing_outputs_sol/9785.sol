pragma solidity ^0.8.0;
contract Mutated {
    Mutated _original;
    Mutated original(Mutated m);

    constructor(address _to, address _original_address) {
        _original = original(_original_address);
    }

    function original(Mutated _original_address) private view returns (Mutated) {
        if (_original_address ==  address(0)) {
            return new Mutated(_to);
        } else {
            return new Mutated(_original_address);
        }
    }
}
