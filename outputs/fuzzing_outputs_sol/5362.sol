pragma solidity ^0.8.0;
contract mapmap
{
    mapping(uint8 => mapping(uint8 => bool)) map;
    function f(uint8 key0, uint8 key1) public
    {
        map[key0][key1] = true;
    }
    function g() public
    {
        f(0, 0);
    }
}
