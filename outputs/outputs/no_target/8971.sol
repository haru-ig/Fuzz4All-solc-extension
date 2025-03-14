pragma solidity ^0.8.0;
contract EquivalentAbiMutations_v2_Modded {
    uint160 private value2;
    uint32 private value3;
    uint256 public value0;
    event LogChanged(uint256 newValue0, uint256 value0);
    function test (uint256 value2, uint32 value3, uint160 value0) public {

        require(value0 == value2 + value3 + value2 + value3, "EquivalentAbiMutations_v2_Modded: Equivalent function modifies value");
        if (value3!= -99 && value0 < 100) {

            value0 -= value2 + value3;
        }
    }
     function testMod (uint256 value2, uint32 value3, uint160 value0) public {

        require(value0 == value2 + value3 + value2 + value3, "EquivalentAbiMutations_v2.test: Equivalent function modifies value");
        if (value3!= -99 && value0 < 100) {

            value0 -= value2 + value3;
        }
    }
}
