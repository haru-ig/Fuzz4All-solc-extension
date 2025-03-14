pragma solidity ^0.8.0;
contract S6 {
    bool private x;
    uint x_plus_1;
    function foo(uint y) public {
      x_plus_1 = y + 1;
      require(x && y > 0);
      uint x_plus_2 = x_plus_1 * 2;
      bytes calldata emptyBytes = new bytes(0);
      bytes memory zeroZeroZeroBytes;
      bytes zeroZeroZero100Bytes = bytes100;
      bytes100 zero;
      require(bytes100(y) == 100);
      require(x && y < 0);
      uint x_minus_1 = y - 1;
      require(x_minus_1 < 0);
      uint x_minus_100 = y - 100;
      require(x_minus_100 == 0 && x);
      require(x_plus_1 == x_plus_1 + 1);
      require(x_plus_2 == 3*x_plus_1);
      require(x_minus_1 == x_minus_1 + 1);
      require(x_minus_100 == 100);
      require(bytes() == emptyBytes);
      require(bytes(zeroZeroZeroBytes) == emptyBytes);
      require(emptyBytes == zeroZeroZeroBytes);
      require(zero == bytes(0));
    }
}
