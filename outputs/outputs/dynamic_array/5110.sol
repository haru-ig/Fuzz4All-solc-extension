pragma solidity ^0.8.0;
contract Test95G {
    struct A {
        uint256[] x;
        mapping(address => uint256[]) addresses;
    }
    function f() public pure {
        uint256[] memory a;
    }
    function g() public pure {
        A memory a;
    }
}
