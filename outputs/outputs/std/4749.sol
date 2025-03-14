pragma solidity ^0.8.0;
contract F {
  bytes2 _g;
  function f() public {
    _g[0]=1;
    _g[0]=2;
    _g[0]=3;
  }
}
contract Memory {
  uint[8] private memory a;
  function f() public {
    assembly {
      mstore(a, sub(1, 27))
      mstore(0x42, 11)
      mstore(0x43, 20)
    }
  }
}
contract Rounding {
  uint8[20] private num;
  function f(uint8 x, uint8 y) public {
    uint8[] memory y_array=new uint8[](y);
    x*=y;
    for (uint8 i=1; i<y; i+=2) {
      y_array[i]=x/y;
      x%=y;
    }
    num[0]=x;
    num[y-1]=1;
    for (uint8 k=1; k<y; k+=2) {
      num[k]=y_array[k];
    }
  }
}
contract Sha3 {
  bytes32 private _g;
  constructor() {
    uint8[0] memory x;
    _g="abc";
    _g=sha3(x);
  }
}
contract Sha30 {
  bytes32 private _g;
  uint8[0] private _x;
  constructor() {
    uint8[1] memory x = new uint8[](2);
    x[0]=2;
    x[1]=255;
    _g=sha3(_x, x);
  }
}
