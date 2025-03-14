pragma solidity ^0.8.0;
contract SemanticallyEquivalentAbiMutations_v04 {
    uint160 public value;
    uint32 public value2;
    uint256 public value3;
    uint160 public value_v04;
    function equivalent(uint32 p) public {
    }
}
contract SemanticsNonEquivalentAbiMutations_v05 {
    uint160 public value;
    uint32 public value2;
    uint256 public value3;
    uint160 public value_v05;
    function equivalent(uint256 p) public {
    }
}
