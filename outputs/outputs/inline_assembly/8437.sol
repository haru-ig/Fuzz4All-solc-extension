pragma solidity ^0.8.0;
contract SolveModul
{
    function test() public pure returns(uint) {
        uint j = test222();
        return j;
    }
    function test2(uint x) public pure returns(uint) {
        uint j = x;
        x = 11;
        return j * 2;
    }
}
