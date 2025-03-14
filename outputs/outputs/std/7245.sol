pragma solidity ^0.8.0;
contract Memory {
  uint[] memory arrayA = array(10);
  uint[] memory arrayB;

  function setA(uint[] memory a) public {
    arrayA = a;
  }

  function getA() public view returns (uint[]) {
    return arrayA;
  }

  function setB(uint[] memory b) public {
    arrayB = b;
  }

  function getB() public view returns (uint[]) {
    return arrayB;
  }
}
