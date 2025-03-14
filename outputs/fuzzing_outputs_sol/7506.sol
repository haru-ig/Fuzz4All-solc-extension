pragma solidity ^0.8.0;
contract FallbackModifierXWithStructs {
    uint a = 42;
    struct S { uint x; }
    struct B { uint y; }
    struct Y { uint z; }
    struct X { uint x; uint y; uint z; uint w; uint x1; uint y1; uint z1; uint w1; }
    uint public x;
    uint public x1;
    uint public y;
    uint public y1;
    uint public z;
    uint public z1;
    uint public w;
    uint public w1;
    modifier ifValidX() {
        require(x > a, "x must be > a");
        _;
    }
    function setX(uint x_) public {
        x1 = a;
        (x, x1, y,y1,z,z1,w,w1) = getStructComponents();
        x = x_;
        x1 = x1;
        (x, y, z, w) = getStructComponents();
    }
    function getStructComponents() public view returns (uint, uint, uint, uint) {
        return (x, x1, y, y1, z, z1, w, w1);
    }
    struct Y { B b;  }
    function accept(address, uint) public ifValidX {
      Y memory x_ = Y(Y({ b: B({y:42})}));
      x_.b.y;
    }
  }




/*
contract Simple
{
    function setX(uint x) public {
        x = 42;
    }
    function accept(address, uint data) public {
        data;
    }
}
contract SimpleNoDefaultX {
    uint public x;
    modifier ifValidX() {
        require(x > 10, "x must be > 10");
        _;
    }
    function setX(uint x_) public {
        require(x_ < 5, "x must be < 5");
        x = x_;
    }
    function accept(address, uint data) public {
        x;
        data;
    }
}
contract DefaultX {
    uint public x;
    modifier ifValidX() {
        require(x > 10, "x must be > 10");
        _;
    }
    function setX() public {
        x = 42;
    }
    function accept(address, uint data) public {
        data;
    }
}
contract DefaultXWithStructs {
    struct S { uint x; }
    struct B { uint y; }
    struct Y { uint z; }
    struct X { uint x; uint y; uint z; uint w; uint x1; uint y1; uint z1; uint w1; }
    uint public x;
    struct X memory x1;
    uint public y;
    uint
