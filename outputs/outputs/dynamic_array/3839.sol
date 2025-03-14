pragma solidity ^0.8.0;
contract C {
    mapping(uint => bytes[]) public b1;
    mapping(uint => bytes[]) public b2;
    constructor () public {
        b1[1234].push();
        b2[7].push();
    }
    function modifiesArray(bytes[] memory array) public pure returns (bool) {
        uint256 size = array.length;
        for(uint256 i = 0 ; i < size ; i++) {
            array[i] = bytes(0);
        }
    }
}
