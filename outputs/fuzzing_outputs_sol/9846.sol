pragma solidity ^0.8.0;
contract Modifying
{
    uint[10] private nums;
    uint[10] private nums1;

    function __Receiving_() external payable {
        nums1[0] = 6;
        nums1[3] = 5;
    }
    function __Receiving_1_() external {
        nums[3] = 7;
        nums[6] = 4;
    }


     function __Receiving_2_() public pure returns (bool) {
        return true;
    }

    function __Receiving_() payable external {
        nums[0] = nums[0] + 1;
        nums[1] = nums[1] + 1;
        nums[2] = nums[2] + 1;
        nums[8] = nums[8] + 1;
        nums[9] = nums[9] + 1;
    }
    function __Receiving_1_() pure external {
        nums1[1] = nums1[1] + 1;
        nums1[2] = nums1[2] + 1;
        nums1[5] = nums1[5] + 1;
        nums1[6] = nums1[6] + 1;
        nums1[7] = nums1[7] + 1;
    }
    function __Receiving_2_() public pure returns (bool) {
        return true;
    }
    function __Receiving_3_() public pure returns (uint) {
        return 4;
    }
}
contract A{
    function __Receiving_() pure external returns (bool){
        return true;
    }

}
