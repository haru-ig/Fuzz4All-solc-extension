pragma solidity ^0.8.0;
contract Test72 {
    mapping (int => int) public b;
    function f(int b) public {
        b[0] = b;
    }
}
