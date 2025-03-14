pragma solidity ^0.8.0;
contract mapmap
{
    mapping(uint8 => mapping(uint8 => bool)) map1;
    mapping(uint8 => mapping(uint8 => bool)) map2;
    function f(uint8 key0, uint8 key1) public
    {
        map1[key0].push(key1);
    }
    function g() public
    {
        for (uint8 key0=0;key0 < 3;key0++)
        {
            uint8 key1=0;
            for (;key1 < 5;key1++)
            {
                map2[key1][key0]=true;
            }
        }
    }
}
