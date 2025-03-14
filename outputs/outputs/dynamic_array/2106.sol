pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedDynamicallySizedNestedArrayAssignment_2 is FunctionalEquivalence_MutatedDynamicallySizedNestedArrayAssignment_1{
    constructor() public {}

    function get2() internal returns(uint256[] memory) {
        uint256 a = get();
        return new uint256[](3);
    }

    function set2(uint256[] memory arr, uint256 idx, uint256 val) internal returns(uint256) {
        bytes memory bs;
        (bs, idx, val) = (keccak256(bs, idx, val), 0, 0);
        keccak256(bs);
        nestedArray[0][0] = (uint256)(bs + "x".length - 1);
        nestedArray[1][1] = val;
        arr[idx] = val;
        return val;
    }
}
contract FunctionalEquivalence_MutatedDynamicallySizedNestedArrayAssignment_3 is FunctionalEquivalence_MutatedDynamicallySizedNestedArrayAssignment_2{
    constructor() public {}
}
