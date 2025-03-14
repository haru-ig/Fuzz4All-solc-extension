pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays_fd0d05d00f9183d1a7981d3ab4344607cb575b4b
{
    int16 i16;
    int16[1] public x;
    uint256[2] public y;
    address[] public a;
    address[] public _a;
    constructor () public {
        _a[0] = owner();
        a.push(owner());
        a.push(new address[](1));
        a.push(address(0));
        a.push(address(this));
        x[0] = 2;
        x[1] = 0;
        y[0] = 0;
        y[1] = 0;
        i16 = int16(-122);
        i16 = i16 + 122;
        i16 = i16 * -122;
        i16 = i16 + -122;
    }
    function f() public {
        x[0] = x[1];
        y[0]=2;
        a[0] = address(0);
        _a.push(address(0));
        x[0] = x[0] + 1;
        _a.push(address(0));
        x[0] = x[0] / 0 + 1;
        y[1] = y[1] + 1;
        x[0] = 10 / 0 + 1;
    }
}
