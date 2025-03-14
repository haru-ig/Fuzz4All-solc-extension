pragma solidity ^0.8.0;


contract B {
    uint[5] public a;
    function f() public pure returns (uint[5]) {return a;}
}
