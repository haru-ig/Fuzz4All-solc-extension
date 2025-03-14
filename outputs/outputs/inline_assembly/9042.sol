pragma solidity ^0.8.0;
contract MutatedSolidity12
{
    struct State
    {
        uint256 _a;
        uint256 _b;
    }
    struct X
    {
        uint internal _x;
        State _state1;
        State _state2;
    }
    uint256 public _x;
    uint256 public _y;
    uint256 private _z;
    uint256 private _w;
    constructor() public
    {
        State memory state1 = State(1, 0);
        X memory x = X(_x, state1, state1);
        _z = x._state1.x + x._x;
        _w = x._state2.x / (x._state1.x + x._x);
        x._state1.x = 2;
        x._x = 2;
        x._state2.x = 0;
    }
    function get() public view returns(X memory)
    {
        State memory state = State(1, 0);
        X memory x = X(x._x, state, state);
        return x;
    }
}
