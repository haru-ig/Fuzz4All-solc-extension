pragma solidity ^0.8.0;
contract Mutate2 is Mutate{
uint[100] public newArray;
function MutateInt2(uint a, uint b) public pure returns(uint)
  {
    newArray[a-1] = a-a+b;
    uint val = MutateInt(a,b);
    return val;
  }
}
