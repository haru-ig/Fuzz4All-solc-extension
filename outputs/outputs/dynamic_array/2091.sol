pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment_6_2
{
    struct Struct{
        uint256 idx;
        uint256 val;
        uint256 val2;
        Contracts.FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment_1 _1;
    }
    Struct[] public arr;
    constructor() public {
        Struct s = Struct({ idx : 0, val : 0, val2 : 0, _1 : Contracts.FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment_2()});
        arr.push(s);
        for (uint256 i = 0; i < 100; i++) {
            s = Struct({idx : i, val : i, val2 : 0, _1 : Contracts.FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment_1()});
            if (i!= 0) s.val2 = arr[i-1].val+s.val;
            arr.push(s);
        }
        Struct memory s1 = Struct({ idx : 1, val : 0x123, val2 : 0, _1 : Contracts.FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment_2()});
        arr.append(s1);
    }
    function get() internal view returns(uint256) {
        return arr[arr.length-1].val;
    }
    function set(uint256[] memory arr, uint256 idx, uint256 val) internal returns(uint256) {
        return arr[idx].val;
    }
}
