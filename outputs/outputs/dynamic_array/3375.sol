pragma solidity ^0.8.0;
contract B {
    struct A {
        uint x;
        mapping(uint => uint) y;
    }
    struct Calldata { uint x; }
    function testArrAdd() public {
        A memory m = A(uint(4), mapping(uint => uint(5)));
    }
}
