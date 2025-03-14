pragma solidity ^0.8.0;
contract badmapping2
{
    mapping(uint8 => uint);
    function f(uint8 key0, uint8 key1) public pure
    {
        map[key0][key1] = 0;
    }
    function g() public pure
    {
        f(0, 0);
    }
}
