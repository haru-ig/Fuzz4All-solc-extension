pragma solidity ^0.8.0;
contract SemanticallyEquivalentFixedarrayWithAssignment {
    uint256[] public fieldFixed;
    uint256 public fieldVariable = 1349;
    function FixedArrayWithAssignment() public returns(uint) {
        fieldFixed.push(0);
        fieldFixed.push(1);
        fieldFixed.push(2);
        return fieldVariable;
    }
}
contract SemanticallyEquivalentDynamicNonFixedarrayWithAssignment {
    uint256[] public fieldDynamicNonFixed;
    function CalldataArrayWithAssignment() public returns(uint) {
        for (uint256 i = 0; i < 10; i++) {
            fieldDynamicNonFixed.push(8);
        }



        return fieldDynamicNonFixed[0];
    }
}

pragma solidity ^0.8.0;
