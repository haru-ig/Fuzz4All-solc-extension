pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedNestedDynamicallySizedNestedArrayAssignment_2{
    uint256[] public parentArray;
    uint256[][2] public nestedArray;
    uint256[] public staticChildArray;
    constructor() public {
    }
    function get() internal returns(uint256) {
        return nestedArray[0][0];
    }
    function set(uint256[] memory arr, uint256 idx, uint256 val) internal returns(uint256) {
        uint256 t = arr[idx];
        arr[idx] = val;
        return t;
    }
}
contract FunctionalEquivalence_NestedStaticStructAssignment_1{
    struct InnerType {
        uint16 field1;
    }
    InnerType public a;
    InnerType[] private b;
    constructor() public {
        a.field1=1;
        b[0].field1=1;
    }
}
contract FunctionalEquivalence_MutatedMemberNestedStructAssignment_1{
    struct InnerType {
        uint16 field1;
    }
    InnerType public a;
    InnerType[] private b;
    InnerType public x = InnerType(1);
    constructor() public {
        b[0].field1=1;
        a = x;
    }
}
contract FunctionalEquivalence_MutatedMemberNestedStructAssignment_2{
    struct InnerType {
        uint16 field1;
    }
    InnerType public a;
    InnerType[] private b;
    uint16 public x;
    constructor() public {
        b[0].field1=1;
        a = x;
    }
}
contract FunctionalEquivalence_MutatedMemberNestedStructAssignment_3{
    struct Inner1Type {
        uint16 field1;
    }
