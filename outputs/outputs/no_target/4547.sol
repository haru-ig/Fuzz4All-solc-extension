pragma solidity ^0.8.0;
address A {
    function f() public pure returns(uint256, uint256);
}
contract B {
    function myFunction() public pure returns(uint256, uint256) {
        uint256 a;
        uint256, uint256 b;
        (uint256 a, uint256 b) = A.f();
        a = b;
        a = 16#0;

        return a, 256;
    }
}
contract C {
    constructor() {}
    function myFunction() public pure {
        (uint256 a, uint256 b) = A.f();
        return a, b;
    }
}
