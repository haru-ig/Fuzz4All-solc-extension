pragma solidity ^0.8.0;
interface I
{

    function add(uint) external pure returns (uint);
    function sub(uint) external pure returns (uint);

    function add(string memory) external pure returns (uint);
    function add(uint,uint) external pure returns (uint);

    function sub(uint) external pure returns (uint);
    function sub(string memory) external pure returns (uint);
    function sub(uint,uint) external pure returns (uint);
}
