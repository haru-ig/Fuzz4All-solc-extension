pragma solidity ^0.8.0;
contract C { address public x; function f0(uint a, uint b, B f) public pure { assert ((a ^ b < 0) == 1); f(); } }
contract D { address public x; uint a; function f(bytes calldata b) public view pure { assert (d.a() < 0x00000000000000000000000000000000000000004); } }
contract F { address public x; function f() public pure { assert (0xffffffff < 0xffffffff+1); } }
contract C2 is B, C, F {
    event E();

    function f(uint a) public pure { assert (a == 0x7fff8000000000000000000000000000000000000004); }
    function f() external { C(x).f0(0, 0, C(x)); }
}


function f(uint a, uint b, B f) public pure { assert ((a ^ b < 0) == 1); f(); }
