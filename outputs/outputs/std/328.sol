pragma solidity ^0.8.0;
contract Test {
    function getElementFromArray(uint[] memory array) public view returns (uint element) {
        return array[2];
    }
}
