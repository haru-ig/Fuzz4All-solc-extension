pragma solidity ^0.8.0;
contract mapmap2
{
    mapping(uint8 => mapping(uint8 => uint)) map;
    function f(uint8 key0, uint8 key1) public
    {
        map[key0][key1] += 1;
    }
    function g() public
    {
        f(0, 0);
    }
}
