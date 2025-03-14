pragma solidity ^0.8.0;
contract eight {
   uint256 x;
   constructor(uint256 _x) public { x= _x;}
   function a() public pure returns(uint)
   {
       return x;
   }
}

contract eight2 {
    constructor(uint _x) public { i= _x;}
   function a() public pure returns(uint)
   {
       return x;
   }
}

contract eight3 {
    constructor(uint _x) public { i= _x;}
   function a() public pure returns(uint)
   {
       return x+i;
   }
}

contract eight4 {
   uint x;
   constructor(uint _x) public { x= _x;}
   function a() public pure returns(uint)
   {
    return x;
   }
}

contract eight5 {
   uint x;
   constructor(uint _x) public { x= _x;}
   function a() public pure returns(uint)
   {
    return x+uint(x);
   }
}

contract b5 {
    function f() public pure returns(bool) {return true;}
}

contract b6 {
    function g() public pure returns(bool) {return true;}
}

contract b7 {
    constructor() public {}

    function f() public pure returns(bool) {return true;}
}

contract b8 {
    constructor(uint _x) public {}

    function f() public pure returns(bool) {return true;}
}

contract i1 {
    constructor(uint _x) public {}
    function f() public pure returns(uint) {return 1;}
}

contract i2 {
    constructor(uint _x) public {}
    function f() public pure returns(uint8) {return 1;}
}

contract i3 {
    constructor(uint _x) public {}
    function f() public pure returns(uint16) {return 1;}
}

contract i4 {
    constructor(uint _x) public {}
    function f() public pure returns(uint24) {return 1;}
}

contract i5 {
    constructor(uint _x) public {}
    function f() public pure returns(uint32) {return 1;}
}

contract i6 {
    constructor(uint _x) public {}
    function f() public pure returns(uint48) {return 1;}
}

contract i7 {
    constructor(uint _x) public {}
    function f() public pure returns(uint64) {return 1;}
}

contract i8 {
    constructor(uint _x) public {}
    function f() public pure returns(uint) {return 1;}
}

contract i9 {
    constructor(uint _x) public {}
    function f() public pure returns(uint12) {return 1;}
}

contract i10 {
    constructor(uint _x) public {}
