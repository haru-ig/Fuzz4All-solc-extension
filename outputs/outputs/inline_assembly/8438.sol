pragma solidity ^0.8.0;
contract SolveModul
{
    event Test2();
    uint[] test= new uint[](15,100);
    uint[] public testee2= new uint[](15,64);
    assembly {
        mstore(test,120)
    }
    function test222() public pure returns(uint) {
        return 1000;
    }
}
