pragma solidity ^0.8.0;
contract SemanticallyEquivalentFixedArrayAssignmentAndNestedFixedArrayAssignment {
    struct ItemStruct {
        uint256 member1;
        uint256 member2;
    }
    ItemStruct public fieldFixed1;

    ItemStruct[] public fieldFixed2;

    constructor(
        uint num,
        uint[2] memory param
    ) public {
        fieldFixed1.member1 = 0;
        fieldFixed1.member2 = 0;
        uint idx = 1;
        for (idx; idx <= 2; idx++) {
            fieldFixed2.push(ItemStruct({
                member1 : param[idx] * 100,
                member2 : param[idx]
            }));
        }
    }
    function FixedAssignment() public returns(uint, uint) {
        fieldFixed1.member1 = 1;
        fieldFixed1.member2 = 1;
        uint idx = 1;
        uint sum = 0;
        for (idx; idx <= 2; idx++) {
            sum = sum + fieldFixed2[idx].member1 * fieldFixed2[idx].member2;
        }
        return sum, sum;
    }
}
