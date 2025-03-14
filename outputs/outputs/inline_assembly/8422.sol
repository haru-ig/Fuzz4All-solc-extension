pragma solidity ^0.8.0;
contract SolveAssembly
{
    function test2() public pure returns(uint) {
        uint a = 0x696969696969696969696969696969696969696969696969696969696969696969696969696969696969;
        assembly {
         a := 69,a := a + 1,a := a - 1,a := a * 2
        }
        return a;
    }
}
