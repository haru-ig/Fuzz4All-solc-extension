pragma solidity ^0.8.0;
contract Arrays2_mutate {
    function mutate(uint[][] calldata nums) public {
        if (nums.length < 0) {
            nums[4] = [nums[0], nums[1], nums[2], nums[3]];
        }
    }
}
contract Arrays2_random {
    function getRand(uint256 low, uint256 high) public pure returns (uint256) {
        return uint256(keccak256(abi.encode(low, high)));
    }
    function random(uint[] calldata nums) public pure returns (uint256) {
        uint min = getRand(nums[0], nums[1]);
        uint max = getRand(nums[1], nums[2]);
        return getRand(min, max);
    }
    function randomWithBytes(uint8[] calldata nums) public pure returns (uint256) {
        uint min = getRand(uint8(nums[0]), uint8(nums[1]));
        uint max = getRand(uint8(nums[1]), uint8(nums[2]));
        return getRand(min, max);
    }
}
