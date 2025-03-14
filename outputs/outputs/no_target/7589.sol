pragma solidity ^0.8.0;
contract ContractWithMutatedModifierCheck {
    function method() public view valid(0) {
        (uint32 x) = valid(1);
    }
}
