pragma solidity ^0.8.0;
contract C {
    bytes32[] memory b;
    function modifiesArray(bytes32[] memory array) public pure returns (bool) {
        return array.length <= 20;
    }
}
