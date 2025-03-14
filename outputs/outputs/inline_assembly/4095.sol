pragma solidity ^0.8.0;
contract Modifiers32x64 {
    uint constant x = 1e12;
    function test(uint y, uint x) public {
        assembly {
            mstore(returndatasize, mul(x, 32))
        }
    }
    function test2(uint) public {
        test(2, x);
    }
contract Modifiers64x32 {
  function test(uint x, uint y) public {

  test (x, 2e12);
  }
}
