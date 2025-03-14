pragma solidity ^0.8.0;
contract Arrays3 {
    uint[] nums;
    uint[][] nums2;
    uint[] nums4;
    uint[][] nums5;
    uint256 constant S = 87;
    uint constant S2 = 10;
    uint[] nums_2;
    function modMul(uint[] memory nums, uint[][] memory nums2) public pure returns (uint) {
        uint[] memory result = new uint[](nums.length + nums2.length);
        uint carry = 0;
        for (uint i = nums.length - 1; i > -1; i--) {
            result[i + nums.length] = ((nums[i] * nums2[nums.length - i - 1] + carry) % ((uint256(1) << (32 + S2)) - 1)) + carry;
            carry = ((nums[i] * nums2[nums.length - i - 1] + carry) / ((uint256(1) << S) - 1)) + carry;
        }
        for (uint i = 0; i < nums.length; i++) {
            result[i] *= nums2[i][nums.length + num4.length - i - 1];
        }
        return result[nums.length];
    }
}
