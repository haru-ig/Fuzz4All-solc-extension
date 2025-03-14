pragma solidity ^0.8.0;
contract Test4 {
    struct Foo {
        mapping(address => bool) zzz_test;
    }
    function s() public pure returns (uint) {
        Foo memory f;
        f.zzz_test[0];
    }
}
