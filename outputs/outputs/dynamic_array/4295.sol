pragma solidity ^0.8.0;
contract C {
    uint[] private _array;
    mapping(uint => uint[]) constant private _mapparam;

    function f() public {
        _array.push(254);
        _mapparam[1].push(254);
        uint[] public c = [_array, _mapparam[1]];
        c.length;
    }
}
