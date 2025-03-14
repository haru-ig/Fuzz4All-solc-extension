pragma solidity ^0.8.0;
contract ArrayModification {
    uint constant SIZE = 4;
    uint[] nums1;
    uint[] nums;
    uint[] nums2;
    uint[] nums3;
    string[] words;
    function setNums(uint[] calldata nums) public {
        nums1 = nums;
    }
    function getMin() public view returns (uint256) {
        uint max = nums1[0];
        for (uint i = 1; i < nums1.length; i++) {
            if (nums1[i] > max) {
                max = nums1[i];
            }
        }
        return max;
    }
}

pragma solidity ^0.8.0;
contract Random {

    uint256 constant N = 100;
    uint256[] memory rngs;
    uint256[] memory randomNums;
    uint256 constant R = 16;
    uint256 constant W256 = 2**256;
    uint256 constant N256 = 2**256-1;
    function seed() public {
        rngs = new uint256[](N);
        randomNums = new uint256[](N);
    }
    function seedBytes(bytes calldata bytesSeed) public {
        uint256 seed = keccak256(abi.encodePacked(bytesSeed));
        rngs = new uint256[](N);
        randomNums = new uint256[](N);
        uint256 idx = 0;
        for (uint16 i = 0; i < bytesSeed.length; i++) {
            rngs[ idx ] = seed & N256;
            seed >>= 8;
            idx++;
        }
    }
    function rng() public view returns (uint256) {
        uint256 rand = uint256(keccak256(abi.encodePacked(now)));
        uint256 idx = rand % N;
        return rngs[idx];
    }
    function randomNum() public view returns (uint256) {
        uint256 idx = rng() % N;
        return randomNums[idx];
    }
}
