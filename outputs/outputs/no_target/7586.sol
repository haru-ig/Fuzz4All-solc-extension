pragma solidity ^0.8.0;
contract ContractWithMutatedModifierCheck {
    modifier valid(uint32 input) {
        input;
    }
    function method() public view valid(0) {
    }
}
