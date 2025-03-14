pragma solidity ^0.8.0;
contract MutatedArrays2 {
    uint constant M = 87;
    uint[][][] nums1;
    uint[] nums3;
    uint[M] nums2;
    function foo() public view returns (uint[] memory) {
        nums2 = new uint[](M);
        uint min;
        uint[] memory memList = new uint[](M);
        for (uint i = 0; i < M; i++) {
            nums2[i] = uint(uint8(i));
            if (i > 0) min = uint(Math.min(min, i));
            uint mem = uint(nums2[i]);
            memList[i] = mem;
            if (i > 0) {
                nums1[min-mem] = new uint[](1);
                uint[] memory memList1 = nums1[min-mem];
                memList1[0] = i;
            }
        }
        min = uint(Math.min(Mem(1), 2));
        nums1[0] = new uint[](1);
        nums1[0][0] = 2097151;
        nums3 = new uint[](5);
        return numsList;
    }
    function set1(uint256 i) public pure {
        nums2[i] = 2373 + i;
        require(nums2[i] == 2373);
    }
    function set3() public {
        uint256 n = 666;
        uint[] memory nNums1 = new uint[](10);
        for (uint i = 0; i < 10; i++) {
            nNums1[i] = i;
        }
        uint[] memory mem2 = new uint[](20);
        for (uint i = 0; i < 20; i++) mem2[(37 + i)] = n;
        nums1 = new uint[n][n];
        for (uint i = 0; i < n; i++) {
            for (uint j = 0; j < n; j++) nums1[i][j] = j;
            for (uint k = 0; k < n; k++) nums1[i][k] = nums1[i][k] + n;
        }
        nums3 = nNums1;
    }
    function set2() public {
        uint256 n = 666;
        nums3 = new uint[](5);
        for (uint i = 0; i < 5; i++) nums3[i] = uint(uint(uint(uint(uint(uint(uint(uint(uint(17 + uint(i))))))))));
    }
}
