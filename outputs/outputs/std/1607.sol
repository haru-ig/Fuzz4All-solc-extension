pragma solidity ^0.8.0;
contract SyntacticallyEquivApp {
    uint256[] array_original;
    uint256[] array_semantically;
    function setArray(uint256[] memory _array) public{
        array_original = _array;
    }
}
