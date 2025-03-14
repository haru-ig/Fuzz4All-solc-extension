pragma solidity ^0.8.0;
contract ExampleStruct9 {
    uint a;
    uint b;
    bytes memory c;
    mapping(uint => uint) d;
    constructor(uint a_, uint b_) { a = a_; b = b_; }
    function set(uint x, uint y) public { c[4] = 0x9e; a = x; b = y; }
    function get() public { c[4] = 0x9e; c[3] = 1; c[42] = 17; }
    function set2(uint x) public { set(a,x); d[37] = a; d[42] = a + b; }
    function get2() public { d[97] = 26; d[3] = a + b; d[99] = a; }
}
contract ExampleStruct10 {
    uint a;
    uint b;
    uint c;
    uint x;
    uint[] mem1;
    uint[50] mem2;
    mapping(uint => uint) mem3;
    mapping(uint => uint) public m;
    function set(uint x, uint y, uint z, uint w) public { x = x + y + a ; y = w + z + b; c = x + y + c; x = 1; y = 2; z = 3; w = 4; }
    function setv(uint x) public { set(x,3,5,6); }
    function get() public { x = 1; b = 2; c = 4; a = 5; x = x + 1; b = b + 2; c = c + 4; a = a + 5; x = d; x = x + 1;}
    function get1(uint i, uint j, uint k, uint l) public { c[l] = m[a]; b = j; c[k] = b; c[l] = k);}
}
contract ExampleStruct11 {
    uint[] mem;
    uint b;
    uint c;
    constructor(uint z) {b = z; b = 3; c = b + 1; b = b - 2;}
    function set(uint x) public { x = x / 2; c = a; a = b; b = 3; c = 1; }
}
contract ExampleFunc12 {
    uint x;
    uint a;
    uint b;
    mapping(uint => uint) public m;
    constructor(uint x_, uint a_) { x = x_; a = a_; }
    function set(uint x_) public { m[4] = m[5] + b; b = x_;  x = x_; }
}
contract ExampleArray13 {
    uint[] public mem;
    constructor () {  mem.push(0);  mem.push(1);  }
}
contract ExampleStruct14 {
    address mem;
    function set(address x) public {mem = x;}
}
contract ExampleFunc15 {
    uint a;
    uint b;
    uint x;
    uint x
