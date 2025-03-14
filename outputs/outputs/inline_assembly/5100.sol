pragma solidity ^0.8.0;
library L {
  uint[] private _arr;
  constructor() internal {
    _arr.push(0, 0, 1);
  }
}
contract C {
  L.uint256[] private _buf;
  constructor() internal {
    for (uint b = 0; b < 1000; ++b) {
      try
        _buf[L.uint256(b)] = 1;
      catch{}
    }
  }
}
