pragma solidity ^0.8.0;
contract ContractWithMutatedModifierIncompatible {
    modifier valid(uint32 input) {
        input = input + 2;
        _;
    }
    function method() public valid(0) {
    }
}

pragma solidity ^0.8.0;
contract ContractWithMutatedModifierIncompatible2 is ContractWithMutatedModifierIncompatible{
    modifier valid2(uint32 input) {
        _ = valid(input);
    }
    function method() public valid2(0) {
    }
}
