pragma solidity ^0.8.0;
contract Mutated {




    function f1() public beforeF beforeG {}
    function f2() public beforeF beforeG {}
    function f3() public beforeF beforeG {}
    function g1() public beforeG beforeF beforeG {}
}
contract MutatedMutating is Subroutine, Mutated {
    function g2() public mutates beforeG beforeF {}
}
