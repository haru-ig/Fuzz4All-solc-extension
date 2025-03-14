pragma solidity ^0.8.0;
contract Arithmetic
{
    uint8 Y;
    uint128 x;
    function Multiply(uint8 X1, uint8 Y1)
    {
        uint128 X2 = X1 * Y1;
        Y = X2 % 10;
        x = X1 * Y1;
    }
}
