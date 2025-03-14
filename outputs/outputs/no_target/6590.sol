pragma solidity ^0.8.0;
contract myContractW2 is modifierW
{
    function g(uint x) public returns (uint) {
        uint y = x / 256;
        uint y2 = (x * 88) + f(x);
        uint y3 = y2 / 256;
        return y3 * 256 + f(x);
    }
}
