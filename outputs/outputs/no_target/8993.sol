pragma solidity ^0.8.0;

contract SemanticallyEquivalentAbiMutations {
    uint160 public value;
    uint32 public value2;
    uint256 public value3;
    uint160 public value_v20;
    event EquivalentEvent(uint256 oldNumber, uint256 newNumber, uint256 value);
    constructor(uint256 numberOfInputs) public {
        for (uint256 i = 0; i < numberOfInputs; i++) {
            value_v20 = 0;
            value = address(new SemanticallyEquivalentAbiMutations_v20()).cast(value_v20);
            value2 = address(new SemanticallyEquivalentAbiMutations_v20()).cast(value_v20);
            value3 = address(new SemanticallyEquivalentAbiMutations_v20()).cast(value_v20);
        }
    }
}
