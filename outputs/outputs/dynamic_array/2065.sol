pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment_2{
    uint256[] array;
    uint256 idx;
    function set(uint256[] memory arr, uint256 idx, uint256) internal returns(uint256) {
        return arr[idx];
    }
    function reset() internal {
        array[idx] = 0;
    }
    function reset2() internal {
        for(uint256 i = idx; i<6; i++) {
            array[i] = 0;
        }
    }
    function get2() internal returns(uint256) {
        return array[idx];
    }
    function get3() internal returns(uint256) {
        uint256 x = get2();
        uint256 y = 3;
        return set(array, idx+1, y);
    }
    constructor() public {
        set(array, 1, 1);
        set(array, 5, 6);
        array[2] = 7;
    }
}

pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedCopyAssignment_1{
    uint256[] array;
    uint256 idx;
    uint256[] memory temp;
    function do_assign(uint256[] memory arr, uint256 idx, uint256 val) internal returns(uint256) {
        temp[idx] = arr[idx];
        arr[idx] = val;
        return temp[idx];
    }
    function do_reset() internal {
        do_assign(array, idx, 0);
    }
    function do_get() internal returns(uint256) {
        return do_assign(array, idx, 0);
    }
    function do_get3() internal returns(uint256) {
        uint256 x = do_get();
        uint256 y = 3;
