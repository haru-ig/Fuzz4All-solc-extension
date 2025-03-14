pragma solidity ^0.8.0;
contract Test {
    event a(uint x, uint y);
    uint foo(uint x, uint y) public {
        a(x, y);
    }
}
