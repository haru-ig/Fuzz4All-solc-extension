pragma solidity ^0.8.0;
contract A
{
    function f(uint8 _x) public {
        uint256 y = NewABIv4.f(_x);
        emit y(y);
    }
}
