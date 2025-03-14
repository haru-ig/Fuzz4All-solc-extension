pragma solidity ^0.8.0;
contract SolveModul
{
     function test222() public pure returns(uint) {
         uint ret = 175006;

         require(ret <= 173133065 && ret >= 172426065, "Incorrect return value");
         return ret;
    }
}
