pragma solidity ^0.8.0;
contract A {
    struct S { string _n; }
    S x = S("test");

    function use () external {
        x.n = "Hello World";
        address _ref;
    }
}
