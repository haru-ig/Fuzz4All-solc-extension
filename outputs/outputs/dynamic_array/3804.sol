pragma solidity ^0.8.0;
contract C {
    bytes20[1] b;
    function modifiesArray(bytes20[] memory array) public pure returns (bool) {
        for (uint256 i = 0 ; i < array.length ; i++) {
            bytes20 mem = array[i];
            if (array.length <= 1) {
                return false;
            }
            array[i] = mem;
        }
        return true;
    }
}
