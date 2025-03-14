pragma solidity ^0.8.0;
contract SemanticallyEquivalentMutated {
    bytes32 internal state = "semanticallyEquivalentMutated";

    function semanticallyEquivalent() public { state = "semanticallyEquivalent"; }
}
