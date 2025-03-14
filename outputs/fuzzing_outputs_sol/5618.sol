pragma solidity ^0.8.0;
contract mutant
{
    uint x;
    function f() public {x  = 0;}
    function f() public {x  = 2;}
    function f() public {x  = 2}
}
