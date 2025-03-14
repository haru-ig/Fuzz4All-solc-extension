pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample52 {
    struct A{
        uint f1;
        uint f2;
    }
    uint x = 0;
    uint y = 0;
    uint z = 0;
    uint n = 0;
    A a;
    B b;
    A storage sA;
    B storage sB;
    function setX(uint _x) public {
        sA.f1 = _x;
        x = _x;
    }
    function getX() public pure returns(uint) {
        return x;
    }
    function setYX(uint _x, uint _y) public {
        sA.f1 = _x;
        sB.f2 = _y;
        x = _x;
        y = _y;
    }
    function getYX(uint _x, uint _y) public view returns(uint,uint) {
        return (x,_x+y);
    }
    event E(uint x, uint y, uint z);
    function setY(uint _y) public {
        sB.f1 = _y;
        y = _y;
        sB.f1 = _y;
        x = x+1;
        emit E( x, y, z );
    }
    function getY() public pure returns(uint) {
        return y;
    }
    function setZ(uint _z) public {
        z = _z;
    }
    function getZ() public view returns(uint) {
        return z;
