pragma solidity ^0.8.0;
contract C {
    mapping(uint => bytes20[]) public b1;
    mapping(uint => bytes20[]) public b2;
    function modifiesArray(uint256 length, bytes20[] memory array) public pure returns (bool) {
        for(uint256 i = length-1 ; i >0 ; i--) {
            array[i] = bytes20(0);
        }
    }
}
