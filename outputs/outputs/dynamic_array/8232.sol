pragma solidity ^0.8.0;
contract Revert {
    uint public x;
    constructor() public {x=2;}
    function f() public {require(x==2);}
    function g() public {x=0;}
    function h() public {g()}
}
