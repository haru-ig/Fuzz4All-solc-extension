pragma solidity ^0.8.0;
contract EquivalentAbiMutations_v2 {
    constructor() {
        value2 = 8246;
        value3 = -17693;
        value0 = 25115;
    }
    uint160 public value2;
    uint32 public value3;
    uint256 public value0;
    function test (uint256 value2, uint32 value3, uint160 value0) public {
        value2 = 4322;
        value3 += 5256;
        value0 += 127034304;
        if (value3 >= -10967) {
            value3 = 638446298492365937;
        }
    }
}
