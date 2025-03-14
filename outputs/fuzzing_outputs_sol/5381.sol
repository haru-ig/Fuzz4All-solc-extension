pragma solidity ^0.8.0;
contract fallbackmap
{
    mapping(uint => mapping(uint => bool)) private _map;

    fallback private _default_fallback;
    constructor () {

        _default_fallback.value(msg.value)();
    }
    function getMap() public view
    {
        return _map[1][8];
    }
    function setMap() public {
        _map[101][101] = true;
    }
}
