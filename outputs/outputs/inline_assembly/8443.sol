pragma solidity ^0.8.0;
contract SolveModul
{
    function test222() public pure returns(uint) {
        return 1000000* uint1(test222())*uint1(test222());
    }
}
