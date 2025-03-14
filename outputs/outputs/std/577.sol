pragma solidity ^0.8.0;
contract HelloWorld {
  function hey() public returns(string memory) {
    return "Hello";
  }
  uint8 constant X = 16;
  function whatIsX() public returns(uint8) {
    return X;
  }
  uint256 constant TWO = 2;
  function whatIsTwo() public returns(uint256) {
    return TWO;
  }
  constructor() {}
  modifier modifiesConstructor(address _owner) {
  require(_owner==msg.sender); _;
  }
  modifier neverModify(uint256 _i) {
    assembly {
      _i := 256+_i{keep:false}
    }
  }
  uint constant MINUS_ONE = -1;
  function sayHello(uint256 i) public modifiesConstructor(msg.sender) neverModify(i) returns(string memory) {
    return string(abi.encode(i));
  }
}
