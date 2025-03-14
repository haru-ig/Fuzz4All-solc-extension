pragma solidity ^0.8.0;
contract Array {
  uint[] public array1;
  address[] public array2;
  function func(uint e1, uint e2, address e3) public {
      array1[0] = e1;
      array1[1] = e2;
      array2.push(e3)
  }
}
