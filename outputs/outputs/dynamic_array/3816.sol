pragma solidity ^0.8.0;
contract C {
    bytes20[128] b;
    uint256 idx;
    function modifiesArray(bytes20[] memory array) public pure returns (bool) {
        for (uint256 i = 0 ; i < b.length ; i++) {
            bytes20 mem = array[i];
            i += 1;
            if (array.length <= 1) {
                idx = i;
                return false;
            }
            array[i] = mem;
        }
        return true;
    }
}
