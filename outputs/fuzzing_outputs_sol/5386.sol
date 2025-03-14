pragma solidity ^0.8.0;
contract goodfallbackmap
{
    struct Map
    {
        uint256 k0;
        uint256 k1;
    }
    mapping(uint256 => Map) private _map;

    function f(uint256 key0, uint256 key1) private
    {
        _map[key0].k0 = key0;
        _map[key0].k1 = key1;
    }
    function g() public
    {
        f(128, 128);
    }
}
contract Caller
{




    function set(uint8 k0, uint8 k1) public payable
    {

    }

    function get(uint256 k0, uint256 k1) public
    {
        uint8 key0;
        uint8 key1;
        key0 = 128;
        key1 = 128;
        f(key0, key1);
    }
}
