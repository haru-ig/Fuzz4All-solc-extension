pragma solidity ^0.8.0;
contract FunctionalEquivalence_StoredArrayAndCalldataAssignment_2 {
    function test() public {
        uint256[] memory arr1 = new uint256[](3);
        arr1[0] = 0;
        arr1[1] = 0;
        arr1[2] = 0;
        arr1.length = 2;
        set(arr1, 0, 0);
        set(arr1, 2, 0xFFFFFFFFFFFFFFF);
        arr1.length=arr1.length+2;
        set(arr1, 2, 0xFFFFFFFFFFFFFFF);
        require(arr1[0]==0);
        require(arr1[1]==0);
        require(arr1[2]==0xFFFFFFFFFFFFFFF);
    }
    function set(uint256[] memory arr, uint256 idx, uint256 val) internal {
        arr[idx] = val;
    }
}
