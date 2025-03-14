pragma solidity ^0.8.0;
contract C {
    mapping(uint => bytes10) a;
    uint _ = 16;
    function modifiesArray(bytes10[] memory array) public pure returns (bool) {
        return array.length <= 10;
    }
}
