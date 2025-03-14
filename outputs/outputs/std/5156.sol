pragma solidity ^0.8.0;
contract Mutated4 {
    function f(uint [] memory a) public pure {
        f(a[0]);
        f(a[1]);
        f(a[2]);
        f(a[3]);
        f(a[4]);
    }
}
