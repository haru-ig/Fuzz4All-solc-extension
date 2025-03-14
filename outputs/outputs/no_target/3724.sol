pragma solidity ^0.8.0;
address A = 0xFEEDFACE;
contract B {
    function g() public returns (uint) {
        return uint(0) << A;
    }
}
contract C {
    function g() public returns (uint) {
        return uint(A) << A;
    }
}
contract D {
    function g() public returns (uint) {
        return uint24(A) << 1;
    }
}
