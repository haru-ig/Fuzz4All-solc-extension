pragma solidity ^0.8.0;
contract Test94FE {
    struct A {
        uint256 array;
    }
    function f(uint x) public pure {
        A storage a;
        a.array += x;
    }
    function g(uint x) public pure {
        A[] memory a;
        a.push(A({ a: 1 }));
        a.push(A({ a: 1 }));
        a[1].a *= 4;
        a[1].array *= 5;
    }
    function h() public pure {
        bytes memory a;
        bytes memory x;
    }
    function i() public pure {
        uint8 a;
        uint8 x;
    }
    function j() public pure {
    }
}
