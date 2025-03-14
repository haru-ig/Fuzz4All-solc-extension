pragma solidity ^0.8.0;
contract C
{
    function addMulDiv(uint a, uint b, uint c) external view returns(uint){
        return a.add(c).mul(Lib.pow(b, 3)) / 2;
    }
}
