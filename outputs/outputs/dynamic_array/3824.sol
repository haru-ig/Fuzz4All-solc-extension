pragma solidity ^0.8.0;

contract C {
    bytes20 public b;
    mapping (bytes20 => bytes20) public mappings;
    function modifiesBytesArrays(bytes20 array1, bytes20[] memory array2) public pure returns (bool) {
        mappings[array1] = array1;
        for (uint256 i = 0 ; i < array2.length ; i++) {
            mappings[array2[i]] = array2[i];
        }
        return true;
    }
}
