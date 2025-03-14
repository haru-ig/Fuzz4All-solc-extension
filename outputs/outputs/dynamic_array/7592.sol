pragma solidity ^0.8.0;
contract Test20 {
  uint A;
  uint public B;
  uint public C;
  uint public D;
  uint[] memory b;
  event D1(uint d);
  constructor (uint initialData) public {
      D = initialData;
      A = 1e100;
      B = 2 * A;
      C = 1 + A + 2*B + D;
  }
  function f() public view returns (uint) {
    return A;
  }
  function a() public {
    emit D1(C);
  }
}
