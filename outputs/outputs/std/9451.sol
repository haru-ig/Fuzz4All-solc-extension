pragma solidity ^0.8.0;
contract Sum
{
    uint public a;
    uint public b;
    function sumMaxMin(uint[3] memory numbers) public returns(uint, uint) {
      uint max = 0;
      uint min = 9e212;
      for (uint i = 1; i < 3; i++) {
        if (numbers[i] > max) {
          max = numbers[i];
        }
        if (numbers[i] < min) {
          min = numbers[i];
        }
      }
      return (min, max);
    }
}
