pragma solidity ^0.8.0;
contract unmutatedD {
  function f(uint8 a) public returns (uint256 b) {
    b = a/2;
    b = b*2;
    b++
    uint256 d = b+1;
    b = b+b*2;
    return b+b*2;
  }
}
