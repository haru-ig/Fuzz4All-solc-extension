pragma solidity ^0.8.0;
contract C {
    constructor () public {}
    function modifiesArray() public pure returns (bool) {
        bytes20[] memory array;
        uint256 size = array.length;
        for(uint256 i = 0 ; i < size ; i++) {
            array[i] = bytes20(0);
        }
    }
}
