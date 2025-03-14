pragma solidity ^0.8.0;
contract goodfallbackmap
{
    mapping(uint8 => mapping(uint8 => bool)) private _map;

    function f(uint8 key0, uint8 key1) private pure
    {
        _map[key0][key1] = true;
    }

    function g() public pure
    {
        f(128, 128);
    }

    function g2() public
    {
        require(f(128, 128), "fallback fail");
        _map[1][1] = true;
    }
}
