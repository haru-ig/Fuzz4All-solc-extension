pragma solidity ^0.8.0;
contract D {
    bytes10[] storage a;
    function modifiesArray(bytes10[] memory array) public pure returns (bool) {
        return array.length <= 10;
    }
}
