pragma solidity ^0.8.0;
contract C {
    function a() public pure returns (address) { uint x; uint y; }
    function b() public pure returns (address) { uint x; uint y; }
}

function f(address addr) public pure {

    uint x; uint y;
    { uint x; uint y; }
    { uint x; uint y; }
    { uint x; uint y; uint x; uint y; }
    { uint x; uint y; uint x; uint y; uint x; uint y; }
    { uint x; uint y; uint x; uint y; uint x; uint y; uint x; uint y; }
    { uint x; uint y; uint x; uint y; uint x; uint y; uint x; uint y; uint x; uint y; }
    { uint x; uint y; uint x; uint y; uint x; uint y; uint x; uint y; }
    { uint x; uint y; uint x; uint y; uint x; uint y; uint x; uint y; }
    { uint x; uint y; uint x; uint y; uint x; uint y; uint x; uint y; uint x; uint y; }
    { uint x; uint y; uint x; uint y; uint x; uint y; uint x; uint y; uint x; uint y; }
    { uint x; uint y; uint x; uint y; uint x; uint y; uint x; uint y; uint x; uint y;}
    { uint x; uint y; uint x; uint y; uint x; uint y; uint x; uint y;}
    { uint x; uint y; uint x; uint y; uint x; uint y;}
    unchecked { uint x; uint y; }
    unchecked { uint x; uint y; }
    unchecked { uint x; uint y; x; uint y; uint x; uint y; uint x; uint y; }
    unchecked { uint x; uint y; x; uint y; uint x; uint y; uint x; uint y; uint x; uint y;}
    unchecked { uint x; uint y; x; uint y; uint x; uint y; uint x; uint y; uint x; uint y; }
    unchecked { uint x; uint y; x; uint y; uint x; uint y; uint x; uint y; uint x; uint y; uint x; uint y; uint x; uint y;}
    unchecked { uint x; uint y; x; uint y; uint x; uint y; uint x; uint y; uint x; uint y; uint x; uint y; }
    unchecked { uint x; uint y; x; uint y; uint x; uint y; uint x; uint y; uint x; uint y;}
    unchecked { uint x; uint y; x; uint y; uint x; uint y;}
    unchecked { uint x
