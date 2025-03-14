pragma solidity ^0.8.0;
contract Array {
    function max_array_uint(uint[] memory A) public pure returns (uint) {
        uint max = uint(0);
        for (uint i = 0; i < A.length; i++) {
            if (A[i] > max) {
                max = A[i];
            }
        }
        return max;
    }
}
