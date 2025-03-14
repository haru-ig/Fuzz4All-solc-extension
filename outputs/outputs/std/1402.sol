pragma solidity ^0.8.0;
contract Arrays2 {
    uint M = 87;
    uint[] nums1 = new uint[](M);
    uint[][] nums2;
    uint[][] nums3;
    uint[][] nums4;

    function MutateArrays() public {
        nums2 = new uint[M + 1][M * 2 + 1];
    }

    function Mutate() public {}
}
