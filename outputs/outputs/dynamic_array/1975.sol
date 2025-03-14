pragma solidity ^0.8.0;
contract FunctionalEquivalence_NestedDynamicallySizedArrayAssignment_8 {
    mapping(uint256=>uint256[]) internal s;
    uint public a;
    constructor() public {
        s[0] = new uint256[](5 + 1);
        s[0][s[0].length] = 1;
        s[0][s[0].length + 1] = 2;
        s[0][s[0].length + 1] = 3;
        a = 5 + 1;
        s[1] = new uint256[](a + 1);
        s[1][s[1].length] = 4;
        s[2] = new uint256[](a);
        s[2][s[2].length] = 5;
    }
}
