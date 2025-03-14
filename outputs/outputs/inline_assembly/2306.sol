pragma solidity ^0.8.0;
interface SolidityFunctionInterface
{
    function getData() public returns (uint);
    function updateData(uint _newData) public returns (uint);
}
