pragma solidity ^0.8.0;
contract SemanticallyEquivalent {
    constructor() {
        fieldFixed1.member1 = 0;
        fieldFixed1.member2 = 0;
    }
    function SemanticallyEquivalent( uint256 member1, uint member2 ) public returns(uint256) {
        fieldFixed1.member1 = member1;
        fieldFixed1.member2 = member2;
        return fieldFixed1.member1;
    }
}
contract UseDynamicArrays {
    function main() public returns(uint256) {
        SemanticallyEquivalent memory s = SemanticallyEquivalent(1, 2);
        uint256 x = s.SemanticallyEquivalent(1, 2);
        uint256 result = s.SemanticallyEquivalent(1, 3);
        return result;
    }
}
