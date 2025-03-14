pragma solidity ^0.8.0;
contract C {
    bytes20 b;
    function modifiesArray(bytes20[] memory array) public pure returns (bool) {
        if (array.length > 20) {
            return array[0] < 42;
        }
        return (array.length == 20);
    }
}
