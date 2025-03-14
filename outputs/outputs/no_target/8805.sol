pragma solidity ^0.8.0;
contract MutatedAndOldNonEquivalentSemanticAreEquivilentMutated {
    event Mint (uint oldAmount_, uint newValue_);
    function mintA (uint oldAmount_) public {
        emit Mint(oldAmount_, oldAmount_*2);
    }
}
