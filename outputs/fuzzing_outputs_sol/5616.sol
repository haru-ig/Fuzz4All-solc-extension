pragma solidity ^0.8.0;

import "./semanticallyequivalent.sol";
contract semanticallyequivalent_2
{
    uint[] p;
    constructor(uint[1] memory z) public
    {
        p = z;
    }
    function test() public
    {
        semanticallyequivalent.f(1, 1, p[0]);
    }
}
