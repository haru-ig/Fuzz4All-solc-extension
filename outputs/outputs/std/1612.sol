pragma solidity ^0.8.0;
contract TestApp {
    uint256[] public array;
    function setArray(uint256[] memory _array) public {
        array = _array;
    }
}
