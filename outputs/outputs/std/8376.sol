pragma solidity ^0.8.0;
interface IArrayMutationsBis4 {
    function addNewElement() public;
    function addElementToEmptyArray() public;
    function mutateInteger(uint256 integer) public;
    function mutateAllIntegers() public;
}
