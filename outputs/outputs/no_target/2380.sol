pragma solidity ^0.8.0;
contract mutationv56701
{
    uint256 x;
    modifier m1() { x += 2; _; }
    function f_1() public view { x += 1; }
    function f_2() public m1 virtual { x += 2; }
    function f() public { x += 1; }
}
