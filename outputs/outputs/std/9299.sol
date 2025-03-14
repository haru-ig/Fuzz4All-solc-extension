pragma solidity ^0.8.0;
contract BasicMath
{

    function add(uint128 x, uint128 y) internal pure
    {
        return x + y;
    }

    function sub(uint128 x, uint128 y) internal pure
    {
        return x - y;
    }

    function mul(uint128 x, uint128 y) internal pure
    {
        return x * y;
    }

    function div(uint128 x, uint128 y) internal pure
    {
        return x / y;
    }

    function mod(uint128 a, uint128 b) internal pure
    { }
}
contract SolidityTest
{









    constructor() public
    {
        BasicMath.add(0, 0);
    }
}
