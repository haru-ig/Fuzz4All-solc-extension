pragma solidity ^0.8.0;
import "../nine.sol";

contract m9
{
    function __() external { }
    function f() public returns (uint)
    {
        nine nine_;
        return nine_.f();
    }
}
