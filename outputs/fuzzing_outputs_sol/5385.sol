pragma solidity ^0.8.0;
contract badelements
{
    uint8 internal constant key0 = 125;
    uint8 internal constant key1 = 51;
    function f(uint8 key0, uint8 key1) private pure
    {
        return;
    }
    function g() public pure
    {
        uint8 value0to128 = key0 & 128;
        uint8 value128to51 = key1 & 51;
        f(value0to128, value128to51);
    }
}
