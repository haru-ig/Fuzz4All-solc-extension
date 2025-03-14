pragma solidity ^0.8.0;
address a;
struct B {
    uint b;
}
contract Test24 {
    mapping (address => B) private b;
    function f() public {
        B memory m = b[a];
    }
}
