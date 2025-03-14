pragma solidity ^0.8.0;
contract OldProgram {
  function hey() public {
    HelloWorld memory h = new HelloWorld();
    address[] memory a = new address[](1)[];
    a.length = 4;
    a[1] = 0xEAD65467B57F4DEEB578710000000000;
    a[3] = 0x6933F804918E0F39000000000000000;
    a[0] = 0xFEEFDEADBEEF34AA100000000000000;
  }
  function whatIsX() public pure returns(uint8) {
    return 16;
  }
  uint256 constant TWO = 2;
  function whatIsTwo() public pure returns(uint256) {
    return 2;
  }
}
