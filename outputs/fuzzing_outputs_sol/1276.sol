pragma solidity ^0.8.0;
contract ModifierEquivalence {
        function aFunction() external pure {
        }
        modifier aModifier() {
                uint a = 1;
                aFunction();
                uint b = 2;
                aFunction();
                bytes memory aB; aB; aFunction();
                bool a_; a_; aFunction();
                bytes32 aB_; aB_; aFunction();
                address a_; a_; aFunction();
        }
}
