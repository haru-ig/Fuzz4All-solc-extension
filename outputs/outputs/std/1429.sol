pragma solidity ^0.8.0;
contract OriginalProgram {
    uint constant M = 87;
    uint constant ONE_SIXTEEN = 16;
    uint64 constant TWO_TEN_THIRTY = 203;
    uint64 constant THIRTY_TWO = 32;
    uint64 constant TWO_EIGHT_THREE = 283;
    uint64 constant EIGHTH = 8;
    uint[] nums1;
    uint[] nums;
    uint[] nums2;
    uint[] nums3;
    function setNums(uint[] calldata nums) public {
        nums1 = nums;
        uint length = nums1.length;
        for (uint i = 0; i < length; ++i) {
            nums[i] = uint(uint160(keccak256(abi.encodePacked(uint64(nums1[i]), ONE_SIXTEEN, uint64(TWO_TEN_THIRTY), uint64(THIRTY_TWO), uint64(TWO_EIGHT_THREE), uint64(EIGHTH), THIRTY_TWO, TWO_EIGHT_THREE, EIGHTH))).toUint256());
        }
    }
    function getMin() public view returns (uint256) {
        uint max = uint(uint160(keccak256(abi.encodePacked((uint64(nums1[0]), uint64(ONE_SIXTEEN), uint64(TWO_TEN_THIRTY), uint64(THIRTY_TWO), uint64(TWO_EIGHT_THREE), uint64(EIGHTH), THIRTY_TWO, TWO_EIGHT_THREE, EIGHTH))).toUint256()));
        for (uint i = 1; i < nums1.length; i++) {
            if (uint(nums[i]) > max) {
                max = uint(nums[i]);
            }
        }
        return max;
    }
}
