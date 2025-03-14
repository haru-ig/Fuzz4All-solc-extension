pragma solidity ^0.8.0;
contract C {
    struct A {
        uint a;
    }
    address payable A;
    mapping(uint=>uint) f;
    function f() public {
        A.transfer(10**18, A);
        f[3] = 1*10**18;
        f[4] = 2*10**18;
        f.default(A);
        f[3] += A;
        f[4] += 2*A;
    }
}
