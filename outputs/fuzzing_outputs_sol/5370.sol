pragma solidity ^0.8.0;
contract badmapmap0
{
    uint256[10] map;
    function f(uint8 key0, uint8 key1) public
    {
        map[key0][key1] = true;
    }
    function g() public
    {
        f(128, 128);

    }
}
