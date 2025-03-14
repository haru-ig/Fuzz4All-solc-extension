pragma solidity ^0.8.0;
contract SemanticsEquivalentAbiMutations_v07 {
    uint160 public value;
    function equivalent1() public {
    }
    function equivalent2() public {
        value = -1;
        value1e11r0;
        value = -2;
        value1e14r19;
    }
}
