pragma solidity ^0.8.0;


contract Array
{
    uint[] private _storage;
    uint[] private _anotherStorage;

    constructor ()
    {
        _storage = new uint[](5);
        _anotherStorage = new uint[](3);
    }

    function set() public { }

    function get() view public returns (uint)
    {
        return _storage[0];
    }

    function change() public {
        _storage[0] = 10;
        _anotherStorage.length();
    }

    function setAndReturn() public returns (uint)
    {
        _anotherStorage[0] = 10;
        _anotherStorage.length();
        return _storage[1];
    }

    function min() returns (uint)
    {
        return get();
    }

    function max() returns (uint)
    {
        return get();
    }
}
