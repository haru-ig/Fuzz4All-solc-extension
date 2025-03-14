pragma solidity ^0.8.0;
contract Mutator2 {
    uint8 valueUByteMutator2 = 5;
    uint valueUintMutator2 = 100;
    string valueStringMutator2 = "$&";
    bytes32[5] valueBytes32ArrayMutator2;
}

pragma solidity ^0.8.0;
contract Global0  {
    function globalFunc0() public pure {
    }
}

pragma solidity ^0.8.0;
contract MutatorsMutators2 {
    uint8 valueUByteMutatorsMutatorsMutatorsMutator2 = 11;
    uint valueUintMutatorsMutatorsMutator2 = 12;
    string valueStringMutatorsMutatorsMutator2 = "ABC";
    bytes32[5] valueBytes32ArrayMutatorsMutatorsMutator2;
}

pragma solidity ^0.8.0;
contract MutatorsMutatorsMutators2 {
    uint8 valueUByteMutatorsMutatorsMutatorsMutatorsMutatorsMutator1 = 21;
    uint valueUintMutatorsMutatorsMutatorsMutatorsMutatorsMutatorsMutator1 = 22;
    string valueStringMutatorsMutatorsMutatorsMutatorsMutatorsMutatorsMutator1 = "ABC";
    bytes32[5] valueBytes32ArrayMutatorsMutatorsMutatorsMutatorsMutatorsMutatorsMutator1;

     function globalFuncMutatorsMutatorsMutatorsMutator()  public pure returns(uint8, uint, string memory) {
        return (valueUByteMutatorsMutatorsMutatorsMutatorsMutatorsMutator1,
        valueUintMutatorsMutatorsMutatorsMutatorsMutatorsMutatorsMutator1,
        valueStringMutatorsMutatorsMutatorsMutatorsMutatorsMutatorsMutatorsMutator1);
    }

    function globalFuncNonMutatorsMutatorsMutatorsMutators()  public pure returns(uint8, uint) {
        return (valueUByteMutatorsMutatorsMutatorsMutatorsMutatorsMutator1,
        valueUintMutatorsMutatorsMutatorsMutatorsMutatorsMutatorsMutator1,
        valueStringMutatorsMutatorsMutatorsMutatorsMutatorsMutatorsMutator1);
    }


     function globalFuncNonMutatorsMutators()  public pure returns(uint8
