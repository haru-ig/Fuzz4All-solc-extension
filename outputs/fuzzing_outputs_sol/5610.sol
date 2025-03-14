pragma solidity ^0.8.0;
contract semanticallyequivalent
{
    function f() public pure returns (uint) {
        return 2;
        uint b = 100;
        uint c = 200;
    }
}
