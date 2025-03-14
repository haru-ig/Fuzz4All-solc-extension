pragma solidity ^0.8.0;

contract Test
{
    uint64 public value = 0x10000000;
    uint counter;

    fallback() external payable {
      counter += value / 100;
      counter += uint(value * 10);
    }
}






pragma solidity ^0.8.0;

contract Solidity
{



}
