pragma solidity ^0.8.0;

contract SimpleCoder {

    function encode(uint a, uint b)
        pure public
        returns (string memory)
    {
        return uint2str(a / uint(b));
    }
    function uint2str(uint x)
        pure public
        returns (string memory)
    {
        if (x == 0) {
            return "0";
        }
        uint base = 10;
        string memory y = "";
        while (x!= 0) {
            x /= base;
            y = uint2str(x) + string(1, 45) + y;
        }
        return y;
    }
}
