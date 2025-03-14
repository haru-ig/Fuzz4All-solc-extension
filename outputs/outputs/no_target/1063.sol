pragma solidity ^0.8.0;
contract SemanticMutation6
{
    function a() public pure returns (uint256)
    {
        return 5;
    }
    function b() public pure returns (uint256)
    {
        if (value <= 400) {
            return 6;
        }
        return 4;
    }
    function c() public pure returns (uint256)
    {
        if (a() == 5) {
            return 6;
        }
        if (a() == 4) {
            return 8;
        }
        return 4;
    }
    function d() public pure returns (bool)
    {
        if (b() == 6) {
            return true;
        }
        if (b() == 8) {
            return true;
        }
        if (b() == 4) {
            return true;
        }
        return false;
    }
    function e() public pure returns (uint256)
    {
        if (c() == 6) {
            return 4;
        }
        if (c() == 8) {
            return 4;
        }
        if (c() < 4) {
            return 12;
        }
        return 4;
    }
    function f() public pure returns (uint256)
    {
        if (b() == 8) {
            return 3;
        }
        if (b() < 6) {
            return 3;
        }
        return 4;
    }
}
