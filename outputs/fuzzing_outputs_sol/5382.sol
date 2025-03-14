pragma solidity ^0.8.0;
contract badfallbackmap
{
    function f(uint8 key0) public {
        f(key0, key0);
    }
}
