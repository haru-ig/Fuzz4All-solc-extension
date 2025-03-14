pragma solidity ^0.8.0;
contract P25 {
  uint a;
  uint b;
  function update(uint c) public {
    a = a + c;
    b = 2 * a + 1 - x;
  }
}
contract P29 {
  uint c;
  constructor(uint _c) {
    c = _c;
    b = 2 * c;
  }
}
contract P30 {
  uint c;
  constructor(
    uint _c1, uint _c2
  ) {
    c = _c1;
    b = 2 * c;
  }
}
contract P {
    P28 a;
    modifier X123451(uint32 myUint2) {
        if (b + myUint2 < 1234567890) {
          assembly {
            mstore(add(0x50, 0), c)
          }
        }
        _;
    }
    modifier X8765(string memory s) {
        if (b + "123" + 123 > 87654321) {
          assembly {
            mstore(add(0x50, 0), c)
          }
        }
        _;
    }
    function fn(uint160 _z)
    public
    X123451(
      _z / 32
    )
    X8765(
      "20394"
    )
    {
      x = 56789;
      a.update(x);
      uint256 sum = uint256(1) + uint256(2);
      a.update(uint160(a.myUint));
      int8 aMinusOne = int8(0);
      a.update(int8(1 - aMinusOne));
      a.update(uint256(int128(3 - 32)));
      uint128 bMinus2 = uint128(0) - uint128(2 * 256);
      a.update(bMinus2);
    }
  }
