pragma solidity ^0.8.0;
contract goodfallbackmap
{
    mapping(uint256 => uint128) private _map;
    function f(uint256 key0, uint256 key1) private
    {
        _map[key0] = _map[key0] + key1;
    }
    function g() public
    {
        f(128, 128);
    }
}
