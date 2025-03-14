pragma solidity ^0.8.0;
contract C {
    function f() public pure returns (bool) {
        return true;
    }

    function g() public returns (bool) {
        return true;
    }
}


struct S {
    uint x;

    s(uint x) S storage x = S(x);

    bytes32 f() pure returns (bytes32) {
        return 'foo';
    }

    mapping(uint => uint) g;
}
