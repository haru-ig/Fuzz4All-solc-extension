pragma solidity ^0.8.0;
contract SemanticallyEquivalentMultiarrayWithAssignmentWithMutation {
    uint16 [] public fieldMulti;
    constructor() public {
    fieldMulti = new uint16[](3);
    fieldMulti[0] = 1;
    fieldMulti[1] = 0;
    fieldMulti[2] = 2;
    }
    function MultiArrayAssignmentWithMutation() public {fieldMulti[1] += 1;}
}
