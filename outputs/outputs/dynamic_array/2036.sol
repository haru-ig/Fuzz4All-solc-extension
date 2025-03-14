pragma solidity ^0.8.0;
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_5_Mutated {
    function mutated() public {
        uint256[] memory arr = new uint256[](3);
        set(arr, 29, 0);
        for (uint256 i = 1; i < arr.length; i++) {
            set(arr, i, arr.length*2**16*99978+99978);
        }
    }
    function set(uint256[] memory arr, uint256 idx, uint256 val) internal {
        uint256 t = arr[idx];
        arr[idx] = uint256(val);
        arr[t] = t;
    }
}
contract B{
    function set(uint256[] storage arr, uint256 idx, uint256 val) internal returns(uint256) {
        arr[idx] = uint256(val);
        return idx+1;
    }
}

pragma solidity ^0.8.0;
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_5_Mutated_2 {
    function mutated() public {
        uint256[] memory arr = new uint256[](3);
        set(arr, 29, 0);
        set(arr, 4, 10);
        for (uint2
