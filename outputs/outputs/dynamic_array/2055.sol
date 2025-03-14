pragma solidity ^0.8.0;
contract FunctionalEquivalence_ArrayResizingInArrayAssignment_9 {
    uint256[][][24] memory array_of_2D = new uint256[0][0][0];
    function test(uint256 v) public returns (uint256) {
        uint256[] memory arr = new uint256[](24);
        arr[0] = v;
        uint256 res;
        uint256 i;
        for(i = 1; i <= 24; i--) {
            uint256 c = arr[i - 1];
            c = c == 0? 0 : 1 ;
            res += c;
        }
        delete arr[24];
        return res;
    }
}
