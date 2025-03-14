pragma solidity ^0.8.0;
contract SemanticallyEquivComp {
    struct ArrayEntry { uint256 value; bool valueSet; bool exists; bool isEmpty; }
    struct Array { ArrayEntry[] e; uint256 n; }
    Array memory array;

    struct ArrayEntry { uint256 value; bool valueSet; bool exists; bool isEmpty; }
    struct Array { ArrayEntry[] e; uint256 n; }
    Array memory array;

    function setArray(Array memory _array) public{
        array = _array;
    }
}
