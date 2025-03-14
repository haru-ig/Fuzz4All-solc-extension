pragma solidity ^0.8.0;
contract A { function A() public pure { require(0, "FAIL"); } }
contract B { function B() public pure { require(1, "FAIL"); } }
contract C { function C() public pure { require(true, "FAIL"); } }
contract D { function D() public pure {require(0<=1,"FAIL");} }
contract AA { fallback() public pure { A(); } }
contract BB { fallback() public pure { B(); } }
contract CC { fallback() public pure { C(); } }
contract DD { fallback() public pure { D(); } }
contract AA44 { fallback() public pure { AA(); AA(); AA(); } }
contract BB44 { fallback() public pure { BB(); BB(); BB(); } }
contract CC44 { fallback() public pure { CC(); CC(); CC(); } }
contract DD44 { fallback() public pure { DD(); DD(); DD(); } }
contract AAA { fallback() public pure { AA(); } }
contract BBB { fallback() public pure { BB(); } }
contract CCC { fallback() public pure { CC(); } }
contract DDD { fallback() public pure { DD(); } }
contract G4 { fallback() public pure { G6(0); } }
contract G0 { fallback() public pure { G6(0); AA44(); BBB(); CCC(); G4(); DDD(); } }
