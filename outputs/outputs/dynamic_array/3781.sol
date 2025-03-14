pragma solidity ^0.8.0;
contract C {
    bytes20 b;
    function modifiesArray(bytes20[] memory array) public pure returns (bool) {
        return array.length <= 20;
    }
}
