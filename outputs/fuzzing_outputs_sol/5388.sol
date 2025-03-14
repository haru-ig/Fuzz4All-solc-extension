pragma solidity ^0.8.0;
contract goodfallbackmap
{
    mapping(uint8 => mapping(uint8 => bool)) private _map;
    function set(uint8 key0, uint8 key1) public returns(uint)
    {
        _map[key0][key1] = true;
    }
    function get(uint8 key0, uint8 key1) external returns(bool)
    {
        return _map[key0][key1];
    }
    function get(uint8 key0) public view returns(bool)
    {
        return _map[key0][128];
    }
}
