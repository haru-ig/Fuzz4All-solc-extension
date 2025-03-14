pragma solidity ^0.8.0;
library Lib {
  event LogString(uint x);
  function logString(uint) external { assembly {
    let x := mload(add(0, 0x40))
    mstore(0x40, x)
    let s := add(add(0x40, 8), 0x20)
    mstore(s, 0x60)
    let n := mload(add(0, 0x40))
    mstore(add(add(0x40, 0x20), 0x20), 0x80)
    let i := mload(add(0, 0x0))
    mstore(add(add(0x40, 0x20), 0x20), i)
    let p := add(s, 0x0)
    let q := add(p, n)
    let u := add(i, 0x30)
    mstore(add(q, 64), 29)
    let x := staticcall(sub(10, 1), 0x70, q, 0x0, 84, p, 0x48, u, 0x20, n, 0xffffffff)
    mstore(p, 14)


    let a := 0x7a786974d6959977
    let p := add(x, add(0x14, 0x0))
    let b := 0x55af1355a81329c7
    returndatacopy(add(0x14, 0x0), add(p, 0x20), 32)
    return(returndatasize)
  } }
}


pragma solidity ^0.8.0;
contract C {
  Lib.LogString(0);
  contract Inner {
    event Log(uint z);
  }
  struct Storage {
    Inner.Log storage lo;
  }
  mapping (uint => bool) public seen;
  mapping (uint => Storage) public data;
  function init(uint x, uint w) public {
    data[w].lo.Log(x);
    data[w].lo.Log(x+1);
  }
  function trigger(uint x, uint w) public {
    Storage storage s = data[w];
    s.lo.Log(
