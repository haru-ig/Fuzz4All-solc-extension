pragma solidity ^0.8.0;
contract Test {
    function getElementFromArray(uint256[] memory array) public view returns (uint256 element) {
        return array[2];
    }
}
