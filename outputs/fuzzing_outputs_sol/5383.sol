pragma solidity ^0.8.0;
contract badfallbackmap
{
    mapping(uint8 => mapping(uint8 => bool)) private _map;
    function f(uint8 key0, uint8 key1) private
    {
        if (_map[key0][key1]) {return;} else {
            _map[key0][key1] = true;
        };
    }
    function g() public
    {
        f(128, 128);
    }
}
