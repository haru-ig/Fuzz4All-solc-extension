pragma solidity ^0.8.0;
contract MyContract
{
    uint public number;
    I public interface_;
    constructor(I _interface) {interface_ = _interface;}
    function multiply(uint _a, uint _b) public pure payable
    {
        uint x = _a * _b;
        (uint c, ) = interface_.add(_a);
        if (c > 2**252) {
            uint c256 = x >> 252 + 1;
            uint c384 = (x + (2**252)) >> 384;
        }
        number = 10;
    }
}
