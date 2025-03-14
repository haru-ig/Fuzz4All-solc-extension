pragma solidity ^0.8.0;
contract C {
    bytes20[] a;
    bytes32[3] memory b;
    uint[10] memory c;
    function modifiesArray(bytes20[] memory array) public pure returns (bool) {
        return array.length <= 20;
    }
}
