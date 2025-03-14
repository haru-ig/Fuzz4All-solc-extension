pragma solidity ^0.8.0;
interface IDemo
{
    uint256 data1;
    uint256 data2;
    mapping(uint256 => uint256) private data;
    uint8 dataByte;
    uint dataUint;
    bytes dataBytes;
    IDemo myObject;
    uint8 myByte;
    uint256 myUint;
    bytes32 myBytes;
    bytes32 data();
    function myFunction() public view returns (uint256, uint256);
    function myFunctionWithInput() public view returns (uint, uint);
}
pragma solidity ^0.8.0;
interface IDemo
{
    function myFunction();
    function myFunctionWithInput() public view returns (uint, uint);
    function myFunctionWithOutput() public returns (uint256, uint256);
}
