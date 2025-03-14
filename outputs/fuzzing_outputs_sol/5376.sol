pragma solidity ^0.8.0;
contract badmapmap
{
    mapping(uint8 => mapping(uint8 => bool)) private _map;
    function f(uint8 key0, uint8 key1) private
    {
        _map[key0][key1] = false;
    }
}
