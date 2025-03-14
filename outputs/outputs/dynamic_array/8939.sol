pragma solidity ^0.8.0;
struct ComplexArray
{
    uint[] inner;
}
contract Example
{
    mapping (uint => bool) indexed x;
    mapping (uint => bool) indexed y;
    uint[] pubx;
    uint yp;
    uint[] pubx2;
    uint yp2;
    uint[] pubx3;
    uint yp3;
    uint[2][] pubx4;
    uint[2][] yp4;
    uint[] pubx5;
    uint[1][1][] pubx6;
    uint[1][1][] yp6;
    uint m;
    uint z;
    int x_overflow;
    int x_overflow2;
    int x_overflow3;
    int x_overflow4;
    int x_overflow5;
    ComplexArray c;

    uint[2][] array_overflow1;
    uint[2][] array_overflow2;
    uint[3][] array_overflow3;
    uint[10][] array_overflow4;
    uint[11][] array_overflow5;
}
