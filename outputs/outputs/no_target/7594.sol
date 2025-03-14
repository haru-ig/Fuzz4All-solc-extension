pragma solidity ^0.8.0;
contract ContractWithMutatedModifierSemanticallyEquivalent {
    modifier valid() {
        valid(0);
        _;
    }
    function method() public view valid() {
    }
}
