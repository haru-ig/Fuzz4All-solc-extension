pragma solidity ^0.8.0;
contract Arrays2 {
    uint constant M = 87;
    uint nums1;
    uint [[[nums2]]] nums2;
    uint[][] nums3;
    uint[][] [[[[nums4]]]]] nums4;
    function setNums(uint val) public {
        nums1 = val;
        nums2[0][0] = val;
        nums2[0][1] = val;
        nums2[1][0] = val;
        nums2[1][1] = val;
        nums3[0][0][0] = val;
        nums3[0][0][1] = val;
        nums3[0][1][0] = val;
        nums3[0][1][1] = val;
        nums3[1][0][0] = val;
        nums3[1][0][1] = val;
        nums3[1][1][0] = val;
        nums3[1][1][1] = val;
        nums4[0][0][0] = val;
        nums4[0][0][1] = val;
        nums4[0][1][0] = val;
        nums4[0][1][1] = val;
        nums4[1][0][0] = val;
        nums4[1][0][1] = val;
        nums4[1][1][0] = val;
        nums4[1][1][1] = val;
    }
    function getnums() public view returns (uint) {
        return nums1;
    }
}
