pragma solidity ^0.8.0;
contract SemanticallyEquivalentDynamicarrayWithoutAssignment {
    uint[] public fieldDynamic;
    constructor() public {
        fieldDynamic = new uint[](3);
        fieldDynamic[0] = 0;
        fieldDynamic[1] = 1;
        fieldDynamic[2] = 2;
    }
    function DynamicArrayWithoutAssignment() public returns(uint) {
        fieldDynamic = new uint[](3);
        fieldDynamic[0] = 0;
        fieldDynamic[1] = 1;
        fieldDynamic[2] = 2;
        return fieldDynamic[0];
    }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalentDynamicarraywithNested {
    uint[] public fieldDynamic;
    uint[] public fieldDynamicNested;
    uint public fieldNested;
    constructor() public {
        fieldDynamic.push(0);
        fieldDynamic.push(1);
        fieldDynamicNested = new uint[](2);
        fieldDynamicNested[0] = 2;
        fieldDynamicNested[1] = 3;
        fieldNested = 4;
    }
    function DynamicArraywithNested() public returns(uint) {
        fieldNested = 5;
        uint memory z = 0x555555555555555555555555555000000000000000000000000000000000000000000000000000000000000000000000000;
        fieldDynamicNested[0] = 0;
        fieldDynamicNested[1] = 1;
        fieldDynamic.push(2);
        fieldDynamic.push(3);
        delete fieldDynamicNested[0];
        delete fieldDynamicNested[0];
        delete fieldDynamic[1];
        delete fieldStatic[0];
        delete fieldStatic[1];
        return fieldDynamic[0] * fieldNested + 2 * (fieldDynamic[1] + fieldDynamic[0] * fieldNested + fieldDynamic[0] * fieldStatic[1]);
    }
}
