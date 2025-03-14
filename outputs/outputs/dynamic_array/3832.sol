pragma solidity ^0.8.0;
contract C {
    bytes20[3] public b;
    constructor () public {
        b[2] = bytes20(0);
        b[2] = bytes20(0);
        b[2] = bytes20(0);
    }
    function modifiesArray(bytes20[3] memory array) public pure returns (bool) {
        uint256 size = array.length;
        for(uint256 i = 0 ; i < size ; i++) {
            array[i] = bytes20(0);
        }
        return true;
    }
}
