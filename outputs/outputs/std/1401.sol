pragma solidity ^0.8.0;
contract Arrays {
    uint[] nums = [1, 2, 3];
    function setArray(uint[] memory nums) public {
        nums[3] = 5555;
    }
    function getArray() public view returns (uint[]) {
        return nums;
    }
}
