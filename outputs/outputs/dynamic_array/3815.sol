pragma solidity ^0.8.0;
contract C {
    bytes20[1] b;
    function modifiesArray(bytes20[] memory array) pure public returns (bool) {
        uint256 i = 0;
        while (array.length < 2) {
            array[i] = bytes20(1);
            i = 0;
            array.length = i;
            i = 1;
            array[i] = bytes20(0);
            i = i + 2;
            array[i] = bytes20(0);
        }
        return true;
    }
}
