pragma solidity ^0.8.0;
contract S2 {
  uint public s2;
  function g(uint y) public returns (uint) { return s1 /= y + 1; }
}

contract S3 {
  uint public s3;
  function g(uint y) public returns (uint) { return s1 << y >> 1; }
}

contract S4 {
  uint public s4;
  function g(uint y) public returns (uint) { return s1 >> 31 - y; }
}

contract MyContract {
  S1 public s1;
  S2 public s2;
  S3 public s3;
  S4 public s4;
}

contract Regressions_059 {
  event log(uint8 indexed _level, uint _param);

  function main() public {
    MyContract mc;

    uint _val = 1;
















    uint[30] memory _arr;

    for (uint i = 0; i < 30; i++) {
      _arr[i] = uint(mc.g(i - 10));
      mc.log(3);
    }
  }

  modifier log(uint8 _level) {
    log(_level, 0);
    _;
  }
}
