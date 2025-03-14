pragma solidity ^0.8.0;
contract mapmap2
{
    function g() public
    {
        mapping(uint8 => mapping (uint8 => uint) memory map) memory f;
        f.map[0][0] = 1;
    }
}
