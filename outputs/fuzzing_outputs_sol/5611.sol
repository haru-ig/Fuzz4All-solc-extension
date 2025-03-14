pragma solidity ^0.8.0;
contract semanticallyequivalent
{
    function f(uint x, uint y, uint z) public pure returns (uint a) {
        a = y;
    }
}
