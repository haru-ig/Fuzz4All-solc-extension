pragma solidity ^0.8.0;
contract C {
    bytes10 a;
    function modifiesArray(bytes10[] memory array) public pure returns (bool) {
        return array.length <= 10;
    }
}
