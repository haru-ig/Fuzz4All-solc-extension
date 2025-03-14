pragma solidity ^0.8.0;
interface I3bEvents {
    event e(uint[1]);
    event ee(uint[9][13]);
}
contract C {
    uint public i;
    function f(uint y) public { i = y; e(i); }
    function g(uint[1] memory y) public view { i = y[0]; e(i); e(i + y.length); }
    function h(uint[9][13] memory y) public view { uint[2] storage z = uint[2](0); i = y[z].length; f(i); e(i + 1); e(y[z].length + i + 1); }
    function k(uint[9][13] memory y) public view { i = y.length; h(y); f(i); }
    function l(uint[9][13] memory y) public view { uint[2] storage z = uint[2](0); i = y.length; h(y); uint x = i - 1; k(y); x = 3 - 1; uint l = i - (i - 1);
                                e(l); e(l + x); e(x); e(x + i); e(x - 1); e(x + l); e(l + i); }
    function set (uint[9][13] memory y) public view { i = y.length; h(y); i = i + 1; i = 2; }
    function m(uint[9][13] memory y) public view { i = i + 1; h(y); i = i - 1; set(y); }
    function n() public view { i = 1; h(uint[9][13](0)); }
    constructor() public {   }
}
