pragma solidity ^0.8.0;
contract C {
    bytes20[] public b1;
    bytes20[] public b2;
    function mutatesArray(uint256 length, bytes20[] memory array1) public pure returns (bool) {
        for(uint256 i = length-1 ; i >0 ; i--) {
            array1[i] = bytes20(0);
        }

    }
    function modifiesArray(uint256 length, bytes20 memory[] memory array2) public pure returns (bool) {
        for(uint256 i = length-1 ; i >0 ; i--) {
            array2[i] = bytes20(0);
        }

    }
}
