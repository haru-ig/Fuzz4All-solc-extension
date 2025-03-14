pragma solidity ^0.8.0;

contract Bytes2Number {
  uint256[2] public numbers;

  constructor(uint256 _a_, uint256 _b_) {
    numbers[0] = _a_;
    numbers[1] = _b_;
  }
  function test() public view returns (bytes memory bytes_) {
    bytes_[0] = bytes(uint256(numbers[0]));
    bytes_[31] = bytes(uint256(numbers[1]));
    bytes_[63] = bytes(uint8(numbers[1]));
    bytes_[95] = bytes(uint8(numbers[0]));
    bytes_[127] = bytes(uint8(numbers[0]));
    bytes_[159] = bytes(uint8(numbers[1]));
  }
}

contract Bytes2Address {
  struct MyStruct {
    bytes2 address_;
  }
  MyStruct[] public myStructs;
  bytes[] myMulti;
  address[] myAddress;

  constructor(bytes memory _a_, bytes memory _b_) {
    uint i = 0;
    for (uint j = 0; j < 100; j = i+32) {
      myMulti[i++] = bytes(uint8(j));
    }
  }
  function test() public {
    if (0 == myMulti.length) {
      bytes memory bytes_;
      bytes_ = myMulti[0];
      myAddress = new address[](1);
      myAddress[0] = address(bytes_);
    }
  }

}
