pragma solidity ^0.8.0;
contract C {
    bytes20[] data;
    bytes20[] public data2 = new bytes20[](2);
    function modifiesArray2(bytes20[] memory array) public pure returns (bool) {
            return array.length <= 20;
        }
}
