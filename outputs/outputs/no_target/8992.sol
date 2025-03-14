pragma solidity ^0.8.0;
contract SemanticallyEquivalentMutations_v20 {
    uint160 public value;
    uint32 public value2;
    uint256 public value3;
    uint160 public value_v20;
    function equivalent() public {
        uint160 otherValue2 = otherValue2_v20(0);
        uint160 otherValue3 = otherValue3_v20(0);
        uint160 otherValue_v20 = otherValue_v20_v20(0);
        value = otherValue2_v20(value2 + otherValue2);
        value2 = otherValue_v20(value_v20_v20(value2));
        value3 = otherValue3_v20(value3 + otherValue2);
        value_v20 = otherValue_v20(value3);
    }
    function otherValue2_v20(uint value2) public pure virtual returns (uint) {
        return value2 + 2;
    }
    function otherValue3_v20(uint value3) public pure virtual returns (uint) {
        uint otherValue_v20 = value3 + 2;
        return otherValue_v20 - 3;
    }
    function otherValue_v20_v20(uint value_v20) public pure virtual returns (uint) {
        return value_v20 + 3;
    }
    function value_v20_v20(uint value_v20) public pure virtual returns (uint) {
        return value_v20 - 2;
    }
}
