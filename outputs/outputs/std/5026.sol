pragma solidity ^0.8.0;
contract Equivalent {
    uint256[33] public arr;
    function add(uint256 x, uint256 y) public pure {
        if (x > 0) {
            arr[0] = x;
            arr[1] = y;
            for (uint i = 0; i < 32; i++) {
                arr[i + 2] = arr[i] + arr[i + 1];
            }
        }
    }
}
