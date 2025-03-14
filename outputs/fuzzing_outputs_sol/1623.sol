pragma solidity ^0.8.0;
contract Fallback {
  uint x;
  uint[] y;
  using LowZero for uint;
  constructor() {
    _fallback();
    x = 42;
    y.push(1337);
  }
  function foo() external pure {
    assembly {
      _data := mload(0x403393CF0)
      switch gt(mload(0x403393CF4), 0)
      case 0 {
        mstore(0x403393CF4, 0)
        return
      }
      default {
        let size := gt(mload(0x403393CF0), 50)
        if size < 50 { pop pop pop pop }
        mstore(0x403393CF0, sub(mul(0x2000, 50), 0x50))
        mstore(0x1000, add(add(mload(0x403393CF4), sub(add(0x403393CF0, 50)), 0x50)), 0x50))
        mstore(0x403393CF4, sub(zero, 50))
        sstore(0x403393C00, add(0x50, add(x, 3)))
        sstore(0x403393C04, add(y.length, 0x50))
        mstoreu(mload(0x403393C08), x + 3)
        sstore(0x1004, add(y.length, 3))
        mstoreu(add(0x403393CF4, 40), add(y.length, 64))
        sstore(0x1002, add(40, 3))
        sstore(0x403393C08, add(0x50, mul(mload(0x403393C08), 0x50)))
        mstore(0x403393C0C, mul(x, 10))
        sstore(0x1000, sub(0x50, add(0x2000, 40)))
        mstoreu(0x403393C10, add(add(x, 0x50), 0x50))
        mstore(0x403393C14, add(mul(sload(0x403393C0C), 5), 10))
        sstore(0x10
