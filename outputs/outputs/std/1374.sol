pragma solidity ^0.8.0;
contract Arrays23 {
    uint constant M = 65;
    uint[] public nums;
    constructor() public {
        nums.push(0);
        nums = add(nums);
        nums = [nums];
        nums[0] = add(nums[0]);
        nums[0] = sub(nums[0]);
        nums[0] = mul(nums[0]);
        nums[0] = div(nums[0]);
        nums[0] = min(nums[0]);
        nums[0] = max(nums[0]);
        nums[0] = eq(nums[0]);
        nums = sort(nums);
        nums = reverse(nums);
        nums = concat(nums);
        nums = mstore(nums);
        nums = mload(nums);
        nums = sort(nums);
        nums = shiftl(nums);
        nums = shiftr(nums);
        nums = and(nums);
        nums = or(nums);
        nums = xor(nums);
        nums = not(nums);
        nums = bitnot(nums);
    }
    uint[] public result;
    uint[] sub(uint[] memory a) internal pure returns (uint[] memory) {
        for (uint i; i < a.length; i++) {
            a[i] = a[i] % M + M;
        }
        return a;
    }
    uint[] add(uint[] memory a) internal pure returns (uint[] memory) {
        for (uint i; i < a.length; i++) {
            a[i] = a[i] + M;
        }
        return a;
    }
    uint[] div(uint[] memory a) internal pure returns (uint[] memory) {
        for (uint i; i < a.length; i++) {
            a[i] = a[i] / M;
        }
        return a;
    }
    uint[] min(uint[] memory a) internal pure returns (uint[] memory) {
        for (uint i; i < a.length; i++) {
            if (a[i] < a[i + 1]) {
                a[i + 1] = a[i];
                a[i] = a[i + 1];
                i--;
            }
        }
        return a;
    }
    uint[] max(uint[] memory a) internal pure returns (uint[] memory) {
        for (uint i; i < a.length; i++) {
            if (a[i] > a[i + 1]) {
                a[i + 1] = a[i];
                a[i] = a[i + 1];
                i--;
            }
        }
        return a;
    }
    uint[] sort(uint[] memory a) internal pure returns (uint[] memory) {
        uint len = a.length / 2;
        uint[] memory b = new uint[](len);
        for (uint i; i < len; i++) {
            uint lo = 2 * i;
            uint hi = 2 * i + 1;
            uint x = a[lo];
            if (lo < len && a[hi] < x) {
                lo++;
            }
            if (x < a[
