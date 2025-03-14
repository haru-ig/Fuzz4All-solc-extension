pragma solidity ^0.8.0;
contract Test70 {
    mapping (int => int) public a;
    function f(int b) public {
        a[34] = b;
    }
}
