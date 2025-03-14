pragma solidity ^0.8.0;
contract MutationEquivalence84
{
    uint8 constant public x;

    constructor()
    constructor(uint _x)
    constructor(uint _x, uint _y)
    constructor(uint _x, uint _y, uint _z)
    constructor(uint _x, uint _y, uint _z, uint _w)
    constructor(uint _z, uint _w)
    constructor(uint _z, uint _w, uint _x)
    constructor(uint _z, uint _w, uint _x, uint _y)
    constructor(uint _x, uint _y, uint _z, uint _w, uint _z2, uint _z3)
    constructor(uint _z, uint _w, uint _x, uint _y, uint _z2, uint _z3, uint _x2, uint _x3)
    constructor(uint _x, uint _y, uint _z, uint _w, uint _x2, uint _y2, uint _y3, uint _y4)
    constructor(uint _x, uint _y, uint _z, uint _w, uint _x2, uint _x3, uint _x4, uint _x5)
    constructor(uint _x, uint _y, uint _z, uint _w, uint _x2, uint _x3, uint _x4, uint _x5, uint _y2, uint _y3)
    constructor(uint _x, uint _y, uint _z, uint _w, uint _x2, uint _x3, uint _x4, uint _x5, uint _y2, uint _y3, uint _z2, uint _z3)
    constructor(uint _x, uint _y, uint _z, uint _w, uint _x2, uint _x3, uint _x4, uint _x5, uint _y2, uint _y3, uint _z2, uint _z3, uint _x22, uint _xz2, uint _z)
    constructor(uint _x, uint _y, uint _z, uint _w, uint _x2, uint _x3, uint _x4, uint _x5, uint _y2, uint _y3, uint _z2, uint _z3, uint _x22, uint _xz2, uint _z, uint _x23)
    constructor(uint _x, uint _y, uint _z, uint _w, uint _x2, uint _x3, uint _x4, uint _x5, uint _y2, uint _y3, uint _z2, uint _z3, uint _x22, uint _xz2, uint _z, uint _x23, uint _y23, uint _y33)
    {
        x = _x;
    }
}
