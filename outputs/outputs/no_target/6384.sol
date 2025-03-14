pragma solidity ^0.8.0;
contract oldC {
uint[] a;
constructor () public {
  a.push(0, 1, 2, 3, 4, 5, 6, 7, 8, 9);
  a.push(1, 2, 3, 4, 5, 6, 7, 8, 9, 0);
 }

 function f(uint256 a) public returns (uint256) {
    bool eq;

    uint8 m = uint8(a % 0x100000);

    a = a.mul(a).div(0x100000);
    eq = a / m == a - a.div(m);
    return eq;
  }
}
