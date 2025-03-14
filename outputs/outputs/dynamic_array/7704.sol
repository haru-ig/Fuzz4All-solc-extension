pragma solidity ^0.8.0;
contract Test18_semanticsSame_7 {
            function f1() public pure returns (dynamic memory m) {m = new[](2);}
            (DynamicArrayCleanup(dynamic memory m,2)[2] memory r) = f1();
            function f2() public pure returns (DynamicArrayCleanup(dynamic memory m,2)[2] memory r) {r = m;}
            (uint[2] memory r) = f2();
        }
